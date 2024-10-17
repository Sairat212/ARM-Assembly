.equ sevenseg,0xff200020
.equ sevenseg1,0xff200030
.equ push, 0xff200050

.global _start
_start:

    LDR r0, =sevenseg
	LDR r1, =sevenseg1
	LDR r2, =push

	LDR r3, [r2]
	CMP r3, #5	//5=0101
	BEQ NSUID
	BNE hello
	
	hello:
	LDR r4, =#0b1111001001110000011100000111111		//ELLO
	STR r4, [r0]
	LDR r5, =#0b01110110	//H
	STR r5, [r1]
	B end

	NSUID:		//6th and 7th digit of ID=72 (ID:2121572)
	LDR r6, =#0b0000011101011011
	STR r6, [r0]
	LDR r7, =#0b00000000
	STR r7, [r1]
	B end
	
	end:
	SWI 0