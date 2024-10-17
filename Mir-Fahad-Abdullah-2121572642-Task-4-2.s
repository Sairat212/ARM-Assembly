.equ led, 0xff200000

.global _start
_start:

	MOV r1, #1
	
	loop:
	LDR r0, =led
	STR r1, [r0]
	LSL r1, #2
	CMP r1, #1024
	MOVEQ r1, #1
	B loop

	end:
	SWI 0