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


|===========================================
| sin(x) lookup table
|
|===========================================
sintable:
LONG(0x0), LONG(0x1), LONG(0x2), LONG(0x3)
LONG(0x4), LONG(0x5), LONG(0x6), LONG(0x7)
LONG(0x8), LONG(0xa), LONG(0xb), LONG(0xc)
LONG(0xd), LONG(0xe), LONG(0xf), LONG(0x10)
LONG(0x11), LONG(0x12), LONG(0x13), LONG(0x14)
LONG(0x15), LONG(0x16), LONG(0x17), LONG(0x19)
LONG(0x1a), LONG(0x1b), LONG(0x1c), LONG(0x1d)
LONG(0x1e), LONG(0x1f), LONG(0x1f), LONG(0x20)
LONG(0x21), LONG(0x22), LONG(0x23), LONG(0x24)
LONG(0x25), LONG(0x26), LONG(0x27), LONG(0x28)
LONG(0x29), LONG(0x29), LONG(0x2a), LONG(0x2b)
LONG(0x2c), LONG(0x2d), LONG(0x2e), LONG(0x2e)
LONG(0x2f), LONG(0x30), LONG(0x31), LONG(0x31)
LONG(0x32), LONG(0x33), LONG(0x33), LONG(0x34)
LONG(0x35), LONG(0x35), LONG(0x36), LONG(0x36)
LONG(0x37), LONG(0x37), LONG(0x38), LONG(0x39)
LONG(0x39), LONG(0x3a), LONG(0x3a), LONG(0x3a)
LONG(0x3b), LONG(0x3b), LONG(0x3c), LONG(0x3c)
LONG(0x3c), LONG(0x3d), LONG(0x3d), LONG(0x3d)
LONG(0x3e), LONG(0x3e), LONG(0x3e), LONG(0x3e)
LONG(0x3f), LONG(0x3f), LONG(0x3f), LONG(0x3f)
LONG(0x3f), LONG(0x3f), LONG(0x3f), LONG(0x3f)
LONG(0x3f), LONG(0x3f), LONG(0x40), LONG(0x3f)
LONG(0x3f), LONG(0x3f), LONG(0x3f), LONG(0x3f)
LONG(0x3f), LONG(0x3f), LONG(0x3f), LONG(0x3f)
LONG(0x3f), LONG(0x3e), LONG(0x3e), LONG(0x3e)
LONG(0x3e), LONG(0x3d), LONG(0x3d), LONG(0x3d)
LONG(0x3c), LONG(0x3c), LONG(0x3c), LONG(0x3b)
LONG(0x3b), LONG(0x3a), LONG(0x3a), LONG(0x3a)
LONG(0x39), LONG(0x39), LONG(0x38), LONG(0x37)
LONG(0x37), LONG(0x36), LONG(0x36), LONG(0x35)
LONG(0x35), LONG(0x34), LONG(0x33), LONG(0x33)
LONG(0x32), LONG(0x31), LONG(0x31), LONG(0x30)
LONG(0x2f), LONG(0x2e), LONG(0x2e), LONG(0x2d)
LONG(0x2c), LONG(0x2b), LONG(0x2a), LONG(0x29)
LONG(0x29), LONG(0x28), LONG(0x27), LONG(0x26)
LONG(0x25), LONG(0x24), LONG(0x23), LONG(0x22)
LONG(0x21), LONG(0x20), LONG(0x1f), LONG(0x1f)
LONG(0x1e), LONG(0x1d), LONG(0x1c), LONG(0x1b)
LONG(0x1a), LONG(0x19), LONG(0x17), LONG(0x16)
LONG(0x15), LONG(0x14), LONG(0x13), LONG(0x12)
LONG(0x11), LONG(0x10), LONG(0xf), LONG(0xe)
LONG(0xd), LONG(0xc), LONG(0xb), LONG(0xa)
LONG(0x8), LONG(0x7), LONG(0x6), LONG(0x5)
LONG(0x4), LONG(0x3), LONG(0x2), LONG(0x1)
