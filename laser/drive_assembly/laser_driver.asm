.include beta.uasm

| REGISTER MAP
|	r0: x location
|	r1: y location
|	r2: current sprite ID
|	r3: rgb value for laser
|	r4: current offset into shared memory
|	r5: counter
|	r6: length of sprite
|	r7: scratch
|	r8: scratch
|	r9: current location in local sprite lookup table
|	r10 and above: scratch


. = 0 				| start at memory location 0

| Define parameters
SPRITE_OFFSET = 4
RGB_OFFSET = 4
X_OFFSET = 4
Y_OFFSET = 4
NEXT_SPRITE_OFFSET = 0x04

| External address offsets
TIMER_OVERFLOW = 0x2C
SPI_CONFIG = 0x10
SPI_STATUS = 0x14
DAC_CTL_OUT = 0x08
SPI_TX = 0x18
TIMER_SET = 0x24
SHARED_MEM_STATUS = 0x100

| Output port B (0008): {ADC_CSN, ADC_latch_n, R, G, B}

| Initialize sprite location in shared memory
CMOVE(2, r4)
SHLC(r4, 16, r4)

| Draws every sprite in a frame
draw_frame:
	| Load sprite IDs until you find a null-terminated one| draw every 20khz
	LD(r4, 0, r7) 		| load new sprite data into r7
	SHRC(r7, 27, r2) 	| get just the sprite ID
	BEQ(r2, frame_done) 	| if sprite ID is null then we're done, otherwise continue loading
	
	SUBC(r8, 1, r8) 	| store 0xFFFFFFFF in r8
	SHRC(r8, 8, r8) 	| 0x00FFFFFF in r8
	AND(r7, r8, r0) 	| mask off the sprite ID and RGB data
	SHRC(r0, 12, r0) 	| store only x data in r0
	SHRC(r8, 12, r8) 	| 0x00000FFF in r8
	AND(r7, r8, r1) 	| store only y data in r1
	SHRC(r7, 24, r3) 	| mask off x and y data
	ANDC(r3, 0x1F, r3) 	| rgb data in r3
	
	
	CALL(draw_sprite)
	
	| get next sprite location
	ADDC(r4, NEXT_SPRITE_OFFSET, r4)
	
	JMP(draw_frame)
	
frame_done:
	| frame finished: raise status flag, get the next one once "writing" flag is off
	ADD(r31, r31, r4) 	| clear frame offset


|| Start the timer, wait for it to finish, and clear the flag (currently not resetting every time--might have to, copy code from initialization at top)
set_timer:
	
	| Initialize and reset timer
	CMOVE(1, r7) 			| store timer address in r7
	SHLC(r7, 16, r7)
	CMOVE(0x9c4, r8) 		| load for 20kHz frequency
	ST(r8, TIMER_SET, r7)
	
wait_timer:
	LD(r7, TIMER_OVERFLOW, r8)
	BEQ(r8, wait_timer) 	| flag should be set when timer is done
	CMOVE(0x0, r8) 		| clear flag
	ST(r8, TIMER_OVERFLOW, r7)
	RTN()


|| Draw a single sprite
draw_sprite:
	| Get length of sprite from lookup table, store in r6
	SHL(r2, 3, r9) 		| translate sprite ID into lookup table location
	LD(r9, 0, r6) 		| first entry in lookup table is sprite length
	ADDC(r9, 0x4, r9)	| store first point for get_next_point routine
	MOVE(r3, r16)		| store RGB data in a temp register
	CMOVE(0x0, r3)		| turn off laser while travelling between sprites
| Starting from first memory location:
draw_loop:
	CALL(go_to_point)
	CALL(get_next_point)
	CALL(set_timer)
	
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
	SHL(r10, 12, r10) 	| Shift left to bit 15
	ADD(r10, r0, r10) 	| r10 now contains config data for write to DACA
	
	CMOVE(0b1011, r12) 	| Store config data (2) in r12
	SHL(r11, 12, r11) 	| Shift left to bit 15
	ADD(r11, r1, r11) 	| r11 now contains config data for write to DACB
	
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A (memory location 8)--lower CS
	ST(r10, SPI_TX, r8) 	| Write configuration and X data to SPI TX (0018)
	
	CMOVE(1, r13) 		| Store 1 (start flag) in r13
	ST(r13, SPI_STATUS, r8) | Start SPI

spi_wait_x: 			| Wait for SPI completion flag
	LD(r8, SPI_STATUS, r13)
	BF(r13, spi_wait_x)
	
	ORC(r7, 0b10000, r7)
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A (memory location 8)--raise CS
	ANDC(r7, 0b01111, r7)
	
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A--lower CS
	ST(r11, SPI_TX, r8) 	| Write configuration and Y data to SPI TX (0018)
	ST(r13, SPI_STATUS, r8) | Start SPI
	
spi_wait_y: 			| Wait for second SPI completion flag
	LD(r8, SPI_STATUS, r13)
	BF(r13, spi_wait_y)
	
	ORC(r7, 0b10000, r7)
	ST(r7, DAC_CTL_OUT, r8) | Write to output port A (memory location 8)--raise CS
	ANDC(r7, 0b10111, r7)
	ST(r7, DAC_CTL_OUT, r8) | Lower ADC latch
	ANDC(r7, 0b01111, r7)
	ST(r7, DAC_CTL_OUT, r8) | Raise ADC latch
	
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
. = 0x1000
LONG(16) 			| h100 x h100 square with 16 points (four per side)
LONG(0x0040 0000) 		| 16 bits of x offset, 16 bits of y offset (sign extended! so an add will do a subtract!)
LONG(0x0040 0000)
LONG(0x0040 0000)
LONG(0x0040 0000)

LONG(0x0000 0040)
LONG(0x0000 0040)
LONG(0x0000 0040)
LONG(0x0000 0040)

LONG(0xFFC0 0000)
LONG(0xFFC0 0000)
LONG(0xFFC0 0000)
LONG(0xFFC0 0000)

LONG(0x0000 FFC0)
LONG(0x0000 FFC0)
LONG(0x0000 FFC0)
LONG(0x0000 FFC0)


LONG(5)				| a five-pointed circle for the ball
LONG(0x000F 000B)
LONG(0xFFDB 0012)
LONG(0xFFC9 0000)
LONG(0xFFDB FFC9)
LONG(0x000F FFDB)
