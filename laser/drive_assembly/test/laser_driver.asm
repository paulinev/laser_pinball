.include beta.uasm

| REGISTER MAP
|	r0: x location
|	r1: y location
|	r2: current sprite id
|	r3: rgb value for laser
|	r4: current offset into shared memory
|	r5: counter
|	r6: length of sprite
|	r7: scratch
|	r8: scratch
|	r9: current location in local sprite lookup table
|	r10 and above: scratch
|	r16: reserved for copy of rgb data


| Define parameters
NEXT_SPRITE_OFFSET = 0x04
TIMER_VALUE = 0x9C4

| External address offsets
SPI_CONFIG = 0x10
SPI_STATUS = 0x14
DAC_CTL_OUT = 0x08
SPI_TX = 0x18
TIMER_SET = 0x24
TIMER_OVERFLOW = 0x2C
SHARED_MEM_WRITE_STATUS = 0x100
SHARED_MEM_READ_STATUS = 0x101

. = 0				| start at memory location 0
BR(init)

. = 4
INTERRUPT:
ADD(r31, r31, r31)
XRTN()

| Output port B (0008): {ADC_CSN, ADC_latch_n, R, G, B}

| Initialize sprite location in shared memory, initialize SPI
init:
	CMOVE(2, r4)
	SHLC(r4, 16, r4)
	
	CMOVE(1, r7)
	SHLC(r7, 16, r7)
	CMOVE(0x0810, r8)
	ST(r8, SPI_CONFIG, r7)

| Draws every sprite in a frame
check_data_available:
	LD(r4, SHARED_MEM_WRITE_STATUS, r7)	| shared memory status register. if one, the memory is being written.
	BNE(r7, check_data_available)
	CMOVE(1, r7)
	ST(r7, SHARED_MEM_READ_STATUS, r4)	| set the busy flag, because we're going to use the shared memory now.

draw_frame:
	| Load sprite IDs until you find a null-terminated one
	LD(r4, 0, r7) 		| load new sprite data into r7
	SHRC(r7, 27, r2) 	| get just the sprite ID
|| FOR TEST ONLY
	ST(r2, SHARED_MEM_READ_STATUS, r4)
	BEQ(r2, frame_done) 	| if sprite ID is null then we're done, otherwise continue loading
	
	SUBC(r20, 1, r8) 	| store 0xFFFFFFFF in r8
	SHRC(r8, 8, r8) 	| 0x00FFFFFF in r8
	AND(r7, r8, r0) 	| mask off the sprite ID and RGB data
	SHRC(r0, 12, r0) 	| store only x data in r0
	SHRC(r8, 12, r8) 	| 0x00000FFF in r8
	AND(r7, r8, r1) 	| store only y data in r1
	SHRC(r7, 24, r3) 	| mask off x and y data
	ANDC(r3, 0x07, r3) 	| rgb data in r3
	
	
	CALL(draw_sprite)
	
	| get next sprite location in shared memory
	ADDC(r4, NEXT_SPRITE_OFFSET, r4)
	
	BR(draw_frame)
	
frame_done:
	CMOVE(2, r4)
	SHLC(r4, 16, r4) 			| clear frame offset (shared memory)
	CMOVE(0, r7)
	ST(r7, SHARED_MEM_READ_STATUS, r4)	| clear busy flag
	
	BR(check_data_available)


|| Start the timer, wait for it to finish, and clear the flag (have to reload counter to reset)
set_timer:
	
	| Initialize and reset timer
	CMOVE(1, r7) 			| store timer address in r7
	SHLC(r7, 16, r7)
	CMOVE(TIMER_VALUE, r8) 		| load for 20kHz frequency
	ST(r8, TIMER_SET, r7)
	
wait_timer:
	LD(r7, TIMER_OVERFLOW, r8)
	|BNE(r8, wait_timer)	| TEST ONLY
	BEQ(r8, wait_timer) 	| flag should be set when timer is done
	CMOVE(0x0, r8) 		| clear flag
	ST(r8, TIMER_OVERFLOW, r7)
	RTN()


|| Draw a single sprite
draw_sprite:
	| Get length of sprite from lookup table, store in r6
	SHLC(r2, 8, r9) 	| translate sprite ID into lookup table location
	ADDC(r9, 0x100, r9)
	LD(r9, 0, r6) 		| first entry in lookup table is sprite length
	ADDC(r9, 0x4, r9)	| store first point for get_next_point routine
	MOVE(r3, r16)		| store RGB data in a temp register
	CMOVE(0x0, r3)		| turn off laser while travelling between sprites
