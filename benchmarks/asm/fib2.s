	.file	"<stdin>"
	.text
	.globl	fib
	.align	16, 0x90
	.type	fib,@function
fib:                                    # @fib
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	cmpq	$1, %rdi
	ja	.LBB0_2
# BB#1:                                 # %if.then
	movq	$1, -16(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	-24(%rbp), %rdi
	addq	$-2, %rdi
	callq	fib
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	decq	%rdi
	callq	fib
	addq	%rbx, %rax
	movq	%rax, -16(%rbp)
.LBB0_3:                                # %return
	movq	-16(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	fib, .Ltmp7-fib
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$43, %eax
	cmpl	$2, -8(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB1_2:                                # %cond.end
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rdi
	callq	fib
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp13:
	.size	main, .Ltmp13-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%ld\n"
	.size	.L.str, 5


	.section	".note.GNU-stack","",@progbits
