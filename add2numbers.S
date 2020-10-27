.text

.LCO:
	.string "%d"
	.globl main
	.type main, @function
main:
.LFBO:
	.cfi_startproc
	subq $16, %rsp
	pushq %rbp
	movq %rsp, %rbp
	movl $34, -4(%rbp)
	movl $45, %eax
	popq %rbp
	ret
	.cfi_endproc
