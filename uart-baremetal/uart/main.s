	.cpu cortex-a15
	.arch armv7-a
	.arch_extension virt
	.arch_extension idiv
	.arch_extension sec
	.arch_extension mp
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.global	ptrGPIO3
	.bss
	.align	2
	.type	ptrGPIO3, %object
	.size	ptrGPIO3, 4
ptrGPIO3:
	.space	4
	.global	ptrUart
	.align	2
	.type	ptrUart, %object
	.size	ptrUart, 4
ptrUart:
	.space	4
	.global	ptrUart_SYSC
	.align	2
	.type	ptrUart_SYSC, %object
	.size	ptrUart_SYSC, 4
ptrUart_SYSC:
	.space	4
	.global	ptrUart_SYSS
	.align	2
	.type	ptrUart_SYSS, %object
	.size	ptrUart_SYSS, 4
ptrUart_SYSS:
	.space	4
	.global	ptrUart_LCR
	.align	2
	.type	ptrUart_LCR, %object
	.size	ptrUart_LCR, 4
ptrUart_LCR:
	.space	4
	.global	ptrUart_MDR1
	.align	2
	.type	ptrUart_MDR1, %object
	.size	ptrUart_MDR1, 4
ptrUart_MDR1:
	.space	4
	.global	ptrUart_DLL
	.align	2
	.type	ptrUart_DLL, %object
	.size	ptrUart_DLL, 4
ptrUart_DLL:
	.space	4
	.global	ptrUart_DLH
	.align	2
	.type	ptrUart_DLH, %object
	.size	ptrUart_DLH, 4
ptrUart_DLH:
	.space	4
	.global	ptrUart_IER
	.align	2
	.type	ptrUart_IER, %object
	.size	ptrUart_IER, 4
ptrUart_IER:
	.space	4
	.global	ptrUart_EFR
	.align	2
	.type	ptrUart_EFR, %object
	.size	ptrUart_EFR, 4
ptrUart_EFR:
	.space	4
	.global	ptrUart_FCR
	.align	2
	.type	ptrUart_FCR, %object
	.size	ptrUart_FCR, 4
ptrUart_FCR:
	.space	4
	.global	ptrUart_THR
	.align	2
	.type	ptrUart_THR, %object
	.size	ptrUart_THR, 4
ptrUart_THR:
	.space	4
	.global	ptrUart_SSR
	.align	2
	.type	ptrUart_SSR, %object
	.size	ptrUart_SSR, 4
ptrUart_SSR:
	.space	4
	.global	ptrUart_MCR
	.align	2
	.type	ptrUart_MCR, %object
	.size	ptrUart_MCR, 4
ptrUart_MCR:
	.space	4
	.global	ptrUart_TLR
	.align	2
	.type	ptrUart_TLR, %object
	.size	ptrUart_TLR, 4
ptrUart_TLR:
	.space	4
	.global	ptrUart_TCR
	.align	2
	.type	ptrUart_TCR, %object
	.size	ptrUart_TCR, 4
ptrUart_TCR:
	.space	4
	.global	ptrUart_LSR
	.align	2
	.type	ptrUart_LSR, %object
	.size	ptrUart_LSR, 4
ptrUart_LSR:
	.space	4
	.global	msg
	.data
	.align	2
	.type	msg, %object
	.size	msg, 17
msg:
	.ascii	"hello world!!!\015\012\000"
	.global	msgCount
	.bss
	.type	msgCount, %object
	.size	msgCount, 1
msgCount:
	.space	1
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #38760
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	movw	r2, #257
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #28948
	movt	r3, 18437
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #2
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #28688
	movt	r3, 18437
	str	r3, [r2]
	nop
