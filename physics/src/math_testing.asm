.include beta.uasm		| Define Beta instructions, etc.
.options clock tty

|========================================================
| REGISTER MAP
| r0: scratch
| r1: sprite ID (five bits)
| r2: position OR angle
| r3: x velocity --- both xvel and yvel are left shifted
| r4: y velocity --- by a byte to give fractional components
| r5: color (RGB)
| r6: accel due to gravity based on timestep
| r8: instance pointer
| r9: PC
| r10: 0x0000FFFF
| r11-14 : scratch
| r15: external base address
| r16: offset external
| r17: argument to write_external
| r18: byte offset sprite ID
|========================================================

| Define parameters

|TIMER_VALUE = 0x8000   | 1.526 kHz
TIMER_VALUE = 0x1       | DEBUG

GRAV_FRACT = 0xC        | .75 pixels/second^2 left shifted by a byte
FRACT_SHIFT = 0x8        | otherwise known as 3/4

POSITION_OFFSET = 0x04
COLOR_OFFSET = 0x10
NEXT_SPRITE_OFFSET = 0x14
TIMER_SET = 0x24
TIMER_OVERFLOW = 0x2C
INPUT_PORT_A = 0x0

. = 0
JMP(start)

. = 0x4
INT_V:
ADDC(R31, 0, R31)
XRTN()

. = 0x10
start:
CMOVE(stack, SP)

CMOVE(0xFFFF,R10)
SHLC(R10, 16, R10)
SHRC(R10, 16, R10)

CMOVE(0x3,R1)
CMOVE(0,R2)
CMOVE(0x7,R3)
CMOVE(0x9,R4)
CMOVE(0x3,R5)
CALL(build_object)	| bounding box: cyan

CMOVE(0x2,R1)
CMOVE(0x01E0,R2)
SHLC(R2,12,R2)
CMOVE(0x01E0,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x5,R5)
CALL(build_object)	| arbitrary circle: purple

CMOVE(0x1,R1)
CMOVE(0x0600,R2)
SHLC(R2,12,R2)
CMOVE(0x0400,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x4,R5)
CALL(build_object)	| arbitrary circle (puck): red

CMOVE(0x4,R1)
CMOVE(0x01E0,R2)
SHLC(R2,12,R2)
CMOVE(0x07E0,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x2,R5)
CALL(build_object)	| left bumper: green

CMOVE(0x6,R1)
CMOVE(0x00F0,R2)
SHLC(R2,12,R2)
CMOVE(0x07E0,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x1,R5)
CALL(build_object)	| left slide thing: blue

CMOVE(0x8,R1)
CMOVE(0x023E,R2)
SHLC(R2,12,R2)
CMOVE(0x0A80,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x7,R5)
CALL(build_object)	| left paddle: white

CMOVE(0x5,R1)
CMOVE(0x0820,R2)
SHLC(R2,12,R2)
CMOVE(0x07E0,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x2,R5)      	
CALL(build_object)	| right bumper: green

CMOVE(0x7,R1)
CMOVE(0x0910,R2)
SHLC(R2,12,R2)
CMOVE(0x07E0,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x1,R5)
CALL(build_object)	| right slide thing: blue

CMOVE(0x9,R1)
CMOVE(0x06F0,R2)
SHLC(R2,12,R2)
CMOVE(0x0A80,R0)
AND(R0,R10,R0)
ADD(R0,R2,R2)
CMOVE(0x9,R3)
CMOVE(0x1,R4)
CMOVE(0x2,R5)
CALL(build_object)	| right paddle: white

loop:
  CALL(set_timer)
  CALL(update)
  BR(loop)

update:        			| process next game object

update_start:
  LD(instance_list,R8)      | load the current offset into the list
  LD(R8,0,R1)   		        | load SPRITE_ID of next object
  LD(R8,POSITION_OFFSET,R2)	| load POSITION of next object
  LD(R8,COLOR_OFFSET,R5)	  | load RGB of next object

| packet build routine
  SHLC(R1,27,R17)		| shift SPRITE_ID into upper five bits of R17
  SHLC(R5,24,R0)		| shift RGB into bits [26:24] of R17
  ADD(R17,R0,R17)		| combine
  ADD(R17,R2,R17)		| include POSITION: R17 now contains {SPRITE_ID[4:0], RGB[2:0], POSITION_X[11:0], POSITION_Y[11:0]}
|.breakpoint

  PUSH(LP)     			| gotta push LP before you call a function within a function!
  CALL(write_external)
  POP(LP)       		| restore LP
  BNE(R1,cont_update,R31)   	  | if SPRITE_ID != NULL, continue
    CMOVE(instance_list+4,R8)   | reset list pointer
    ST(R8,instance_list)
    CMOVE(0x0,R17)
    CALL(write_external)
    BR(update_start)            | start over
