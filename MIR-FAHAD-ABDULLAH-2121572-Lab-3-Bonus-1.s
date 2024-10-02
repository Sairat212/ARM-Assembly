.global _start
.equ lb, 0xaaaaaaaa
_start:
	
	// question-i) find the MAX and MIN value
	
	LDR r0,=array
	LDR r1,=lb
	LDR r2,[r0,#4]	//iterative pointer
	LDR r3,[r0]	//initial MIN
	LDR r4,[r0]	//initial MAX
	
loop:
	//compare for min
	CMP r2,r3
	BLT min
	
	//compare for max
	CMP r2,r4
	BGT max
	
min:
	MOV r3,r2
	B next_element
	
max:
	MOV r4,r2
	B next_element
	
next_element:
	LDR r2,[r0,#4]!
	CMP r2,r1
	BEQ exit
	B loop
	
exit:
	SWI 0
	
	.data
	array:
	.word 1,9,5,7,8,9,2,3,6,43,55,2,1