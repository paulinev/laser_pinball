.include "beta.uasm"

/*; REGISTER MAP
;r0: x location
;r1: y location
;r2: current sprite ID (location of sprite table in memory if left-shifted by 3)
;r3: rgb value for laser
;r4: current offset into sprite lookup table
;r5: counter
;r6: length of sprite

;MAKE SURE TO PUSH/POP THESE REGISTERS WHEN NECESSARY
*/

. = 0 //; start at memory location 0

SPRITE_ID_IN = 0x2XXXX
RGB_IN = 0x2XXXX
X_LOC_IN = 0x2XXXX
Y_LOC_IN = 0x2XXXX
STATUS = 0x2XXX?
SPRITE_OFFSET = 4
RGB_OFFSET = 4
X_OFFSET = 4
Y_OFFSET = 4

/*; Output port A (0008): {ADC_CSN, ADC_latch_n, R, G, B}
;Draw a shape:
;Set timer to new_point interval
;When the timer overflows, update the outgoing data in SPI to the location of the first point
;Reset the timer to 0x9c4 (20kHz with a 50MHz clock)
;Draw the next point

;When all points in the shape are drawn, draw the next shape

;When all shapes in the frame are drawn, get the next frame
*/

draw_frame:
	//; Load sprite IDs until you find a null-terminated one; draw every 20khz
	LD(SPRITE_ID_IN, r2)
	BEQ(r2, done)
	LD(RGB_IN, r3)
	LD(X_LOC_IN, r0)
	LD(Y_LOC_IN, r1)
	
	CALL(draw_sprite)
	
	SPRITE_ID_IN = SPRITE_ID_IN + SPRITE_OFFSET
	RGB_IN = RGB_IN + RGB_OFFSET
	X_IN = X_LOC_IN + X_OFFSET
	Y_IN = Y_LOC_IN + Y_OFFSET
	
	JMP(draw_frame)
	
done:
	//; frame finished: raise status flag, get the next one once "writing" flag is off

draw_sprite:
	PUSH(r2)
	//; Get length of sprite from lookup table, store in r6
	SHL(r2, 3, r2)
	LD(r2, 4, r6)
	//; Starting from first memory location:
draw_loop:
	CALL(get_next_point)
	CALL(go_to_point)
	//; Set up counter to overflow at 20kHz
	CMOVE(0x9c4, r8)
	ST(r8, 0x0024)
	CMOVE(0x01, r8)
	ST(r8, 0x0028) //; start timer
wait_timer:
	LD(0x0028, r8) //; check overflow flag
	BNE(r8, wait_timer)
	//; clear overflow flag?
	CMOVE(0x01, r8)
	ST(r8, 0x0028)
	BNE(r3, draw_loop)
	POP(r2)
	RTN()

//; Go to a single point by writing its location over SPI
//; r4: output port A
go_to_point:
	PUSH(r2) //; don't corrupt current sprite ID
	PUSH(r3) //; don't corrupt RGB value
	PUSH(r4)
	PUSH(r5)
	PUSH(r6)
	
	CMOVE(0x01, r5) //; r5 contains 1 because I don't have constants
	
	ADDC(r3, 0b01000, r4) //; Store CS & RGB data in r4
	CMOVE(0b0011, r3) //; Store config data (1) in r3
	SHL(r3, 12, r3) //; Shift left to bit 15
	ADD(r3, r0, r3) //; r3 now contains config data for write to DACA
	
	CMOVE(0b1011, r2) //; Store config data (1) in r2
	SHL(r2, 12, r2) //; Shift left to bit 15
	ADD(r2, r1, r2) //; r2 now contains config data for write to DACB
	
	ST(r4, 0x8, r31) //; Write to output port A (memory location 8)--lower CS
	ST(r3, 0x18, r31) //; Write configuration and X data to SPI TX (0018)
	ST(r5, 0x14, r31) //; Start SPI

spi_wait_x: //; Wait for SPI completion flag
	LD(r31, 0x14, r5)
	BF(r5, spi_wait_x, r6)
	
	ADDC(r4, 0b1000, r4)
	ST(r4, 0x8, r31) //; Write to output port A (memory location 8)--raise CS
	SUBC(r4, 0b1000, r4)
	ST(r4, 0x8, r31) //; Write to output port A--lower CS
	
	ST(r2, 0x18, r31) //; Write configuration and Y data to SPI TX (0018)
	ST(r5, 0x14, r31) //; Start SPI
	
spi_wait_y: //; Wait for second SPI completion flag
	LD(r31, 0x14, r5)
	BF(r5, spi_wait_y, r6)
	
	ADDC(r4, 0b1000, r4)
	ST(r4, 0x8, r31) //; Write to output port A (memory location 8)--raise CS
	SUBC(r4, 0b0100, r4)
	ST(r4, 0x8, r31) //; Lower ADC latch
	ADDC(r4, 0b0100, r4)
	ST(r4, 0x8, r31) //; Raise ADC latch
	
	POP(r6)
	POP(r5)
	POP(r4)
	POP(r3) //; restore registers
	POP(r2)
	RTN()

//; Get the location of the next point within a shape and store the updated location in registers 0 and 1 (x and y)	
get_next_point:
	//; Find location of next point in memory, store in r7
	PUSH(r2)
	
	ADD(r4, r2, r7) //; Store address of current point in r7 (location plus offset)
	ADDC(r4, 4, r4) //; Increment offset
	LD(r7, 0, r8) //; Write point to register 8
	MOVE(r7, r8) //; Copy point
	SHR(r8, 16, r8) //; Get only x data
	ANDC(r7, 0x0011, r7) //; Get only y data
	ADD(r8, r0, r0) //; Add x offset
	ADD(r7, r1, r1) //; Add y offset
	
	POP(r2)
	RTN() //; Return to caller




//; Sprite lookup tables: one table for each sprite, memory location corresponds to sprite ID
. = 0x1000
sprite_table_1:
LONG({x offset 1, y offset 1})
//; MORE POINTS
LONG(0xFFFF) //; null terminate
