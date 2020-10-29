#Add 2 integers in a single register
	.text
	.globl main
	.type main, @function

main:
.LFBO:
	.cfi_startproc
	pushq	%rbp
	movq	%rsp,	%rbp
	movl	$2,	-4(%rbp)
	addl	$3,	-4(%rbp)
	#Store This sum in register %edi to print
	movl	-4(%rbp),	%edi
	add	$48,	%edi
	call	putchar@PLT
	movl	$0,	%eax
	ret
	.cfi_endproc
