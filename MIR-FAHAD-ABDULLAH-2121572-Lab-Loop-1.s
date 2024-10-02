.global _start
_start:
	
//C-code:
	//int i=1
	//int a=0
	//while(i!=128)
	//		{i=i*2
	//		a=a+2
	//		}
	
// ARM Assembly:
	
	MOV r0,#1	//i=1
	MOV r1,#0	//a=0
	
	WHILE:
	CMP r0,#128
	BEQ DONE
	
	LSL r0,r0,#1	//i=i*2
	ADD r1,r1,#2	//a=a+2
	
	B WHILE
	
	DONE:
	SWI 0