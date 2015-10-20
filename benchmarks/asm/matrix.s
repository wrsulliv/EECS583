	.file	"<stdin>"
	.text
	.globl	mkmatrix
	.align	16, 0x90
	.type	mkmatrix,@function
mkmatrix:                               # @mkmatrix
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -20(%rbp)
	movslq	-4(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	movl	$0, -12(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_5:                                # %for.inc14
                                        #   in Loop: Header=BB0_1 Depth=1
	incl	-12(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-8(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	-32(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movl	$0, -16(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-20(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movslq	-12(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	incl	-16(%rbp)
.LBB0_3:                                # %for.cond5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_5
	jmp	.LBB0_4
.LBB0_6:                                # %for.end16
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	mkmatrix, .Ltmp5-mkmatrix
	.cfi_endproc

	.globl	zeromatrix
	.align	16, 0x90
	.type	zeromatrix,@function
zeromatrix:                             # @zeromatrix
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
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_5:                                # %for.inc6
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	-20(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -24(%rbp)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-24(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	incl	-24(%rbp)
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB1_5
	jmp	.LBB1_4
.LBB1_6:                                # %for.end8
	popq	%rbp
	ret
.Ltmp11:
	.size	zeromatrix, .Ltmp11-zeromatrix
	.cfi_endproc

	.globl	freematrix
	.align	16, 0x90
	.type	freematrix,@function
freematrix:                             # @freematrix
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	free
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	decl	-4(%rbp)
	jns	.LBB2_2
# BB#3:                                 # %while.end
	movq	-16(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	freematrix, .Ltmp17-freematrix
	.cfi_endproc

	.globl	mmult
	.align	16, 0x90
	.type	mmult,@function
mmult:                                  # @mmult
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_8:                                # %for.inc20
                                        #   in Loop: Header=BB3_1 Depth=1
	incl	-36(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB3_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -40(%rbp)
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_7:                                # %for.inc17
                                        #   in Loop: Header=BB3_3 Depth=2
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-40(%rbp), %rcx
	movl	-48(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	incl	-40(%rbp)
.LBB3_3:                                # %for.cond1
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB3_8
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_6:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=3
	movslq	-44(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-40(%rbp), %rdx
	imull	(%rax,%rdx,4), %ecx
	addl	%ecx, -48(%rbp)
	incl	-44(%rbp)
.LBB3_5:                                # %for.cond4
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB3_7
	jmp	.LBB3_6
.LBB3_9:                                # %for.end22
	movq	-32(%rbp), %rax
	popq	%rbp
	ret
.Ltmp23:
	.size	mmult, .Ltmp23-mmult
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$3000000, %eax          # imm = 0x2DC6C0
	cmpl	$2, -8(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB4_2:                                # %cond.end
	movl	%eax, -24(%rbp)
	movl	$10, %edi
	movl	$10, %esi
	callq	mkmatrix
	movq	%rax, -32(%rbp)
	movl	$10, %edi
	movl	$10, %esi
	callq	mkmatrix
	movq	%rax, -40(%rbp)
	movl	$10, %edi
	movl	$10, %esi
	callq	mkmatrix
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_4:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	$10, %edi
	movl	$10, %esi
	callq	mmult
	movq	%rax, -48(%rbp)
	incl	-20(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB4_4
# BB#5:                                 # %for.end
	movq	-48(%rbp), %rax
	movq	32(%rax), %rcx
	movl	16(%rcx), %r8d
	movq	24(%rax), %rcx
	movl	8(%rcx), %ecx
	movq	(%rax), %rsi
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	movl	(%rsi), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movq	-32(%rbp), %rsi
	movl	$10, %edi
	callq	freematrix
	movq	-40(%rbp), %rsi
	movl	$10, %edi
	callq	freematrix
	movq	-48(%rbp), %rsi
	movl	$10, %edi
	callq	freematrix
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp29:
	.size	main, .Ltmp29-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d %d %d %d\n"
	.size	.L.str, 13


	.section	".note.GNU-stack","",@progbits
