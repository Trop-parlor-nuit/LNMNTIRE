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
	.file	"sort.c"
	.text
	.global	N
	.section	.rodata
	.align	2
	.type	N, %object
	.size	N, 4
N:
	.word	1000
	.text
	.align	1
	.global	bubble_sort
	.syntax unified
	.thumb
	.thumb_func
	.type	bubble_sort, %function
bubble_sort:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L6:
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	b	.L3
.L5:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L4
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	add	r3, r3, r1
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L4:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L3:
	ldr	r3, [r7]
	subs	r3, r3, #1
	ldr	r2, [r7, #16]
	cmp	r2, r3
	blt	.L5
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	cmp	r2, r3
	blt	.L6
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bubble_sort, .-bubble_sort
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\000"
	.align	2
.LC1:
	.ascii	"max is: %d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	ldr	r2, .L12
.LPIC3:
	add	r2, pc
	ldr	r3, .L12+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	mov	r3, #0
	mov	r3, sp
	mov	r6, r3
	mov	r3, #1000
	subs	r3, r3, #1
	str	r3, [r7, #12]
	mov	r3, #1000
	mov	r2, r3
	movs	r3, #0
	mov	r4, r2
	mov	r5, r3
	mov	r2, #0
	mov	r3, #0
	lsls	r3, r5, #5
	orr	r3, r3, r4, lsr #27
	lsls	r2, r4, #5
	mov	r3, #1000
	mov	r2, r3
	movs	r3, #0
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	lsls	r3, r1, #5
	orr	r3, r3, r0, lsr #27
	lsls	r2, r0, #5
	mov	r3, #1000
	lsls	r3, r3, #2
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	lsls	r3, r3, #3
	sub	sp, sp, r3
	mov	r3, sp
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	lsls	r3, r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #4]
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r3, .L12+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L8
.L9:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r3, .L12+12
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	blt	.L9
	ldr	r3, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	bubble_sort(PLT)
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r3, .L12+16
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	mov	sp, r6
	ldr	r1, .L12+20
.LPIC4:
	add	r1, pc
	ldr	r2, .L12+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L11
	bl	__stack_chk_fail(PLT)
.L11:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L13:
	.align	2
.L12:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
