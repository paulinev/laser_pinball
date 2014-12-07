.include beta.uasm		| Define Beta instructions, etc.
.options clock tty

|========================================================
| REGISTER MAP
| r0: scratch
| r1: sprite ID (five bits)
| r2: position OR angle
| r3: x velocity
| r4: y velocity
| r5: color (RGB)
| r8: instance pointer
| r9: PC
| r15: external base address
| r16: offset external
| r17: argument to write_external
| r18: byte offset sprite ID
|========================================================

POSITION_OFFSET = 0x04
COLOR_OFFSET = 0x10
NEXT_SPRITE_OFFSET = 0x14

. = 0
BR(start)

. = 0x4
INT_V:
ADDC(R31, 0, R31)
XRTN()

. = 0x10
start:
CMOVE(stack, SP)
CMOVE(0x1,R0)
CMOVE(0x1001,R1)
CMOVE(0x7,R2)
CMOVE(0x9,R3)
CMOVE(0x3,R4)
ST(R0,instance_list+4)
ST(R1,instance_list+8)
ST(R2,instance_list+12)
ST(R3,instance_list+16)
ST(R4,instance_list+20)

CMOVE(0x2,R0)
CMOVE(0x600,R1)
SHLC(R1,12,R1)
ADDC(R1,0x600,R1)
CMOVE(0x7,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
ST(R0,instance_list+24)
ST(R1,instance_list+28)
ST(R2,instance_list+32)
ST(R3,instance_list+36)
ST(R4,instance_list+40)
CMOVE(0x0,R0)
ST(R0,instance_list+44)

loop:
  CALL(update)
  BR(loop)

update:        			| process next game object
  PUSH(R1)
  PUSH(R2)
  PUSH(R8)

update_start:
  LD(instance_list,R8)      	| load the current offset into the list
  LD(R8,0,R1)   		| load SPRITE_ID of next object
  LD(R8,POSITION_OFFSET,R2)	| load POSITION of next object
  LD(R8,COLOR_OFFSET,R5)	| load RGB of next object
  
  SHLC(R1,27,R17)		| shift SPRITE_ID into upper five bits of R17
  SHLC(R5,24,R0)		| shift RGB into bits [26:24] of R17
  ADD(R17,R0,R17)		| combine
  ADD(R17,R2,R17)		| include POSITION: R17 now contains {SPRITE_ID[4:0], RGB[2:0], POSITION_X[11:0], POSITION_Y[11:0]}

  PUSH(LP)     			| gotta push LP before you call a function within a function!
  CALL(write_external)
  POP(LP)       		| restore LP
  BNE(R1,cont_update,R31)   	| if SPRITE_ID != NULL, continue
    CMOVE(instance_list+4,R8)   | reset list pointer
    ST(R8,instance_list)
    CMOVE(0x0,R17)
    CALL(write_external)
    BR(update_start)            | start over
cont_update:
  LD(R8,4,R2) 			| load coordinates of next object
  SHLC(R1,0x2,R18)           	| turn SPRITE_ID into a byte offset
  LD(R18,object_routines,R18) 	| LD address of object-specific update routine
  JMP(R18, R9)               	| JMP to execute; save PC in R9
  ADDC(R8,NEXT_SPRITE_OFFSET,R8)             	| point list pointer to next next object
  ST(R8,instance_list)
  POP(R8)
  POP(R2)
  POP(R1)
  RTN()

|+========
pinball:
JMP(R9)                     	| return to update function

|+========
r_flipper:
JMP(R9)                     | return to update function

|+========
l_flipper:
JMP(R9)                     | return to update function

|+========
tri_bump:
JMP(R9)                     | return to update function

|+========
circ_bump:
JMP(R9)                     | return to update function

|+========
board:
JMP(R9)                     | return to update function

|========================================================
| OBJECT ROUTINE LOOKUP
|   index into list using SPRITE_ID*4
|   load address, then JMP to execute update routine
|=======================================================

object_routines:
  LONG(0xABCD)
  LONG(pinball)
  LONG(r_flipper)
  LONG(l_flipper)
  LONG(tri_bump)
  LONG(circ_bump)
  LONG(board)

|========================================================
| OBJECT INSTANCE LIST STRUCTURE:
|   0x00 pointer to object list: increment by 8 after
|        processing an object
|   0x04 SPRITE_ID - indicates what class of object we are
|        handling
|   0x08 POSITION - x and y data
|   0x0C VEL_X - x velocity
|   0x10 VEL_Y - y velcoity
|   0x14 RGB - sprite color  
|   ...
|   ... list of objects to be processed
|   ...
|   0x4n - NULL
|========================================================

instance_list: LONG(.+4)    | pointer to the object list
  STORAGE(256)              | allocated object memory

|+==========+
| for writing to the memory block shared with the laser projector
|===========
write_external:
  CMOVE(0x3000,R15)
  SHLC(R15,4,R15)     | load R15 with the bottom address of the external mem
  ADD(R15,R16,R15)    | add offset into memory from R16
  ST(R17,0,R15)       | write the contents of R17 into memory
  ADDC(R16,4,R16)     | increment offset for next time
  BNE(R17,write_end)
    CMOVE(0x0,R16)    | if we're done with the frame, clear offset
write_end:
  RTN()

STORAGE(128)
stack:

|. = 0x00400000
|LONG(0x1EEB)
