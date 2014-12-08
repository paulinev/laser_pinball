.include beta.uasm

| REGISTER MAP
|	r0:   x location
|	r1:   y location
|	r2:   current sprite id
|	r3:   rgb value for laser
|	r4:   current offset into shared memory
|	r5:   counter
|	r6:   length of sprite
|	r7:   scratch
|	r8:   scratch
|	r9:   current location in local sprite lookup table
|	r10:  spi tx data, daca
|	r11:  spi tx data, dacb
| 	r12:  holds remaining number of points in current segment
|	r13:  scratch
|	r14:  scale factor - currently inactive
|	r15:  laser power flag for implementing travels
|	r16:  reserved for copy of rgb data
|	r17:  scratch
|	r18:  scratch
| 	r19:  holds scaling factor
|	r20:  travel time
|	r21:  stall time


| Define parameters
NEXT_SPRITE_OFFSET = 0x04
|TIMER_VALUE = 0x0D05		| 15kHz
TIMER_VALUE = 0x09C4		| 20kHz
|TIMER_VALUE = 0x01		| DEBUG

| External address offsets
SPI_CONFIG = 0x10
SPI_STATUS = 0x14
INPUT_PORT_A = 0x0
DAC_CTL_OUT = 0x08
SPI_TX = 0x18
TIMER_SET = 0x24
TIMER_OVERFLOW = 0x2C
SHARED_MEM_WRITE_STATUS = 0x100
SHARED_MEM_READ_STATUS = 0x101
SWITCHES = 0x00
STALL_TIME = 0x04		| DEBUG
TRAVEL_TIME = 0x16		| DEBUG
SCALING_FACTOR = 0x0      	| full scale (DEBUG)
|SCALING_FACTOR = 0x1      	| half scale (DEBUG)
LEFT_PADDLE_UPDATE = 0xF8	| location in shared memory of left and right paddle offset update values
RIGHT_PADDLE_UPDATE = 0xFC


. = 0				| start at memory location 0
BR(init)

. = 4
INTERRUPT:
ADD(r31, r31, r31)
XRTN()

| Output port B (0008): {ADC_CSN, ADC_latch_n, R, G, B}
| Input port A (0000): { [31:24] TRAVEL_TIME, [23:16] STALL_TIME, [15:8] UNUSED, [7:0] SCALING_FACTOR }

| Initialize sprite location in shared memory, initialize SPI, get scale factor
init:
	CMOVE(stack, SP)			| Initialize stack
	CMOVE(2, r4)				| initialize sprite location in shared memory
	SHLC(r4, 16, r4)
	
	CMOVE(1, r7)				| initialize output port location in shared memory
	SHLC(r7, 16, r7)
	CMOVE(0x0810, r8)			| configure SPI
	ST(r8, SPI_CONFIG, r7)

  	LD(r7, INPUT_PORT_A, r19)		| load input port A into r19
	CMOVE(0xFF, r8)
	SHLC(r8, 24, r8)
	AND(r8, r19, r20)			| load travel time value into r20
	SHRC(r8, 8, r8)
	AND(r8, r19, r21)			| load stall time into r21
	CMOVE(0xFF, r8)
	AND(r8, r19, r19)			| load scaling factor into r19
	
	

| Draws every sprite in a frame
check_data_available:
	LD(r4, SHARED_MEM_WRITE_STATUS, r7)	| shared memory status register. if one, the memory is being written.
	BNE(r7, check_data_available)
	CMOVE(1, r7)
	ST(r7, SHARED_MEM_READ_STATUS, r4)	| set the busy flag, because we're going to use the shared memory now.

draw_frame:
	| Load sprite IDs until you find a null-terminated one
	LD(r4, 0, r7) 				| load new sprite data into r7
	SHRC(r7, 27, r2) 			| get just the sprite ID
	BEQ(r2, frame_done) 			| if sprite ID is null then we're done, otherwise continue loading
	
	SUBC(r20, 1, r8) 			| store 0xFFFFFFFF in r8
	SHRC(r8, 8, r8) 			| 0x00FFFFFF in r8
	AND(r7, r8, r0) 			| mask off the sprite ID and RGB data
	SHRC(r0, 12, r0) 			| store only x data in r0
	SHRC(r8, 12, r8) 			| 0x00000FFF in r8
	AND(r7, r8, r1) 			| store only y data in r1
	SHRC(r7, 24, r16) 			| mask off x and y data
	ANDC(r16, 0x07, r16) 			| rgb data in r16
	CALL(draw_sprite)
	
	ADDC(r4, NEXT_SPRITE_OFFSET, r4)	| get next sprite location in shared memory
	
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
	CMOVE(1, r7) 				| store timer address in r7
	SHLC(r7, 16, r7)
	CMOVE(TIMER_VALUE, r8) 			| load for gavlo update frequency
	ST(r8, TIMER_SET, r7)
	
