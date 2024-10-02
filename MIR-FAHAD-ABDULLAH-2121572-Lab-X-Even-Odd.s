.global _start
_start:
	
	//Write a arm assembly program that checks A=4 is even or odd. If it is even then calculate 
	// S1= 5A^2+2A else calculate S2= (2A+6)/2
	
	MOV r0,#4	//A=4
	MOV r1,#5
	
	//checking even or odd
	TST r0,#1
	BEQ even
	BNE odd
	
even:
	//S1= 5A^2+2A
	MUL r2,r0,r0	//A^2
	MUL r2,r2,r1	//5A^2
	LSL r3,r0,#1	//A*2
	ADD r3,r2,r3	//S1= 5A^2+2A
	
	B done

odd:
	//S2= (2A+6)/2
	LSL r2,r0,#1	//2A
	ADD r2,r2,#6	//2A+6
	LSR r2,r2,#1	//(2A+6)/2
	
	B done
	
done:
	SWI 0