.global _start
.equ lb, 0xaaaaaaaa
_start:

	ldr r0, =list
	ldr r2, =lb
	ldr r1, [r0]

	loop:
	tst r1, #1
	addeq r3, r3, r1
	ldr r1, [r0, #4]!
	cmp r1, r2
	beq exit

	b loop

	exit:

	.data
	list:
	.word 1,2,4,4,5,6,7,8,9,10,11,12