wait_timer:
	LD(r7, TIMER_OVERFLOW, r8)
						| update paddles while we're waiting for the timer
	SHLC(r7, 1, r13)			| address into shared memory
	LD(r13, LEFT_PADDLE_UPDATE, r17)	| update left paddle
	ST(r17, left_paddle_hops, r31)
	LD(r13, RIGHT_PADDLE_UPDATE, r17)	| update right paddle
	ST(r17, right_paddle_hops, r31)

|	BNE(r8, wait_timer)			| DEBUG	
	BEQ(r8, wait_timer) 			| flag should be set when timer is done
	CMOVE(0x0, r8) 				| clear flag
	ST(r8, TIMER_OVERFLOW, r7)
	RTN()


|| Draw a single sprite
draw_sprite:
	| Get length of sprite from lookup table, store in r6
	|.breakpoint
	SHLC(r2, 8, r8) 			| translate sprite ID into lookup table offset
	ADDC(r8, sprite_lookup, r9)
	LD(r9, 0, r6) 				| first entry in lookup table is sprite length
	ADDC(r9, 0x4, r9)			| store location of first point for get_next_point routine
  	LD(r9,0x4,r12)    			| load number of points in next segment into r12
  	SHLC(r12, SCALING_FACTOR, r12) 		| multiply the number of points by the scaling factor (revert to original size by rescaling before output to galvos) 
 |	SHL(r12, r19, r12)	
	CMOVE(0x1, r15)    			| set flag signaling laser turn on after next segment

| Starting from first memory location:
draw_loop:
	PUSH(LP)
	CALL(go_to_point)
	CALL(get_next_point)
	CALL(set_timer)
	POP(LP)
	
	BNE(r6, draw_loop)
	RTN()

|| Go to a single point by writing its location over SPI
go_to_point:
		
	CMOVE(0x02, r8) 			| put SPI address in r8
	SHLC(r8, 16, r8)

  	|SHR(r0,r19,r17)
  	|SHR(r1,r19,r18)
  	SHRC(r0,SCALING_FACTOR,r17)		| restore scaling
  	SHRC(r1,SCALING_FACTOR,r18)
	
	ORC(r3, 0b01000, r7) 			| Store CS & RGB data in r7
	CMOVE(0b0011, r10) 			| Store config data (1) in r10
	SHLC(r10, 12, r10) 			| Shift left to bit 15
	OR(r10, r17, r10) 			| r10 now contains config data for write to DACA
	
	CMOVE(0b01011, r11) 			| Store config data (2) in r11
	SHLC(r11, 12, r11) 			| Shift left to bit 15
	OR(r11, r18, r11) 			| r11 now contains config data for write to DACB
	|.breakpoint
	CMOVE(0x01, r8) 			| put SPI address in r8
	SHLC(r8, 16, r8)
	ST(r7, DAC_CTL_OUT, r8) 		| Write to output port A (memory location 8)--lower CS
	ST(r10, SPI_TX, r8) 			| Write configuration and X data to SPI TX (0018)
	
	CMOVE(1, r13) 				| Store 1 (start flag) in r13
	ST(r13, SPI_STATUS, r8) 		| Start SPI

spi_wait_x: 					| Wait for SPI completion flag
	LD(r8, SPI_STATUS, r13)
	BF(r13, spi_wait_x)
	
	ORC(r7, 0b10000, r7)
	ST(r7, DAC_CTL_OUT, r8) 		| Write to output port A (memory location 8)--raise CS
	ADD(r31, r31, r31)
	ANDC(r7, 0b01111, r7)
	
	ST(r7, DAC_CTL_OUT, r8) 		| Write to output port A--lower CS
	ADD(r31, r31, r31)
	ST(r11, SPI_TX, r8) 			| Write configuration and Y data to SPI TX (0018)
	ST(r13, SPI_STATUS, r8) 		| Start SPI
	
spi_wait_y: 					| Wait for second SPI completion flag
	LD(r8, SPI_STATUS, r13)
	BF(r13, spi_wait_y)
	
	ORC(r7, 0b10000, r7)
	ST(r7, DAC_CTL_OUT, r8) 		| Write to output port A (memory location 8)--raise CS
	ADD(r31, r31, r31)
	SUBC(r7, 0b01000, r7)
	ST(r7, DAC_CTL_OUT, r8) 		| Lower ADC latch
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADDC(r7, 0b01000, r7)
	ST(r7, DAC_CTL_OUT, r8) 		| Raise ADC latch	
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	ADD(r31, r31, r31)
	RTN()

