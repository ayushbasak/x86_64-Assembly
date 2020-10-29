#A loop example for assembly
	.text
	.globl main
	.type main, @function

main:
.LFBO:
	.cfi_startproc
	pushq	%rbp
	movq	%rsp,	%rbp
	movl	$0,	-4(%rbp)
.L2:
	addl	$1,	-4(%rbp)
	cmpl	$9,	-4(%rbp)
	jle	.L2
	movl	$0,	%eax
	movl	-4(%rbp),	%edi
	addl	$47,	%edi
	call	putchar@PLT
	ret
	.cfi_endproc
