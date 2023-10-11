	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test_2.c"
	.text
	.global	MAX
	.section	.rodata
	.align	2
	.type	MAX, %object
	.size	MAX, 4
MAX:
	.word	10
	.text
	.align	1
	.global	factorial
	.syntax unified
	.thumb
	.thumb_func
	.type	factorial, %function
factorial:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L3
.L2:
	movs	r3, #1
	b	.L4
.L3:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	mov	r0, r3
	bl	factorial(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	mul	r3, r2, r3
.L4:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	factorial, .-factorial
	.align	1
	.global	power
	.syntax unified
	.thumb
	.thumb_func
	.type	power, %function
power:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	vstr.32	s0, [r7, #4]
	str	r0, [r7]
	mov	r3, #1065353216
	str	r3, [r7, #8]	@ float
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L6
.L7:
	vldr.32	s14, [r7, #8]
	vldr.32	s15, [r7, #4]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L6:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L7
	ldr	r3, [r7, #8]	@ float
	vmov	s15, r3
	vmov.f32	s0, s15
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	power, .-power
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Factorial of %d is: %d\012\000"
	.align	2
.LC1:
	.ascii	"Enter a float and an integer for the power function"
	.ascii	":\000"
	.align	2
.LC2:
	.ascii	"%f %d\000"
	.align	2
.LC3:
	.ascii	"Power of %f raised to %d is: %f\012\000"
	.align	2
.LC4:
	.ascii	"%d\012%d\012\000"
	.align	2
.LC5:
	.ascii	"%d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	vpush.64	{d8}
	sub	sp, sp, #52
	add	r7, sp, #16
	ldr	r2, .L16
.LPIC6:
	add	r2, pc
	ldr	r3, .L16+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	mov	r3, #0
	mov	r3, sp
	mov	r6, r3
	movs	r3, #10
	subs	r3, r3, #1
	str	r3, [r7, #20]
	movs	r3, #10
	mov	r2, r3
	movs	r3, #0
	mov	r4, r2
	mov	r5, r3
	mov	r2, #0
	mov	r3, #0
	lsls	r3, r5, #5
	orr	r3, r3, r4, lsr #27
	lsls	r2, r4, #5
	movs	r3, #10
	mov	r2, r3
	movs	r3, #0
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	lsls	r3, r1, #5
	orr	r3, r3, r0, lsr #27
	lsls	r2, r0, #5
	movs	r3, #10
	lsls	r3, r3, #2
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	lsls	r3, r3, #3
	sub	sp, sp, r3
	add	r3, sp, #16
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	lsls	r3, r3, #2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L10
.L11:
	ldr	r0, [r7, #12]
	bl	factorial(PLT)
	mov	r1, r0
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #12]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, .L16+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L10:
	movs	r2, #10
	ldr	r3, [r7, #12]
	cmp	r3, r2
	blt	.L11
	ldr	r3, .L16+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	adds	r2, r7, #4
	add	r3, r7, #8
	mov	r1, r3
	ldr	r3, .L16+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	vldr.32	s15, [r7, #8]
	vcvt.f64.f32	d8, s15
	ldr	r4, [r7, #4]
	vldr.32	s15, [r7, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	vmov.f32	s0, s15
	bl	power(PLT)
	vmov.f32	s15, s0
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp, #8]
	str	r4, [sp]
	vmov	r2, r3, d8
	ldr	r1, .L16+20
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, .L16+24
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #2
	str	r3, [r7, #16]
	b	.L12
.L13:
	ldr	r3, [r7, #16]
	subs	r2, r3, #1
	ldr	r3, [r7, #24]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #16]
	subs	r1, r3, #2
	ldr	r3, [r7, #24]
	ldr	r3, [r3, r1, lsl #2]
	adds	r1, r2, r3
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #16]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #16]
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r3, .L16+28
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L12:
	movs	r2, #10
	ldr	r3, [r7, #16]
	cmp	r3, r2
	blt	.L13
	movs	r3, #0
	mov	sp, r6
	ldr	r1, .L16+32
.LPIC7:
	add	r1, pc
	ldr	r2, .L16+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #28]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L15
	bl	__stack_chk_fail(PLT)
.L15:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, r7, pc}
.L17:
	.align	2
.L16:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	.LC4-(.LPIC4+4)
	.word	.LC5-(.LPIC5+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
