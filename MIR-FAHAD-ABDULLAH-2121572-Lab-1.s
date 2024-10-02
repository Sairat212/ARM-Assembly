.global _start
_start:
	
		
	MOV r0,#2	//A=2
	MOV r1,#3	//B=3
	MOV r2,#4	//C=4
	MOV r3,#5	//D=5
	
	// S1=(A*B*C*D)-(C+D)
	
	LSL r4,r1,#2	//B*C
	LSL r5,r3,#1	//A*D
	MUL r5,r4,r5	//A*B*C*D
	ADD r6,r2,r3	//C+D
	SUB r6,r5,r6	//(A*B*C*D)-(C+D)
	
	//S2=(B*C)+15
	ADD r5,r4,#15
	
	//S3=A+B-2
	ADD r7,r0,r1	//A+B
	SUB r7,r7,#2	//A+B-2
	
	//S=(S1 AND S2) OR S3
	AND r8,r6,r5	//S1 AND S2
	ORR r8,r8,r7	//(S1 AND S2) OR S3 = S