.L2:
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L2
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #28948
	movt	r3, 18437
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #8
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #28980
	movt	r3, 18437
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	mov	r3, #13568
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #14
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #13596
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #14
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #13600
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #14
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #13608
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #14
	str	r2, [r3]
	movw	r2, #:lower16:ptrGPIO3
	movt	r2, #:upper16:ptrGPIO3
	movw	r3, #28988
	movt	r3, 18437
	str	r3, [r2]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #128
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L3
.L4:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L3:
	ldr	r2, [fp, #-8]
	movw	r3, #65534
	movt	r3, 7
	cmp	r2, r3
	ble	.L4
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	orr	r2, r2, #16384
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L5
.L6:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L5:
	ldr	r2, [fp, #-12]
	movw	r3, #65534
	movt	r3, 7
	cmp	r2, r3
	ble	.L6
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L7
.L8:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L7:
	ldr	r2, [fp, #-16]
	movw	r3, #65534
	movt	r3, 7
	cmp	r2, r3
	ble	.L8
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	orr	r2, r2, #131072
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L9
.L10:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L9:
	ldr	r2, [fp, #-20]
	movw	r3, #65534
	movt	r3, 7
	cmp	r2, r3
	ble	.L10
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3]
	movw	r2, #:lower16:ptrUart_SYSC
	movt	r2, #:upper16:ptrUart_SYSC
	movw	r3, #41044
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_SYSS
	movt	r2, #:upper16:ptrUart_SYSS
	movw	r3, #41048
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_LCR
	movt	r2, #:upper16:ptrUart_LCR
	movw	r3, #40972
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_MDR1
	movt	r2, #:upper16:ptrUart_MDR1
	movw	r3, #40992
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_DLL
	movt	r2, #:upper16:ptrUart_DLL
	mov	r3, #40960
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_DLH
	movt	r2, #:upper16:ptrUart_DLH
	movw	r3, #40964
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_IER
	movt	r2, #:upper16:ptrUart_IER
	movw	r3, #40964
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_EFR
	movt	r2, #:upper16:ptrUart_EFR
	movw	r3, #40968
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_FCR
	movt	r2, #:upper16:ptrUart_FCR
	movw	r3, #40968
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_THR
	movt	r2, #:upper16:ptrUart_THR
	mov	r3, #40960
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_SSR
	movt	r2, #:upper16:ptrUart_SSR
	movw	r3, #41028
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_MCR
	movt	r2, #:upper16:ptrUart_MCR
	movw	r3, #40976
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_TLR
	movt	r2, #:upper16:ptrUart_TLR
	movw	r3, #40988
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_TCR
	movt	r2, #:upper16:ptrUart_TCR
	movw	r3, #40984
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_THR
	movt	r2, #:upper16:ptrUart_THR
	mov	r3, #40960
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart_LSR
	movt	r2, #:upper16:ptrUart_LSR
	movw	r3, #40980
	movt	r3, 18438
	str	r3, [r2]
	movw	r2, #:lower16:ptrUart
	movt	r2, #:upper16:ptrUart
	movw	r3, #38976
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrUart
	movt	r3, #:upper16:ptrUart
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart
	movt	r3, #:upper16:ptrUart
	ldr	r3, [r3]
	bic	r2, r2, #16777216
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart
	movt	r3, #:upper16:ptrUart
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart
	movt	r3, #:upper16:ptrUart
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3]
	movw	r2, #:lower16:ptrUart
	movt	r2, #:upper16:ptrUart
	movw	r3, #14308
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrUart
	movt	r3, #:upper16:ptrUart
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3]
	movw	r2, #:lower16:ptrUart
	movt	r2, #:upper16:ptrUart
	movw	r3, #14304
	movt	r3, 18944
	str	r3, [r2]
	movw	r3, #:lower16:ptrUart
	movt	r3, #:upper16:ptrUart
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_SYSC
	movt	r3, #:upper16:ptrUart_SYSC
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_SYSC
	movt	r3, #:upper16:ptrUart_SYSC
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3]
	nop
.L11:
	movw	r3, #:lower16:ptrUart_SYSS
	movt	r3, #:upper16:ptrUart_SYSS
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L11
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	mov	r2, #191
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	bic	r2, r2, #127
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_MCR
	movt	r3, #:upper16:ptrUart_MCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_MCR
	movt	r3, #:upper16:ptrUart_MCR
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_MCR
	movt	r3, #:upper16:ptrUart_MCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_MCR
	movt	r3, #:upper16:ptrUart_MCR
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	bic	r2, r2, #15
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	mov	r2, #191
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_EFR
	movt	r3, #:upper16:ptrUart_EFR
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	mov	r2, #191
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_DLL
	movt	r3, #:upper16:ptrUart_DLL
	ldr	r3, [r3]
	mov	r2, #26
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_DLH
	movt	r3, #:upper16:ptrUart_DLH
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_FCR
	movt	r3, #:upper16:ptrUart_FCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_FCR
	movt	r3, #:upper16:ptrUart_FCR
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	bic	r2, r2, #63
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	orr	r2, r2, #3
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_LCR
	movt	r3, #:upper16:ptrUart_LCR
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3]
	movw	r3, #:lower16:ptrUart_MDR1
	movt	r3, #:upper16:ptrUart_MDR1
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrUart_MDR1
	movt	r3, #:upper16:ptrUart_MDR1
	ldr	r3, [r3]
	bic	r2, r2, #7
	str	r2, [r3]
	movw	r3, #:lower16:msgCount
	movt	r3, #:upper16:msgCount
	mov	r2, #0
	strb	r2, [r3]
.L15:
	movw	r3, #:lower16:ptrUart_LSR
	movt	r3, #:upper16:ptrUart_LSR
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L12
	movw	r3, #:lower16:msgCount
	movt	r3, #:upper16:msgCount
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #:lower16:msg
	movt	r3, #:upper16:msg
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	movw	r3, #:lower16:ptrUart_THR
	movt	r3, #:upper16:ptrUart_THR
	ldr	r3, [r3]
	str	r2, [r3]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3]
	movw	r3, #:lower16:msgCount
	movt	r3, #:upper16:msgCount
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:msgCount
	movt	r3, #:upper16:msgCount
	strb	r2, [r3]
	b	.L13
.L12:
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	ldr	r2, [r3]
	movw	r3, #:lower16:ptrGPIO3
	movt	r3, #:upper16:ptrGPIO3
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3]
.L13:
	movw	r3, #:lower16:msgCount
	movt	r3, #:upper16:msgCount
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #17
	bne	.L15
	movw	r3, #:lower16:msgCount
	movt	r3, #:upper16:msgCount
	mov	r2, #0
	strb	r2, [r3]
	b	.L15
	.size	main, .-main
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
