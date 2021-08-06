	.global _Z6add128R6BigNumRKS_S2_

_Z6add128R6BigNumRKS_S2_:
	push	{R4,R5,R6}
	
	ldr	r4, [r2, #12]
	ldr	r5, [r3, #12]
	adds	r6, r4, r5
	str	r6, [r1, #12]

	ldr	r4, [r2, #8]
	ldr	r5, [r3, #8]
	adcs	r6, r4, r5
	str	r6, [r1, #8]
	
	ldr	r4, [r2, #4]
	ldr	r5, [r3, #4]
	adcs	r6, r4, r5
	str	r6, [r1, #4]
	
	ldr	r4, [r2]
	ldr	r5, [r3]
	adc	r6, r4, r5
	str	r6, [r1]
	
	pop	{R4,R5,R6}
