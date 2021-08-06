	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"hw8.cc"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1534:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12
	ldr	r0, .L4
	bl	_Znaj
	ldr	r5, .L4+4
	ldr	r4, .L4+8
	mov	r1, r5
	mov	r6, r0
	bl	_Z12eratosthenesPjj
	mov	r2, #13
	ldr	r1, .L4+12
	mov	r7, r0
	mov	r0, r4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r1, r5
	mov	r0, r4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	r2, #3
	ldr	r1, .L4+16
	mov	r4, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r1, r7
	mov	r0, r4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	r3, #10
	mov	r2, #1
	add	r1, sp, #7
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r6
	bl	_ZdaPv
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L5:
	.align	2
.L4:
	.word	125000000
	.word	1000000000
	.word	_ZSt4cout
	.word	.LC0
	.word	.LC1
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	.fnstart
.LFB2020:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L8
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_main
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Primes up to \000"
	.space	2
.LC1:
	.ascii	" = \000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
