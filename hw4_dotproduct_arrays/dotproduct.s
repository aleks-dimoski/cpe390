
	.global _Z10dotproductPdS_
_Z10dotproductPdS_:
	vpush		{d1,d2,d3}
	vldr		d1, [r0]
	vldr		d2, [r1]
	vmul.f64	d0, d1, d2
	vldr		d1, [r0,#8]
	vldr		d2, [r1,#8]
	vmul.f64	d3, d1, d2
	vadd.f64	d0, d0, d3
	vldr		d1, [r0,#16]
	vldr		d2, [r1,#16]
	vmul.f64	d3, d1, d2
	vadd.f64	d0, d0, d3
	vstr		d0, [r0]
	vpop		{d1,d2,d3}
	bx		lr
