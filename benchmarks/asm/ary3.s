	.file	"<stdin>"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1500000, %eax          # imm = 0x16E360
	cmpl	$2, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB0_2:                                # %cond.end
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, -40(%rbp)
	movslq	-20(%rbp), %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, -48(%rbp)
	movl	$0, -24(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-24(%rbp), %rax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
	incl	-24(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB0_4
# BB#5:                                 # %for.end
	movl	$0, -28(%rbp)
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_10:                               # %for.inc22
                                        #   in Loop: Header=BB0_6 Depth=1
	incl	-28(%rbp)
.LBB0_6:                                # %for.cond7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	cmpl	$999, -28(%rbp)         # imm = 0x3E7
	jg	.LBB0_11
# BB#7:                                 # %for.body10
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_9:                                # %for.inc20
                                        #   in Loop: Header=BB0_8 Depth=2
	movslq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	movq	-48(%rbp), %rdx
	addl	%ecx, (%rdx,%rax,4)
	decl	-24(%rbp)
.LBB0_8:                                # %for.cond11
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -24(%rbp)
	js	.LBB0_10
	jmp	.LBB0_9
.LBB0_11:                               # %for.end24
	movl	-20(%rbp), %eax
	decl	%eax
	movslq	%eax, %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	(%rcx), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movq	-40(%rbp), %rdi
	callq	free
	movq	-48(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d %d\n"
	.size	.L.str, 7


	.section	".note.GNU-stack","",@progbits
