.equ sevenseg,0xff200020
.equ sevenseg1,0xff200030
.global _start
_start:
	
loop:
	LDR r1, =sevenseg1
	LDR r2, =#0b0111110100000000
	STR r2, [r1]
	ROR r2,#8
	STR r2, [r1]
	ROR r2,#8
	LDR r2, =#0b0000000000000000
	STR r2, [r1]
	LDR r1, =sevenseg
	LDR r2, =#0b01111101
	
	ROR r2, #8
	STR r2, [r1]
	ROR r2, #8
	STR r2, [r1]
	ROR r2, #8
	STR r2, [r1]
	
	ROR r2, #8
	STR r2, [r1]
	LDR r1, =sevenseg
	LDR r2, =#0b00000000
	STR r2, [r1]
	ROR r2, #8
	b loop