| Starting from first memory location:
draw_loop:
	PUSH(LP)
	CALL(go_to_point)
	CALL(get_next_point)
	CALL(set_timer)
	POP(LP)
	
	SUBC(r6, 0x01, r6)
	MOVE(r16, r3)		| restore RGB data after first point
	BNE(r6, draw_loop)
	RTN()

|| Go to a single point by writing its location over SPI
go_to_point:
		
	CMOVE(0x02, r8) 	| put SPI address in r8
	SHLC(r8, 16, r8)
	
	ORC(r3, 0b01000, r7) 	| Store CS & RGB data in r7
	CMOVE(0b0011, r10) 	| Store config data (1) in r10
	SHLC(r10, 12, r10) 	| Shift left to bit 15
	ADD(r10, r0, r10) 	| r10 now contains config data for write to DACA
	
	CMOVE(0b1011, r11) 	| Store config data (2) in r11
	SHLC(r11, 12, r11) 	| Shift left to bit 15
	ADD(r11, r1, r11) 	| r11 now contains config data for write to DACB
	
	CMOVE(0x01, r8) 	| put SPI address in r8
	SHLC(r8, 16, r8)
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A (memory location 8)--lower CS
	ST(r10, SPI_TX, r8) 	| Write configuration and X data to SPI TX (0018)
	
	CMOVE(1, r13) 		| Store 1 (start flag) in r13
	ST(r13, SPI_STATUS, r8) | Start SPI

spi_wait_x: 			| Wait for SPI completion flag
	LD(r8, SPI_STATUS, r13)
	BF(r13, spi_wait_x)
	
	ORC(r7, 0b10000, r7)
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A (memory location 8)--raise CS
	ADD(r31, r31, r31)
	ANDC(r7, 0b01111, r7)
	
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A--lower CS
	ADD(r31, r31, r31)
	ST(r11, SPI_TX, r8) 	| Write configuration and Y data to SPI TX (0018)
	ST(r13, SPI_STATUS, r8) | Start SPI
	
spi_wait_y: 			| Wait for second SPI completion flag
	LD(r8, SPI_STATUS, r13)
	BF(r13, spi_wait_y)
	
	ORC(r7, 0b10000, r7)
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A (memory location 8)--raise CS
	ADD(r31, r31, r31)
	SUBC(r7, 0b01000, r7)
	ST(r7, DAC_CTL_OUT, r8) | Lower ADC latch
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADDC(r7, 0b01000, r7)
	ST(r7, DAC_CTL_OUT, r8) | Raise ADC latch	
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	RTN()

|| Get the location of the next point within a shape and store the updated location in registers 0 and 1 (x and y)	
get_next_point:
	
	LD(r9, 0, r8)	 	| load next point into r8
	MOVE(r8, r7)		| copy point
	ADDC(r9, 0x4, r9) 	| increment location in local table
	
	SRAC(r8, 16, r8) 	| Get only x data
	SHLC(r7, 16, r7) 	| Get only y data, preserving sign bit
	SRAC(r7, 16, r7)
	ADD(r8, r0, r0) 	| Add x offset
	ADD(r7, r1, r1) 	| Add y offset
	
	RTN()




| Sprite lookup tables: one table for each sprite, memory location corresponds to sprite ID
. = 0x200
LONG(17) 			| h100 x h100 square with 16 (+1) points (four per side)
LONG(0x04000000) 		| 16 bits of x offset, 16 bits of y offset (sign extended!)
LONG(0x04000000)
LONG(0x04000000)
LONG(0x04000000)

LONG(0x00000400)
LONG(0x00000400)
LONG(0x00000400)
LONG(0x00000400)

LONG(0xFC000000)
LONG(0xFC000000)
LONG(0xFC000000)
LONG(0xFC000000)

LONG(0x0000FC00)
LONG(0x0000FC00)
LONG(0x0000FC00)
LONG(0x0000FC00)

. = 0x300
LONG(6)				| a five-pointed circle for the ball
LONG(0x00F000B0)
LONG(0xFDB00120)
LONG(0xFC900000)
LONG(0xFDB0FC90)
LONG(0x00F0FDB0)
