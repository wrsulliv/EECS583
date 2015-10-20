	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	eval_A
	.align	16, 0x90
	.type	eval_A,@function
eval_A:                                 # @eval_A
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax,%rsi), %ecx
	addl	%eax, %esi
	imull	%ecx, %esi
	movl	%esi, %ecx
	shrl	$31, %ecx
	vmovsd	.LCPI0_0(%rip), %xmm0
	addl	%esi, %ecx
	sarl	%ecx
	leal	1(%rcx,%rax), %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp5:
	.size	eval_A, .Ltmp5-eval_A
	.cfi_endproc

	.globl	eval_A_times_u
	.align	16, 0x90
	.type	eval_A_times_u,@function
eval_A_times_u:                         # @eval_A_times_u
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_5:                                # %for.inc8
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	-28(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
	movl	$0, -32(%rbp)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edi
	callq	eval_A
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	vmulsd	(%rcx,%rax,8), %xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	incl	-32(%rbp)
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB1_5
	jmp	.LBB1_4
.LBB1_6:                                # %for.end10
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	eval_A_times_u, .Ltmp11-eval_A_times_u
	.cfi_endproc

	.globl	eval_At_times_u
	.align	16, 0x90
	.type	eval_At_times_u,@function
eval_At_times_u:                        # @eval_At_times_u
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_5:                                # %for.inc8
                                        #   in Loop: Header=BB2_1 Depth=1
	incl	-28(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
	movl	$0, -32(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	callq	eval_A
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	vmulsd	(%rcx,%rax,8), %xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	incl	-32(%rbp)
.LBB2_3:                                # %for.cond1
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB2_5
	jmp	.LBB2_4
.LBB2_6:                                # %for.end10
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	eval_At_times_u, .Ltmp17-eval_At_times_u
	.cfi_endproc

	.globl	eval_AtA_times_u
	.align	16, 0x90
	.type	eval_AtA_times_u,@function
eval_AtA_times_u:                       # @eval_AtA_times_u
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp24:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-12(%rbp), %eax
	movq	%rsp, -40(%rbp)
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rsp
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edi
	movq	%rbx, %rdx
	callq	eval_A_times_u
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %edi
	movq	%rbx, %rsi
	callq	eval_At_times_u
	movq	-40(%rbp), %rax
	movq	%rax, %rsp
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp25:
	.size	eval_AtA_times_u, .Ltmp25-eval_AtA_times_u
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp32:
	.cfi_offset %rbx, -32
.Ltmp33:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$2000, %eax             # imm = 0x7D0
	cmpl	$2, -24(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB4_2:                                # %cond.end
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movq	%rsp, -48(%rbp)
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %r14
	subq	%rax, %r14
	movq	%r14, %rsp
	movl	-40(%rbp), %eax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rbx
	subq	%rax, %rbx
	movq	%rbx, %rsp
	movl	$0, -36(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_4:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movslq	-36(%rbp), %rcx
	movq	%rax, (%r14,%rcx,8)
	incl	-36(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jl	.LBB4_4
# BB#5:                                 # %for.end
	movl	$0, -36(%rbp)
	jmp	.LBB4_6
	.align	16, 0x90
.LBB4_7:                                # %for.inc7
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-40(%rbp), %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	eval_AtA_times_u
	movl	-40(%rbp), %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	eval_AtA_times_u
	incl	-36(%rbp)
.LBB4_6:                                # %for.cond4
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -36(%rbp)
	jle	.LBB4_7
# BB#8:                                 # %for.end9
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_10:                               # %for.inc23
                                        #   in Loop: Header=BB4_9 Depth=1
	movslq	-36(%rbp), %rax
	vmovsd	(%r14,%rax,8), %xmm0
	vmulsd	(%rbx,%rax,8), %xmm0, %xmm0
	vaddsd	-56(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)
	movslq	-36(%rbp), %rax
	vmovsd	(%rbx,%rax,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vaddsd	-64(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -64(%rbp)
	incl	-36(%rbp)
.LBB4_9:                                # %for.cond10
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.LBB4_10
# BB#11:                                # %for.end25
	vmovsd	-56(%rbp), %xmm0
	vdivsd	-64(%rbp), %xmm0, %xmm0
	callq	sqrt
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
	movl	$0, -20(%rbp)
	movl	$1, -68(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rsp
	movl	-20(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp34:
	.size	main, .Ltmp34-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%0.9f\n"
	.size	.L.str, 7


	.section	".note.GNU-stack","",@progbits
