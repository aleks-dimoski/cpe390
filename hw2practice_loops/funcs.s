	.globl _Z5counti
_Z5counti:
	mov	r1, #1
.count:
	add	r1, #1
	cmp	r1, r0
	blt	.count

	.globl _Z9countDowni
_Z9countDowni:
.countD:
	sub	r0, #1
	cmp	r0, #0
	bgt	.countD


	.globl _Z3sumii
_Z3sumii:	
	mov	r2, r0
.sum:
	add	r2, #1
	add	r0, r2
	cmp	r2, r1
	blt	.sum
	bx	lr




	.globl _Z4facti
_Z4facti:
	mov	r1, r0
	cmp	r0, #1
	bgt	.fact
	mov	r0, #1
	bx	lr
.fact:
	sub	r0, #1
	mul	r1, r0
	cmp	r0, #2
	bgt	.fact
	mov	r0, r1
	bx	lr
