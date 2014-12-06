.include beta.uasm

. = 0

CMOVE(1, r6)
SHLC(r6, 16, r6)
CMOVE(0x3, r3)
CMOVE(0x0810, r0)
ST(r0, 0x10, r6)

main:
	CMOVE(0, r0) 
	CMOVE(0, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	CMOVE(0x40, r0) 
	CMOVE(0x000, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x80, r0) 
	CMOVE(0x000, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0xC0, r0) 
	CMOVE(0x000, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x100, r0) 
	CMOVE(0x000, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x100, r0) 
	CMOVE(0x40, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x100, r0) 
	CMOVE(0x80, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x100, r0) 
	CMOVE(0xC0, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	CMOVE(0x100, r0) 
	CMOVE(0x100, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0xC0, r0) 
	CMOVE(0x100, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x80, r0) 
	CMOVE(0x100, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x40, r0) 
	CMOVE(0x100, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	CMOVE(0x00, r0) 
	CMOVE(0x100, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x00, r0) 
	CMOVE(0xC0, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x00, r0) 
	CMOVE(0x80, r1)
	CALL(go_to_point) 
	CALL(set_timer)

	CMOVE(0x00, r0) 
	CMOVE(0x40, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	JMP(main)
	
set_timer:
	CMOVE(0x9c4, r8)
	ST(r8, 0x0024, r6)
wait_timer:
	LD(r6, 0x002C, r8) | read overflow flag
	BEQ(r8, wait_timer) | if zero wait
	CMOVE(0x0, r8)
	ST(r8, 0x002C, r6) | clear by writing a zero
	RTN()

go_to_point:
	
	CMOVE(0x01, r5)
	
	ADDC(r3, 0b01000, r4) || CS , latch, and RGB data
	CMOVE(0b0011, r3) || Configuration bits, DACA
	SHLC(r3, 12, r3)
	ADD(r3, r0, r3) || TX data to SPI, DACA

	CMOVE(0b1011, r2) || Configuration bits, DACB
	SHLC(r2, 12, r2) 
	ADD(r2, r1, r2) || TX data to SPI, DACB
	
	ST(r4, 0x8, r6)
	ST(r3, 0x18, r6) 
	ST(r5, 0x14, r6) 

spi_wait_x:
	LD(r6, 0x14, r5)
	BF(r5, spi_wait_x)
	
	ADDC(r4, 0b10000, r4)
	ST(r4, 0x8, r6) || Raise CS
	ADD(r31, r31, r31)
	SUBC(r4, 0b10000, r4) || Lower CS
	ST(r4, 0x8, r6)
	ADD(r31, r31, r31)
	ST(r2, 0x18, r6) || Send data
	ST(r5, 0x14, r6) || Start SPI
	
spi_wait_y:
	LD(r6, 0x14, r5)
	BF(r5, spi_wait_y)
	
	ADDC(r4, 0b10000, r4)
	ST(r4, 0x8, r6) || Raise CS
	ADDC(r31, r31, r31)
	SUBC(r4, 0b1000, r4) || Lower latch
	ST(r4, 0x8, r6)
	ADDC(r31, r31, r31)
	ADDC(r31, r31, r31)
	ADDC(r31, r31, r31)
	ADDC(r31, r31, r31)
	ADDC(r4, 0b1000, r4) || Raise latch
	ST(r4, 0x8, r6)
	ADDC(r31, r31, r31)
	ADDC(r31, r31, r31)
	ADDC(r31, r31, r31)
	ADDC(r31, r31, r31)

	RTN()
