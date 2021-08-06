	.global _Z12eratosthenesPjj
_Z12eratosthenesPjj:
	.fnstart
	push	{r4,r5,r6,r7,r8,r9,r10,r11,r12,lr}


.findBitIndex:
	mov	r2, #0x80000000
	mov	r4, #32
.findInd:
	ands	r3, r1, r2
	bne	.ind
	lsr	r2, #1
	sub	r4, #1
	b	.findInd
.ind:
	mov	lr, r1
	lsr	lr, #2
	add	lr, lr, r1
	lsr	r4, #1
	lsr	lr, r4
	
	ldr	r2, =#0xDB6DB6DB
	ldr	r3, =#0x6DB6DB6D
	ldr	r4, =#0xB6DB6DB6
	mov	r5, #5
	mov	r9, r0
	mov	r10, #2

.write:
	str	r2, [r9]
	str	r3, [r9,#4]
	str	r4, [r9,#8]
	add	r9, #12
	add	r5, #192
	cmp	r5, r1
	blt	.write

	mov	r5, #5
	mov	r2, #0x80000000
	ldr	r3, [r0]
	mov	r9, #0
	b	.move32Bits
	
	
.move4Bytes:
	mov	r2, #0x80000000
	ldr	r3, [r0, r9]
	
.move32Bits:
	ands	r4, r2, r3
	bne	.updateArray
.return:
	add	r5, #2
	lsr	r2, #1
	cmp	r5, r1
	bgt	.end
	cmp	r2, #0
	bne	.move32Bits
	
	add	r9, #4
	b	.move4Bytes
	
	
.updateArray:
	add	r10, #1
	cmp	r5, lr
	bgt	.return
	mov	r7, r5

	mov	r6, r7
	lsr	r7, #1
	sub	r7, #2

.loop:
	and	r8, r7, #31
	lsr	r12, r7, #5
	lsl	r12, #2
	ldr	r11, [r0,r12]
	mov	r4, #0x80000000
	lsr	r4, r8
	bic	r11, r4
	str	r11, [r0, r12]
	add	r7, r5
	add	r6, r5
	add	r6, r5

	cmp	r1, r6
	bgt	.loop

	ldr	r3, [r0, r9]
	b	.return
	
	
.end:
	mov	r0, r10
	pop	{r4,r5,r6,r7,r8,r9,r10,r11,r12,pc}