|| Get the location of the next point within a shape and store the updated location in registers 0 and 1 (x and y)	
get_next_point:
	
	LD(r9, 0, r8)	 			| load next point into r8
	MOVE(r8, r7)		        	| copy point
  	SUBC(r12,0x1,r12)             		| decrement remaining points in the line

	SRAC(r8, 16, r8) 			| Get only x data
	SHLC(r7, 16, r7) 			| Get only y data, preserving sign bit
	SRAC(r7, 16, r7)
	ADD(r8, r0, r0) 			| Add x offset
	ADD(r7, r1, r1) 			| Add y offset


  	BNE(r12, get_next_end)   		| if we're done with this line segment,
    	.breakpoint
    		ADDC(r9, 0x8, r9)       	| increment location in local table
    		LD(r9,0x4,r12)          	| load point count for next segment
	  	SUBC(r6, 0x01, r6)      	| decrement points left for sprite
    		CMPEQC(r6, 1, r8)       	| test to see if we're about to do our last stall
    		
		BEQ(r8, check_laser_flag)       | if we are, turn the laser off
    		|.breakpoint
      			CMOVE(0x0,r3)     	| turn laser off
      			CMOVE(0x0,r15)    	| clear flag so the laser doesn't turn on during the next stall

check_laser_flag:
  	BEQ(r15, get_next_end)
  	|.breakpoint
    	MOVE(r16,r3)      			| reload RGB data to turn laser back on

get_next_end:
	RTN()


| Sprite lookup tables: one table for each sprite, memory location corresponds to sprite ID
sprite_lookup:
. = sprite_lookup+0x100
LONG(7) 				| a four-pointed circle for the ball: 1
LONG(0x00000000), LONG(TRAVEL_TIME)    	| stall for travel time
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser on
LONG(0x00100000), LONG(0x08)
LONG(0x00000010), LONG(0x08)
LONG(0xFFF00000), LONG(0x08)
LONG(0x0000FFF0), LONG(0x08)
LONG(0x00000000), LONG(STALL_TIME)

. = sprite_lookup+0x200
LONG(7)					| arbitrary circle (three times bigger): 2
LONG(0x00000000), LONG(TRAVEL_TIME)    	| stall for travel time
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser on
LONG(0x00300000), LONG(0x08)
LONG(0x00000030), LONG(0x08)
LONG(0xFFD00000), LONG(0x08)
LONG(0x0000FFD0), LONG(0x08)
LONG(0x00000000), LONG(STALL_TIME)

. = sprite_lookup+0x300
|. = 0x400				| the frame outline: 3
LONG(26)
LONG(0x00000000), LONG(TRAVEL_TIME)    	| stall for travel time
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser on
LONG(0x00500000), LONG(0x20)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x00000030), LONG(0x20)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFD80018), LONG(0x8)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x00280018), LONG(0x8)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x00000030), LONG(0x12)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFBA0012), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFEC0000), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFBAFFEE), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x0000FFD0), LONG(0x12)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x0028FFE8), LONG(0x8)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFD8FFE8), LONG(0x8)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x0000FFD0), LONG(0x20)
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser off

. = sprite_lookup+0x400
|. = 0x500				| left triangle bumper: 4
LONG(8)
LONG(0x00000000), LONG(TRAVEL_TIME)    	| stall for travel time
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser on
LONG(0x001E0018), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFE20000), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x0000FFE8), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser off

. = sprite_lookup+0x500
|.= 0x600				| right triangle bumper: 5
LONG(8)
LONG(0x00000000), LONG(TRAVEL_TIME)    	| stall for travel time
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser on
LONG(0x00000018), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFE20000), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x001EFFE8), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser off

. = sprite_lookup+0x600			| left bumpery thing: 6
LONG(6)
LONG(0x00000000), LONG(TRAVEL_TIME)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x00000022), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x00220008), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)

. = sprite_lookup+0x700
LONG(6)					| right bumpery thing: 7
LONG(0x00000000), LONG(TRAVEL_TIME)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0x00000022), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFDE0008), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)

. = sprite_lookup+0x800
LONG(4)					| left paddle: 8
LONG(0x00000000), LONG(TRAVEL_TIME)
LONG(0x00000000), LONG(STALL_TIME)
left_paddle_hops:
LONG(0x00180008), LONG(0x20)
LONG(0x00000000), LONG(STALL_TIME)

. = sprite_lookup+0x900
LONG(4)					| right paddle: 9
LONG(0x00000000), LONG(TRAVEL_TIME)
LONG(0x00000000), LONG(STALL_TIME)
right_paddle_hops:
LONG(0xFFE80008), LONG(0x20)
LONG(0x00000000), LONG(STALL_TIME)


stack:
STORAGE(128)

|.=0x10000				| DEBUG
|LONG(0x1)
|.=0x20000
|LONG(0x1B000000)
|LONG(0x151E01E0)
|LONG(0x0C600400)
|LONG(0x221E07E0)
|LONG(0x2A8207E0)
|.=0x40000
|LONG(0x1EEB)
