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
	.file	"test_2_2.c"
	.text
	.global	MAX_SIZE
	.section	.rodata
	.align	2
	.type	MAX_SIZE, %object
	.size	MAX_SIZE, 4
MAX_SIZE:
	.word	100
	.global	x
	.data
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.word	10
	.global	f
	.align	2
	.type	f, %object
	.size	f, 4
f:
	.word	1078523331
	.global	arr1
	.bss
	.align	2
	.type	arr1, %object
	.size	arr1, 40
arr1:
	.space	40
	.global	arr2
	.align	2
	.type	arr2, %object
	.size	arr2, 100
arr2:
	.space	100
	.section	.rodata
	.align	2
.LC0:
	.ascii	"x is greater than y\000"
	.align	2
.LC1:
	.ascii	"x is equal to y\000"
	.align	2
.LC2:
	.ascii	"x is less than y\000"
	.align	2
.LC3:
	.ascii	"Value of i: %d\012\000"
	.align	2
.LC4:
	.ascii	"Sum: %d, Product: %.2f\012\000"
	.align	2
.LC5:
	.ascii	"m: %d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	ldr	r3, .L22
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	adds	r3, r3, #5
	str	r3, [r7, #24]
	ldr	r3, .L22+4
.LPIC1:
	add	r3, pc
	vldr.32	s15, [r3]
	vadd.f32	s15, s15, s15
	vstr.32	s15, [r7, #28]
	ldr	r3, .L22+8
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	bge	.L2
	ldr	r3, .L22+12
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L3
.L2:
	ldr	r3, .L22+16
.LPIC4:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	bne	.L4
	ldr	r3, .L22+20
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L3
.L4:
	ldr	r3, .L22+24
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
.L3:
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L5
.L6:
	ldr	r1, [r7, #4]
	ldr	r3, .L22+28
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L5:
	ldr	r3, [r7, #4]
	cmp	r3, #4
	ble	.L6
	ldr	r3, .L22+32
.LPIC8:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r1, [r7, #24]
	mov	r0, r3
	bl	add(PLT)
	str	r0, [r7, #32]
	ldr	r3, .L22+36
.LPIC9:
	add	r3, pc
	vldr.32	s15, [r3]
	vldr.32	s1, [r7, #28]
	vmov.f32	s0, s15
	bl	multiply(PLT)
	vstr.32	s0, [r7, #36]
	vldr.32	s15, [r7, #36]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, [r7, #32]
	ldr	r0, .L22+40
.LPIC10:
	add	r0, pc
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L7
.L8:
	ldr	r3, .L22+44
.LPIC11:
	add	r3, pc
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #8]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L7:
	ldr	r3, [r7, #8]
	cmp	r3, #9
	ble	.L8
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L9
.L12:
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L10
.L11:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	mul	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vcvt.f32.f64	s15, d7
	ldr	r1, .L22+48
.LPIC12:
	add	r1, pc
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	vstr.32	s15, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L10:
	ldr	r3, [r7, #16]
	cmp	r3, #4
	ble	.L11
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L9:
	ldr	r3, [r7, #12]
	cmp	r3, #4
	ble	.L12
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L13
.L18:
	ldr	r3, [r7, #20]
	cmp	r3, #3
	beq	.L20
	ldr	r3, [r7, #20]
	cmp	r3, #7
	beq	.L21
	ldr	r1, [r7, #20]
	ldr	r3, .L22+52
.LPIC13:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	b	.L15
.L20:
	nop
.L15:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L13:
	ldr	r3, [r7, #20]
	cmp	r3, #9
	ble	.L18
	b	.L17
.L21:
	nop
.L17:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	x-(.LPIC0+4)
	.word	f-(.LPIC1+4)
	.word	x-(.LPIC2+4)
	.word	.LC0-(.LPIC3+4)
	.word	x-(.LPIC4+4)
	.word	.LC1-(.LPIC5+4)
	.word	.LC2-(.LPIC6+4)
	.word	.LC3-(.LPIC7+4)
	.word	x-(.LPIC8+4)
	.word	f-(.LPIC9+4)
	.word	.LC4-(.LPIC10+4)
	.word	arr1-(.LPIC11+4)
	.word	arr2-(.LPIC12+4)
	.word	.LC5-(.LPIC13+4)
	.size	main, .-main
	.align	1
	.global	add
	.syntax unified
	.thumb
	.thumb_func
	.type	add, %function
add:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	add, .-add
	.align	1
	.global	multiply
	.syntax unified
	.thumb
	.thumb_func
	.type	multiply, %function
multiply:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	vstr.32	s0, [r7, #4]
	vstr.32	s1, [r7]
	vldr.32	s14, [r7, #4]
	vldr.32	s15, [r7]
	vmul.f32	s15, s14, s15
	vmov.f32	s0, s15
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	multiply, .-multiply
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