cont_update:
  SHLC(R1,0x2,R18)           	| turn SPRITE_ID into a byte offset
  LD(R18,object_routines,R18) | LD address of object-specific update routine
  JMP(R18, R9)               	| JMP to execute; save PC in R9
  ADDC(R8,NEXT_SPRITE_OFFSET,R8)             	| point list pointer to next next object
  ST(R8,instance_list)
  RTN()

|+========
pinball:
.breakpoint
LD(R8,4,R2) 			          | load coordinates of next object
LD(R8,8,R3)                 | load x and y velocities
LD(R8,12,R4)
PUSH(LP)
CALL(update_pos)
CALL(detect_collision)
CALL(update_velocity)
POP(LP)
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

|+========
fixme_1:
JMP(R9)                     | return to update function

|+========
fixme_2:
JMP(R9)                     | return to update function

|+========
fixme_3:
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
  LONG(fixme_1)
  LONG(fixme_2)
  LONG(fixme_3)

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

|+==========+
| builds an object in the instance_list
| before calling, put the appropriate values in R1-5
|***********

build_object:
  LD(count, R0)
  ADDC(R0,1,R0)                 | increment the count for next time
  ST(R0, count)                 | store the new count back in memory
  SUBC(R0,1,R0)
  MULC(R0,20,R0)                | turn count in R0 into the offset into the object list
  ST(R1,instance_list+4,R0)     | store object attributes
  ST(R2,instance_list+8,R0)
  ST(R3,instance_list+12,R0)
  ST(R4,instance_list+16,R0)
  ST(R5,instance_list+20,R0)
  ST(R31,instance_list+24,R0)   | end list with NULL; gets overwritten by next object
  RTN()

count: LONG(0x0)      | for storing the object instance count

|| Start the timer, wait for it to finish, and clear the flag (have to reload counter to reset)
set_timer:
	
	| Initialize and reset timer
	CMOVE(1, r11) 				| store timer address in r7
	SHLC(r11, 16, r11)
	CMOVE(TIMER_VALUE, r12) 			| load for gavlo update frequency
	ST(r12, TIMER_SET, r11)
	
wait_timer:
	LD(r11, TIMER_OVERFLOW, r12)
	BNE(r12, wait_timer)			| DEBUG
|	BEQ(r12, wait_timer) 			| flag should be set when timer is done
	CMOVE(0x0, r12) 				| clear flag
	ST(r12, TIMER_OVERFLOW, r11)
	RTN()

update_pos:
  SHRC(R2,0x10,R11)     | x pos
  SHLC(R11,0x8,R11)     | shift left to represent fractional portion
  AND(R2,R10,R12)       | y pos
  SHLC(R12,0x8,R12)
  ADDC(R4, GRAV_FRACT, R4) | add acceleration due to gravity
  ADD(R11,R3,R11)
  ADD(R12,R4,R12)      | increase position by v*t
  SHRC(R11,0x8,R11)     | shift out fractional byte
  SHLC(R11,0x10,R2)
  SHRC(R12,0x8,R12)
  AND(R12,R10,R12)
  ADD(R12,R2,R2)
  ST(R2,4,R8)
  RTN()

detect_collision:
  RTN()

update_velocity:
  ST(R3,8,R8)
  ST(R4,12,R8)
  RTN()

| Sprite lookup tables: one table for each sprite, memory location corresponds to sprite ID
sprite_lookup:
. = sprite_lookup+0x100
LONG(7) 				| a four-pointed circle for the ball: 1
LONG(0x00000000), LONG(TRAVEL_TIME)    	| stall for travel time
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser on
LONG(0x00100000), LONG(0x06)
LONG(0x00000010), LONG(0x06)
LONG(0xFFF00000), LONG(0x06)
LONG(0x0000FFF0), LONG(0x06)
LONG(0x00000000), LONG(STALL_TIME)

. = sprite_lookup+0x200
LONG(7)					| arbitrary circle (three times bigger): 2
LONG(0x00000000), LONG(TRAVEL_TIME)    	| stall for travel time
LONG(0x00000000), LONG(STALL_TIME)    	| stall for laser on
LONG(0x00100000), LONG(0x18)
LONG(0x00000010), LONG(0x18)
LONG(0xFFF00000), LONG(0x18)
LONG(0x0000FFF0), LONG(0x18)
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
LONG(0xFFD80012), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFB00000), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFD8FFEE), LONG(0x10)
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
LONG(0x00180008), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)

. = sprite_lookup+0x900
LONG(4)					| right paddle: 9
LONG(0x00000000), LONG(TRAVEL_TIME)
LONG(0x00000000), LONG(STALL_TIME)
LONG(0xFFE80008), LONG(0x10)
LONG(0x00000000), LONG(STALL_TIME)



stack:
STORAGE(128)

. = 0x00400000
LONG(0x1EEB)
