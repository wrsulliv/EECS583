	.file	"<stdin>"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1042983595              # float 0.16666667
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
	subq	$128, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movabsq	$274877907008, %rax     # imm = 0x4000000040
	movq	%rax, -68(%rbp)
	movl	$128, -60(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	decl	%eax
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %eax
	decl	%eax
	movl	%eax, -40(%rbp)
	movl	-56(%rbp), %eax
	decl	%eax
	movl	%eax, -44(%rbp)
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movl	-44(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %esi
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	$p, %edi
	movl	$1, %esi
	callq	newMat
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	$bnd, %edi
	movl	$1, %esi
	callq	newMat
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	$wrk1, %edi
	movl	$1, %esi
	callq	newMat
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	$wrk2, %edi
	movl	$1, %esi
	callq	newMat
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	$a, %edi
	movl	$4, %esi
	callq	newMat
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	$b, %edi
	movl	$3, %esi
	callq	newMat
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	$c, %edi
	movl	$3, %esi
	callq	newMat
	movl	$p, %edi
	callq	mat_set_init
	vmovss	.LCPI0_0(%rip), %xmm0
	movl	$bnd, %edi
	xorl	%esi, %esi
	callq	mat_set
	movl	$wrk1, %edi
	xorl	%esi, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	callq	mat_set
	movl	$wrk2, %edi
	xorl	%esi, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	callq	mat_set
	movl	$a, %edi
	xorl	%esi, %esi
	vmovss	.LCPI0_0(%rip), %xmm0
	callq	mat_set
	movl	$a, %edi
	movl	$1, %esi
	vmovss	.LCPI0_0(%rip), %xmm0
	callq	mat_set
	movl	$a, %edi
	movl	$2, %esi
	vmovss	.LCPI0_0(%rip), %xmm0
	callq	mat_set
	vmovss	.LCPI0_1(%rip), %xmm0
	movl	$a, %edi
	movl	$3, %esi
	callq	mat_set
	movl	$b, %edi
	xorl	%esi, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	callq	mat_set
	movl	$b, %edi
	movl	$1, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	callq	mat_set
	movl	$b, %edi
	movl	$2, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	callq	mat_set
	movl	$c, %edi
	xorl	%esi, %esi
	vmovss	.LCPI0_0(%rip), %xmm0
	callq	mat_set
	movl	$c, %edi
	movl	$1, %esi
	vmovss	.LCPI0_0(%rip), %xmm0
	callq	mat_set
	movl	$c, %edi
	movl	$2, %esi
	vmovss	.LCPI0_0(%rip), %xmm0
	callq	mat_set
	movl	$64, -32(%rbp)
	movq	$wrk2, 8(%rsp)
	movq	$wrk1, (%rsp)
	movl	$64, %edi
	movl	$a, %esi
	movl	$b, %edx
	movl	$c, %ecx
	movl	$p, %r8d
	movl	$bnd, %r9d
	callq	jacobi
	vmovss	%xmm0, -72(%rbp)
	movl	-32(%rbp), %esi
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	vmovss	-72(%rbp), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movl	$.L.str3, %edi
	movb	$1, %al
	callq	printf
	movl	$p, %edi
	callq	clearMat
	movl	$bnd, %edi
	callq	clearMat
	movl	$wrk1, %edi
	callq	clearMat
	movl	$wrk2, %edi
	callq	clearMat
	movl	$a, %edi
	callq	clearMat
	movl	$b, %edi
	callq	clearMat
	movl	$c, %edi
	callq	clearMat
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.globl	newMat
	.align	16, 0x90
	.type	newMat,@function
newMat:                                 # @newMat
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, 20(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rcx
	movl	$1, %eax
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB1_2
# BB#1:                                 # %select.mid
	xorl	%eax, %eax
.LBB1_2:                                # %select.end
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	newMat, .Ltmp11-newMat
	.cfi_endproc

	.globl	mat_set_init
	.align	16, 0x90
	.type	mat_set_init,@function
mat_set_init:                           # @mat_set_init
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_8:                                # %for.inc29
                                        #   in Loop: Header=BB2_1 Depth=1
	incl	-12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #       Child Loop BB2_5 Depth 3
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	cmpl	12(%rax), %ecx
	jge	.LBB2_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -16(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_7:                                # %for.inc26
                                        #   in Loop: Header=BB2_3 Depth=2
	incl	-16(%rbp)
.LBB2_3:                                # %for.cond1
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_5 Depth 3
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	cmpl	16(%rax), %ecx
	jge	.LBB2_8
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	$0, -20(%rbp)
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_6:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=3
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	imull	%eax, %eax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	decl	%edx
	imull	%edx, %edx
	vcvtsi2ssl	%edx, %xmm0, %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	imull	16(%rax), %ecx
	movl	20(%rax), %edx
	imull	%edx, %ecx
	imull	-16(%rbp), %edx
	addl	%ecx, %edx
	addl	-20(%rbp), %edx
	movslq	%edx, %rcx
	movq	(%rax), %rax
	vmovss	%xmm0, (%rax,%rcx,4)
	incl	-20(%rbp)
.LBB2_5:                                # %for.cond4
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	cmpl	20(%rax), %ecx
	jge	.LBB2_7
	jmp	.LBB2_6
.LBB2_9:                                # %for.end31
	popq	%rbp
	ret
.Ltmp17:
	.size	mat_set_init, .Ltmp17-mat_set_init
	.cfi_endproc

	.globl	mat_set
	.align	16, 0x90
	.type	mat_set,@function
mat_set:                                # @mat_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	vmovss	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_8:                                # %for.inc23
                                        #   in Loop: Header=BB3_1 Depth=1
	incl	-20(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	cmpl	12(%rax), %ecx
	jge	.LBB3_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -24(%rbp)
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_7:                                # %for.inc20
                                        #   in Loop: Header=BB3_3 Depth=2
	incl	-24(%rbp)
.LBB3_3:                                # %for.cond1
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	cmpl	16(%rax), %ecx
	jge	.LBB3_8
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	$0, -28(%rbp)
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_6:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movl	16(%rax), %edi
	movl	-20(%rbp), %edx
	imull	%edi, %edx
	imull	%ecx, %edx
	movl	-12(%rbp), %esi
	imull	12(%rax), %esi
	imull	%edi, %esi
	imull	%ecx, %esi
	addl	%edx, %esi
	imull	-24(%rbp), %ecx
	addl	%esi, %ecx
	addl	-28(%rbp), %ecx
	vmovss	-16(%rbp), %xmm0
	movslq	%ecx, %rcx
	movq	(%rax), %rax
	vmovss	%xmm0, (%rax,%rcx,4)
	incl	-28(%rbp)
.LBB3_5:                                # %for.cond4
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %ecx
	cmpl	20(%rax), %ecx
	jge	.LBB3_7
	jmp	.LBB3_6
.LBB3_9:                                # %for.end25
	popq	%rbp
	ret
.Ltmp23:
	.size	mat_set, .Ltmp23-mat_set
	.cfi_endproc

	.globl	jacobi
	.align	16, 0x90
	.type	jacobi,@function
jacobi:                                 # @jacobi
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	24(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movl	12(%rax), %eax
	decl	%eax
	movl	%eax, -124(%rbp)
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	decl	%eax
	movl	%eax, -128(%rbp)
	movq	-80(%rbp), %rax
	movl	20(%rax), %eax
	decl	%eax
	movl	%eax, -132(%rbp)
	movl	$0, -120(%rbp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_20:                               # %for.inc725
                                        #   in Loop: Header=BB4_1 Depth=1
	incl	-120(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
                                        #         Child Loop BB4_7 Depth 4
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_16 Depth 4
	movl	-120(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_21
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -136(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_10:                               # %for.inc668
                                        #   in Loop: Header=BB4_3 Depth=2
	incl	-108(%rbp)
.LBB4_3:                                # %for.cond3
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
                                        #         Child Loop BB4_7 Depth 4
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB4_11
# BB#4:                                 # %for.body5
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	$1, -112(%rbp)
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_9:                                # %for.inc665
                                        #   in Loop: Header=BB4_5 Depth=3
	incl	-112(%rbp)
.LBB4_5:                                # %for.cond6
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_7 Depth 4
	movl	-112(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB4_10
# BB#6:                                 # %for.body8
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	$1, -116(%rbp)
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_8:                                # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=4
	movq	-80(%rbp), %r9
	movl	20(%r9), %esi
	movl	-112(%rbp), %r15d
	leal	1(%r15), %ecx
	imull	%esi, %ecx
	movl	16(%r9), %edi
	movl	-108(%rbp), %r13d
	movl	%r13d, %r12d
	imull	%edi, %r12d
	imull	%esi, %r12d
	leal	(%r12,%rcx), %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %eax
	leal	1(%rax,%rdx), %ebx
	movslq	%ebx, %rbx
	leal	1(%r13), %r8d
	imull	%edi, %r8d
	imull	%esi, %r8d
	movq	(%r9), %r9
	vmovss	(%r9,%rbx,4), %xmm1
	leal	-1(%r13), %ebx
	imull	%edi, %ebx
	leal	(%r8,%rcx), %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	vmovss	(%r9,%rdx,4), %xmm0
	movl	%r15d, %r14d
	imull	%esi, %r14d
	leal	(%r8,%r14), %edi
	movl	%edi, -152(%rbp)        # 4-byte Spill
	leal	1(%rax,%rdi), %edx
	movl	%edi, %r10d
	movslq	%edx, %rdx
	vmovss	(%r9,%rdx,4), %xmm3
	imull	%esi, %ebx
	leal	-1(%r15), %edi
	imull	%esi, %edi
	leal	(%r12,%rdi), %esi
	leal	1(%rax,%rsi), %edx
	movl	%esi, %r11d
	movslq	%edx, %rdx
	vsubss	(%r9,%rdx,4), %xmm1, %xmm2
	leal	(%rbx,%r14), %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	leal	1(%rax,%rdx), %edx
	movslq	%edx, %rdx
	vsubss	(%r9,%rdx,4), %xmm3, %xmm1
	addl	%edi, %r8d
	addl	%eax, %r8d
	movslq	%r8d, %rdx
	vsubss	(%r9,%rdx,4), %xmm0, %xmm0
	addl	%ebx, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	vsubss	(%r9,%rcx,4), %xmm0, %xmm0
	leal	-1(%rax,%r10), %ecx
	movslq	%ecx, %rcx
	vsubss	(%r9,%rcx,4), %xmm1, %xmm1
	movl	-148(%rbp), %ecx        # 4-byte Reload
	leal	-1(%rax,%rcx), %ecx
	movslq	%ecx, %rcx
	vsubss	(%r9,%rcx,4), %xmm2, %xmm2
	addl	%ebx, %edi
	movq	-56(%rbp), %r10
	movl	16(%r10), %ecx
	movl	%r13d, %ebx
	imull	%ecx, %ebx
	imull	12(%r10), %ecx
	movl	20(%r10), %edx
	imull	%edx, %ecx
	imull	%edx, %ebx
	leal	(%rbx,%rcx,2), %r8d
	addl	%ebx, %ecx
	imull	%r15d, %edx
	addl	%edx, %ecx
	addl	%edx, %ebx
	addl	%r8d, %edx
	leal	-1(%rax,%r11), %esi
	movslq	%esi, %rsi
	vaddss	(%r9,%rsi,4), %xmm2, %xmm4
	movl	-156(%rbp), %r8d        # 4-byte Reload
	leal	-1(%rax,%r8), %esi
	movslq	%esi, %rsi
	vaddss	(%r9,%rsi,4), %xmm1, %xmm3
	addl	%eax, %edi
	movslq	%edi, %rsi
	vaddss	(%r9,%rsi,4), %xmm0, %xmm5
	addl	%eax, %edx
	movslq	%edx, %rdi
	movq	(%r10), %rdx
	vmovss	(%rdx,%rdi,4), %xmm0
	addl	%eax, %ebx
	movslq	%ebx, %rsi
	vmovss	(%rdx,%rsi,4), %xmm2
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	vmovss	(%rdx,%rcx,4), %xmm1
	movq	-64(%rbp), %rdx
	movl	16(%rdx), %esi
	movl	%r13d, %ecx
	imull	%esi, %ecx
	imull	12(%rdx), %esi
	movl	20(%rdx), %edi
	imull	%edi, %esi
	imull	%edi, %ecx
	imull	%r15d, %edi
	leal	(%rcx,%rsi,2), %ebx
	addl	%edi, %ebx
	addl	%ecx, %esi
	addl	%edi, %ecx
	addl	%edi, %esi
	addl	%r12d, %r14d
	addl	%eax, %ebx
	movslq	%ebx, %rdi
	movq	(%rdx), %rdx
	vmulss	(%rdx,%rdi,4), %xmm3, %xmm3
	addl	%eax, %esi
	movslq	%esi, %rsi
	vmulss	(%rdx,%rsi,4), %xmm4, %xmm4
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	-96(%rbp), %r12
	vmulss	(%rdx,%rcx,4), %xmm5, %xmm5
	movl	16(%r12), %ecx
	imull	%r13d, %ecx
	movl	20(%r12), %edi
	imull	%edi, %ecx
	imull	%r15d, %edi
	addl	%ecx, %edi
	movq	-72(%rbp), %rdx
	movl	20(%rdx), %esi
	imull	%esi, %r15d
	movl	16(%rdx), %ecx
	imull	%ecx, %r13d
	imull	%esi, %r13d
	leal	(%r13,%r15), %ebx
	addl	%eax, %ebx
	movslq	%ebx, %rbx
	movq	(%rdx), %r10
	vmovss	(%r10,%rbx,4), %xmm7
	movl	-152(%rbp), %ebx        # 4-byte Reload
	addl	%eax, %ebx
	movslq	%ebx, %rbx
	vmulss	(%r9,%rbx,4), %xmm2, %xmm2
	imull	12(%rdx), %ecx
	leal	1(%rax,%r14), %edx
	movslq	%edx, %rdx
	vmulss	(%r9,%rdx,4), %xmm0, %xmm6
	movl	-148(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movslq	%edx, %rdx
	vmulss	(%r9,%rdx,4), %xmm1, %xmm1
	movl	%r8d, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	vmulss	(%r9,%rdx,4), %xmm7, %xmm0
	addl	%eax, %edi
	leal	-1(%rax,%r14), %ebx
	imull	%esi, %ecx
	leal	(%rcx,%r13), %edx
	addl	%r15d, %edx
	movslq	%ebx, %rsi
	movslq	%edi, %r8
	movq	(%r12), %rdi
	vaddss	%xmm1, %xmm2, %xmm1
	vaddss	%xmm6, %xmm1, %xmm1
	vaddss	%xmm5, %xmm1, %xmm1
	vaddss	%xmm4, %xmm1, %xmm1
	vaddss	%xmm3, %xmm1, %xmm1
	leal	(%r13,%rcx,2), %ecx
	addl	%r15d, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	vmovss	(%r10,%rcx,4), %xmm2
	vaddss	%xmm0, %xmm1, %xmm0
	vmulss	(%r9,%rsi,4), %xmm2, %xmm1
	addl	%eax, %edx
	movslq	%edx, %rcx
	vmovss	(%r10,%rcx,4), %xmm2
	movl	%r11d, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	vmulss	(%r9,%rax,4), %xmm2, %xmm2
	vaddss	%xmm2, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	(%rdi,%r8,4), %xmm0, %xmm0
	vmovss	%xmm0, -140(%rbp)
	movq	-56(%rbp), %r8
	movl	16(%r8), %esi
	movl	-108(%rbp), %eax
	movl	%eax, %ecx
	imull	%esi, %ecx
	movl	20(%r8), %edx
	imull	%edx, %ecx
	imull	12(%r8), %esi
	imull	%edx, %esi
	leal	(%rsi,%rsi,2), %esi
	addl	%ecx, %esi
	movl	-112(%rbp), %ebx
	imull	%ebx, %edx
	movq	-88(%rbp), %r10
	addl	%esi, %edx
	movl	20(%r10), %ecx
	movl	%ebx, %esi
	imull	%ecx, %esi
	movl	16(%r10), %edi
	imull	%eax, %edi
	imull	%ecx, %edi
	movq	-80(%rbp), %rcx
	movl	-116(%rbp), %r9d
	addl	%esi, %edi
	addl	%r9d, %edx
	movl	20(%rcx), %esi
	imull	%esi, %ebx
	imull	16(%rcx), %eax
	imull	%esi, %eax
	movq	(%r10), %r10
	movq	(%rcx), %rcx
	movq	(%r8), %rsi
	movslq	%edx, %rdx
	vmulss	(%rsi,%rdx,4), %xmm0, %xmm0
	addl	%ebx, %eax
	addl	%r9d, %eax
	movslq	%eax, %rax
	vsubss	(%rcx,%rax,4), %xmm0, %xmm0
	addl	%r9d, %edi
	movslq	%edi, %rax
	vmulss	(%r10,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -144(%rbp)
	vmulss	%xmm0, %xmm0, %xmm0
	vaddss	-136(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -136(%rbp)
	movq	-80(%rbp), %rdx
	movl	20(%rdx), %esi
	movl	-112(%rbp), %ebx
	movl	%ebx, %eax
	imull	%esi, %eax
	movl	-108(%rbp), %ecx
	movl	16(%rdx), %edi
	imull	%ecx, %edi
	imull	%esi, %edi
	addl	%eax, %edi
	movl	-116(%rbp), %esi
	addl	%esi, %edi
	movslq	%edi, %r8
	movq	-104(%rbp), %rdi
	movl	20(%rdi), %eax
	movq	(%rdx), %rdx
	vmovss	omega(%rip), %xmm0
	vmulss	-144(%rbp), %xmm0, %xmm0
	vaddss	(%rdx,%r8,4), %xmm0, %xmm0
	imull	%eax, %ebx
	imull	16(%rdi), %ecx
	imull	%eax, %ecx
	addl	%ebx, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rax
	movq	(%rdi), %rcx
	vmovss	%xmm0, (%rcx,%rax,4)
	incl	-116(%rbp)
.LBB4_7:                                # %for.cond9
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        #       Parent Loop BB4_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-116(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_9
	jmp	.LBB4_8
	.align	16, 0x90
.LBB4_11:                               # %for.end670
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, -108(%rbp)
	jmp	.LBB4_12
	.align	16, 0x90
.LBB4_19:                               # %for.inc722
                                        #   in Loop: Header=BB4_12 Depth=2
	incl	-108(%rbp)
.LBB4_12:                               # %for.cond671
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #         Child Loop BB4_16 Depth 4
	movl	-108(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB4_20
# BB#13:                                # %for.body673
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	$1, -112(%rbp)
	jmp	.LBB4_14
	.align	16, 0x90
.LBB4_18:                               # %for.inc719
                                        #   in Loop: Header=BB4_14 Depth=3
	incl	-112(%rbp)
.LBB4_14:                               # %for.cond674
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_16 Depth 4
	movl	-112(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB4_19
# BB#15:                                # %for.body676
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	$1, -116(%rbp)
	jmp	.LBB4_16
	.align	16, 0x90
.LBB4_17:                               # %for.inc716
                                        #   in Loop: Header=BB4_16 Depth=4
	movq	-104(%rbp), %rdx
	movl	20(%rdx), %esi
	movl	-112(%rbp), %ebx
	movl	%ebx, %eax
	imull	%esi, %eax
	movl	-108(%rbp), %ecx
	movl	16(%rdx), %edi
	imull	%ecx, %edi
	imull	%esi, %edi
	addl	%eax, %edi
	movl	-116(%rbp), %esi
	addl	%esi, %edi
	movslq	%edi, %r8
	movq	-80(%rbp), %rdi
	movl	20(%rdi), %eax
	movq	(%rdx), %rdx
	vmovss	(%rdx,%r8,4), %xmm0
	imull	%eax, %ebx
	imull	16(%rdi), %ecx
	imull	%eax, %ecx
	addl	%ebx, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rax
	movq	(%rdi), %rcx
	vmovss	%xmm0, (%rcx,%rax,4)
	incl	-116(%rbp)
.LBB4_16:                               # %for.cond677
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        #       Parent Loop BB4_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-116(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_18
	jmp	.LBB4_17
.LBB4_21:                               # %for.end727
	vmovss	-136(%rbp), %xmm0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp35:
	.size	jacobi, .Ltmp35-jacobi
	.cfi_endproc

	.globl	clearMat
	.align	16, 0x90
	.type	clearMat,@function
clearMat:                               # @clearMat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, (%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp41:
	.size	clearMat, .Ltmp41-clearMat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4629981891913580544     # double 34
	.text
	.globl	fflop
	.align	16, 0x90
	.type	fflop,@function
fflop:                                  # @fflop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	addl	$-2, %edx
	vcvtsi2sdl	%edx, %xmm0, %xmm0
	movl	-8(%rbp), %eax
	addl	$-2, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	movl	-4(%rbp), %eax
	addl	$-2, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	.LCPI6_0(%rip), %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp47:
	.size	fflop, .Ltmp47-fflop
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4517329193108106637     # double 1.0E-6
	.text
	.globl	mflops
	.align	16, 0x90
	.type	mflops,@function
mflops:                                 # @mflops
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	%xmm1, -24(%rbp)
	vdivsd	-16(%rbp), %xmm1, %xmm0
	vcvtsi2sdl	-4(%rbp), %xmm0, %xmm1
	vmulsd	.LCPI7_0(%rip), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp53:
	.size	mflops, .Ltmp53-mflops
	.cfi_endproc

	.globl	set_param
	.align	16, 0x90
	.type	set_param,@function
set_param:                              # @set_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rsi, %rdi
	movl	$.L.str4, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	movl	$.L.str5, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_2
# BB#3:                                 # %if.end
	movq	-16(%rbp), %rdi
	movl	$.L.str6, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_5
# BB#4:                                 # %lor.lhs.false7
	movq	-16(%rbp), %rdi
	movl	$.L.str7, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_5
# BB#6:                                 # %if.end14
	movq	-16(%rbp), %rdi
	movl	$.L.str8, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_8
# BB#7:                                 # %lor.lhs.false17
	movq	-16(%rbp), %rdi
	movl	$.L.str9, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_8
# BB#9:                                 # %if.end24
	movq	-16(%rbp), %rdi
	movl	$.L.str10, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_11
# BB#10:                                # %lor.lhs.false27
	movq	-16(%rbp), %rdi
	movl	$.L.str11, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_11
# BB#12:                                # %if.end34
	movq	-16(%rbp), %rdi
	movl	$.L.str12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_14
# BB#13:                                # %lor.lhs.false37
	movq	-16(%rbp), %rdi
	movl	$.L.str13, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB8_16
.LBB8_14:                               # %if.then40
	movq	-8(%rbp), %rax
	movl	$512, (%rax)            # imm = 0x200
	movq	-8(%rbp), %rax
	movl	$512, 4(%rax)           # imm = 0x200
	movq	-8(%rbp), %rax
	movl	$1024, 8(%rax)          # imm = 0x400
	jmp	.LBB8_15
.LBB8_2:                                # %if.then
	movq	-8(%rbp), %rax
	movl	$32, (%rax)
	movq	-8(%rbp), %rax
	movl	$32, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$64, 8(%rax)
	jmp	.LBB8_15
.LBB8_5:                                # %if.then10
	movq	-8(%rbp), %rax
	movl	$64, (%rax)
	movq	-8(%rbp), %rax
	movl	$64, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$128, 8(%rax)
	jmp	.LBB8_15
.LBB8_8:                                # %if.then20
	movq	-8(%rbp), %rax
	movl	$128, (%rax)
	movq	-8(%rbp), %rax
	movl	$128, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$256, 8(%rax)           # imm = 0x100
	jmp	.LBB8_15
.LBB8_11:                               # %if.then30
	movq	-8(%rbp), %rax
	movl	$256, (%rax)            # imm = 0x100
	movq	-8(%rbp), %rax
	movl	$256, 4(%rax)           # imm = 0x100
	movq	-8(%rbp), %rax
	movl	$512, 8(%rax)           # imm = 0x200
.LBB8_15:                               # %return
	addq	$16, %rsp
	popq	%rbp
	ret
.LBB8_16:                               # %if.else
	movl	$.L.str14, %edi
	xorb	%al, %al
	callq	printf
	movl	$6, %edi
	callq	exit
.Ltmp59:
	.size	set_param, .Ltmp59-set_param
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	second
	.align	16, 0x90
	.type	second,@function
second:                                 # @second
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	cmpl	$0, second.base_sec(%rip)
	jne	.LBB9_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, second.base_usec(%rip)
	je	.LBB9_2
.LBB9_3:                                # %if.else
	movslq	second.base_usec(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%rcx, %rdx
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vdivsd	.LCPI9_0(%rip), %xmm0, %xmm0
	movslq	second.base_sec(%rip), %rcx
	subq	%rcx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
.LBB9_4:                                # %if.end
	vmovsd	-24(%rbp), %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
.LBB9_2:                                # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, second.base_sec(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, second.base_usec(%rip)
	movq	$0, -24(%rbp)
	jmp	.LBB9_4
.Ltmp65:
	.size	second, .Ltmp65-second
	.cfi_endproc

	.type	omega,@object           # @omega
	.data
	.globl	omega
	.align	4
omega:
	.long	1061997773              # float 0.80000001
	.size	omega, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "mimax = %d mjmax = %d mkmax = %d\n"
	.size	.L.str, 34

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "imax = %d jmax = %d kmax =%d\n"
	.size	.L.str1, 30

	.type	p,@object               # @p
	.comm	p,24,8
	.type	bnd,@object             # @bnd
	.comm	bnd,24,8
	.type	wrk1,@object            # @wrk1
	.comm	wrk1,24,8
	.type	wrk2,@object            # @wrk2
	.comm	wrk2,24,8
	.type	a,@object               # @a
	.comm	a,24,8
	.type	b,@object               # @b
	.comm	b,24,8
	.type	c,@object               # @c
	.comm	c,24,8
	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 " Loop executed for %d times\n"
	.size	.L.str2, 29

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 " Gosa : %e \n"
	.size	.L.str3, 13

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "XS"
	.size	.L.str4, 3

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "xs"
	.size	.L.str5, 3

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "S"
	.size	.L.str6, 2

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "s"
	.size	.L.str7, 2

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "M"
	.size	.L.str8, 2

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "m"
	.size	.L.str9, 2

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "L"
	.size	.L.str10, 2

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "l"
	.size	.L.str11, 2

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "XL"
	.size	.L.str12, 3

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "xl"
	.size	.L.str13, 3

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "Invalid input character !!\n"
	.size	.L.str14, 28

	.type	second.base_sec,@object # @second.base_sec
	.local	second.base_sec
	.comm	second.base_sec,4,4
	.type	second.base_usec,@object # @second.base_usec
	.local	second.base_usec
	.comm	second.base_usec,4,4

	.section	".note.GNU-stack","",@progbits
