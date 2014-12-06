||| test file for fixed point math functions

.include beta.uasm
.options clock tty

||| for now, I'm going to represent all values in signed 10.6 format, that is,
||| with 9 bits to represent the integer portion on the value, 6
||| bits to represent the fractional portion, and one bit for sign

.=0x0
ADDC(R31, 0, R31) | it appears that 0h00000 is not a valid address, insert nop
CMOVE(0x0060, R1) | R1 now holds the equivalent of 1.5
CMOVE(0xFFA0, R2) | R2 now holds the equivalent of -1.5

loop:
| CALL(fixmul)      | calls fixed point multiply function
| MOVE(R0, R1)
| MOVE(R0, R2)
BR(loop)

||| test routines will go here

.=0x1000

||| does fixed point multiplication
||| 10.6 * 10.6 results in 20.12 fixed point values;
||| truncates the fractional byte
||| ignores top byte of integer portion

fixmul:
MUL(R1, R2, R0)           | multiply the contents of R1 and R2
SRAC(R0, 0x6, R0)          | shift right 6 bits, extends sign
RTN()

||| I'm actually not sure I need fixed division at all. We'll see.
||| Also, fixed addition and subtraction are just regular addition
||| and subtraction.
