.global _start
_start:
	
	MOV r0,#30	//A=30
	MOV r1,#10	//B=10
	
	//MOV r0,#2	//A=2
	//MOV r1,#3	//B=3
	
	MOV r2,#18	//C=18
	MOV r3,#20	//D=20
	
	//E={(A+B)*10}/2
	
	ADD r4,r0,r1	//A+B
	LSL r5,r4,#3 	//(A+B)*2^3
	LSL r6,r4,#1	//(A+B)*2^1
	ADD r6,r5,r6	//(A+B)*2^3+(A+B)*2^1=(A+B)*10
	LSR r6,r6,#1	//E={(A+B)*10}/2
	
	CMP r6,#100
	BLT lessThen
	BGT greaterThen
	BEQ equal
	
lessThen:
	//S1={(A+B)*D*18}/4
	
	LSL r5,r4,#4 	//(A+B)*2^4
	LSL r7,r4,#1	//(A+B)*2^1
	ADD r7,r5,r7	//(A+B)*2^4+(A+B)*2^1=(A+B)*18
	MUL r7,r7,r3	//(A+B)*D*18
	LSR r7,r7,#2	//S1={(A+B)*D*18}/4
	
	B done
	
greaterThen:
	//S2={(A+B-C)*2}/16
	
	SUB r8,r4,r2	//(A+B-C)
	LSL r8,r8,#1	//(A+B-C)*2
	LSR r8,r8,#4	//S2={(A+B-C)*2}/16
	
	B done
	
equal:
	//S2={(A+B-C)*2}/16
	
	SUB r9,r4,r2	//(A+B-C)
	LSL r9,r9,#1	//(A+B-C)*2
	LSR r9,r9,#4	//S2={(A+B-C)*2}/16
	
	B done
	
done:
	SWI 0
	