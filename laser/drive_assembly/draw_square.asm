.include beta.uasm

. = 0

CMOVE(1, r6)
SHLC(r6, 16, r6)
CMOVE(0x3, r3)

main:
	CMOVE(0, r0) 
	CMOVE(0, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	CMOVE(0x100, r0) 
	CMOVE(0x000, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	CMOVE(0x100, r0) 
	CMOVE(0x100, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	CMOVE(0x00, r0) 
	CMOVE(0x100, r1)
	CALL(go_to_point) 
	CALL(set_timer)
	
	JMP(main)
	
set_timer:
	CMOVE(0x9c4, r8)
	ST(r8, 0x0024, r6)
	CMOVE(0x01, r8)
	ST(r8, 0x0028, r6)
wait_timer:
	LD(r6, 0x0028, r8)
	BNE(r8, wait_timer)
	CMOVE(0x01, r8)
	ST(r8, 0x0028, r6)
	RTN()

go_to_point:
	
	CMOVE(0x01, r5)
	
	ADDC(r3, 0b01000, r4) 
	CMOVE(0b0011, r3) 
	SHLC(r3, 12, r3)
	ADD(r3, r0, r3) 

	CMOVE(0b1011, r2) 
	SHLC(r2, 12, r2) 
	ADD(r2, r1, r2) 
	
	CMOVE(1, r6)
	SHLC(r6, 16, r6)
	
	ST(r4, 0x8, r6)
	ST(r3, 0x18, r6) 
	ST(r5, 0x14, r6) 

spi_wait_x:
	LD(r6, 0x14, r5)
	BF(r5, spi_wait_x)
	
	ADDC(r4, 0b10000, r4)
	ST(r4, 0x8, r6) 
	SUBC(r4, 0b10000, r4)
	ST(r4, 0x8, r6)
	
	ST(r2, 0x18, r6)
	ST(r5, 0x14, r6)
	
spi_wait_y:
	LD(r6, 0x14, r5)
	BF(r5, spi_wait_y)
	
	ADDC(r4, 0b10000, r4)
	ST(r4, 0x8, r6)
	SUBC(r4, 0b1000, r4)
	ST(r4, 0x8, r6)
	ADDC(r4, 0b1000, r4)
	ST(r4, 0x8, r6)

	RTN()
