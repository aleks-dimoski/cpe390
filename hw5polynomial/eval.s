	.global 	_Z5powerii
_Z5powerii:
	.fnstart
	mov	r2, r0
	cmp	r1, #0
	bgt	.loop
	mov	r0, #1
	bx	lr
.loop:
	cmp	r1, #1
	beq	.exit
	mul	r0, r2
	sub	r1, #1
	b	.loop
.exit:
	bx	lr
