.global _start
_start:

	LDR r0,=array
	LDR r1,[r0]	
	MOV r2,#0	//even counter
	
	loop:
	TST r1,#1
	ADDEQ r3,r3,r1
	ADDEQ r2,r2,#1
	
	CMP r2,#2
	BEQ exit
	
	LDR r1,[r0,#4]!
	B loop
	
	exit:
	SWI 0
	
	.data
	array:
	.word 1,9,5,7,8,9,2,3,6,43,55,2,1