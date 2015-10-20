	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4684049276697837568     # double 139968
	.text
	.globl	gen_random
	.align	16, 0x90
	.type	gen_random,@function
gen_random:                             # @gen_random
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
	vmovsd	%xmm0, -8(%rbp)
	imulq	$3877, gen_random.last(%rip), %rcx # imm = 0xF25
	addq	$29573, %rcx            # imm = 0x7385
	movabsq	$4318579316753219217, %rdx # imm = 0x3BEEAD01FD6CBE91
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	imulq	$139968, %rdx, %rax     # imm = 0x222C0
	subq	%rax, %rcx
	vcvtsi2sdq	%rcx, %xmm0, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vdivsd	.LCPI0_0(%rip), %xmm0, %xmm0
	movq	%rcx, gen_random.last(%rip)
	popq	%rbp
	ret
.Ltmp5:
	.size	gen_random, .Ltmp5-gen_random
	.cfi_endproc

	.globl	benchmark_heapsort
	.align	16, 0x90
	.type	benchmark_heapsort,@function
benchmark_heapsort:                     # @benchmark_heapsort
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	sarl	%eax
	incl	%eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_13:                               # %while.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	vmovsd	-40(%rbp), %xmm0
	vmovsd	%xmm0, (%rax,%rcx,8)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_6 Depth 3
	cmpl	$2, -32(%rbp)
	jl	.LBB1_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rbp), %eax
	decl	%eax
	movl	%eax, -32(%rbp)
	movslq	%eax, %rax
	movq	-16(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_3:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rax
	vmovsd	8(%rax), %xmm0
	movslq	-28(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	movl	-28(%rbp), %eax
	decl	%eax
	movl	%eax, -28(%rbp)
	cmpl	$1, %eax
	je	.LBB1_14
.LBB1_4:                                # %if.end10
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_12:                               # %if.else30
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	-28(%rbp), %eax
	incl	%eax
.LBB1_5:                                # %if.end10
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_6 Depth 3
	movl	%eax, -24(%rbp)
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_11:                               # %if.then24
                                        #   in Loop: Header=BB1_6 Depth=3
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	vmovsd	(%rax,%rcx,8), %xmm0
	movslq	-20(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	addl	%eax, -24(%rbp)
.LBB1_6:                                # %while.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB1_13
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB1_6 Depth=3
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB1_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_6 Depth=3
	movslq	-24(%rbp), %rax
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-16(%rbp), %rdx
	vmovsd	(%rdx,%rcx,8), %xmm0
	vucomisd	(%rdx,%rax,8), %xmm0
	jbe	.LBB1_10
# BB#9:                                 # %if.then19
                                        #   in Loop: Header=BB1_6 Depth=3
	incl	-24(%rbp)
.LBB1_10:                               # %if.end20
                                        #   in Loop: Header=BB1_6 Depth=3
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vucomisd	-40(%rbp), %xmm0
	jbe	.LBB1_12
	jmp	.LBB1_11
.LBB1_14:                               # %if.then8
	movq	-16(%rbp), %rax
	vmovsd	-40(%rbp), %xmm0
	vmovsd	%xmm0, 8(%rax)
	popq	%rbp
	ret
.Ltmp11:
	.size	benchmark_heapsort, .Ltmp11-benchmark_heapsort
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$8000000, %eax          # imm = 0x7A1200
	cmpl	$2, -8(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB2_2:                                # %cond.end
	movl	%eax, -20(%rbp)
	incl	%eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	vmovsd	.LCPI2_0(%rip), %xmm0
	callq	gen_random
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	incl	-36(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB2_4
# BB#5:                                 # %for.end
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	benchmark_heapsort
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
	movq	-32(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	main, .Ltmp17-main
	.cfi_endproc

	.type	gen_random.last,@object # @gen_random.last
	.data
	.align	8
gen_random.last:
	.quad	42                      # 0x2a
	.size	gen_random.last, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%f\n"
	.size	.L.str, 4


	.section	".note.GNU-stack","",@progbits
