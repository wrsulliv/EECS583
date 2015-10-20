	.file	"<stdin>"
	.text
	.globl	Ack
	.align	16, 0x90
	.type	Ack,@function
Ack:                                    # @Ack
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
	movl	%edi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_1
# BB#2:                                 # %if.end
	cmpl	$0, -20(%rbp)
	je	.LBB0_3
# BB#4:                                 # %if.end3
	movl	-16(%rbp), %ebx
	movl	-20(%rbp), %esi
	decl	%esi
	movl	%ebx, %edi
	callq	Ack
	decl	%ebx
	movl	%ebx, %edi
	movl	%eax, %esi
	jmp	.LBB0_5
.LBB0_1:                                # %if.then
	movl	-20(%rbp), %eax
	incl	%eax
	jmp	.LBB0_6
.LBB0_3:                                # %if.then2
	movl	-16(%rbp), %edi
	decl	%edi
	movl	$1, %esi
.LBB0_5:                                # %if.end3
	callq	Ack
.LBB0_6:                                # %if.end3
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	Ack, .Ltmp7-Ack
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp14:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$8, %ebx
	cmpl	$2, -16(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, %ebx
.LBB1_2:                                # %cond.end
	movl	%ebx, -28(%rbp)
	movl	$3, %edi
	movl	%ebx, %esi
	callq	Ack
	movl	$.L.str, %edi
	movl	%ebx, %esi
	movl	%eax, %edx
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp15:
	.size	main, .Ltmp15-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Ack(3,%d): %d\n"
	.size	.L.str, 15


	.section	".note.GNU-stack","",@progbits
