.include beta.uasm		| Define Beta instructions, etc.
.options clock tty

. = 0
BR(start)

. = 0x4
INT_V:
ADDC(R31, 0, R31)
XRTN()

. = 0x10
start:
CMOVE(0x1,R0)
CMOVE(0xABCD,R1)
ST(R0,instance_list+4)/
ST(R1,instance_list+8)
CMOVE(0x2,R0)
CMOVE(0x1234,R1)
ST(R0,instance_list+12)
ST(R1,instance_list+16)
CMOVE(0x0,R0)
ST(R0,instance_list+20)

loop:
  CALL(update)
  BR(loop)

update:        | process next game object
  PUSH(R1)
  PUSH(R2)
  PUSH(R8)                | preserve registers
update_start:
  LD(instance_list,R8)      | load the current offset into the list
  LD(R8,0,R1)   | load SPRITE_ID of next object
  CMOVE(0x08AB,R17)     ||| TEST WRITE BLOCK
  SHLC(R17,16,R17)
  CMOVE(0xCDEF,R18)
  SHLC(R18,16,R18)
  SHRC(R18,16,R18)
  ADD(R17,R18,R17)      |||
  PUSH(LP)      | gotta push LP before you call a function within a function!
  CALL(write_external)
  POP(LP)       | restore LP
  BNE(R1,cont_update,R31)   | if SPRITE_ID != NULL, continue
    CMOVE(instance_list+4,R8)   | reset list pointer
    ST(R8,instance_list)
    CMOVE(0x0,R17)
    CALL(write_external)
    BR(update_start)            | start over
cont_update:
  LD(R8,4,R2) | load coordinates of next object
  SHLC(R1,0x2,R1)           | turn SPRITE_ID into a byte offset
  LD(R1,object_routines,R1) | LD address of object-specific update routine
  JMP(R1, R9)               | JMP to execute; save PC in R9
  ADDC(R8,8,R8)             | point list pointer to next next object
  ST(R8,instance_list)
  POP(R8)
  POP(R2)
  POP(R1)
  RTN()

|+========
pinball:
JMP(R9)                     | return to update function

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
|   0x0 pointer to object list: increment by 8 after
|       processing an object
|   0x4 SPRITE_ID - indicates what class of object we are
|       handling
|   0x8 POSITION  - x and y data
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
  ST(R17,0,15)        | write the contents of R15 into memory
  ADDC(R16,4,R16)     | increment offset for next time
  BNE(R17,write_end)
    CMOVE(0x0,R16)    | if we're done with the frame, clear offset
write_end:
  RTN()

|. = 0x00400000
|LONG(0xEEEB)
