	.file	"<stdin>"
	.text
	.globl	Initrand
	.align	16, 0x90
	.type	Initrand,@function
Initrand:                               # @Initrand
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
	movq	$74755, seed(%rip)      # imm = 0x12403
	popq	%rbp
	ret
.Ltmp5:
	.size	Initrand, .Ltmp5-Initrand
	.cfi_endproc

	.globl	Rand
	.align	16, 0x90
	.type	Rand,@function
Rand:                                   # @Rand
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
	imull	$1309, seed(%rip), %eax # imm = 0x51D
	addl	$13849, %eax            # imm = 0x3619
	movzwl	%ax, %eax
	movq	%rax, seed(%rip)
	movl	seed(%rip), %eax
	popq	%rbp
	ret
.Ltmp11:
	.size	Rand, .Ltmp11-Rand
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4613937818241073152     # double 3
	.text
	.globl	rInitmatrix
	.align	16, 0x90
	.type	rInitmatrix,@function
rInitmatrix:                            # @rInitmatrix
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
	movq	%rdi, -8(%rbp)
	movl	$1, -16(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_5:                                # %for.inc8
                                        #   in Loop: Header=BB2_1 Depth=1
	incl	-16(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpl	$40, -16(%rbp)
	jg	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -20(%rbp)
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=2
	callq	Rand
	movslq	%eax, %rax
	imulq	$-2004318071, %rax, %rcx # imm = 0xFFFFFFFF88888889
	shrq	$32, %rcx
	movl	%eax, -12(%rbp)
	movl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	sarl	$6, %edx
	addl	%ecx, %edx
	imull	$120, %edx, %edx
	movslq	-16(%rbp), %rcx
	imulq	$328, %rcx, %rcx        # imm = 0x148
	addq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rsi
	negl	%edx
	leal	-60(%rax,%rdx), %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vdivsd	.LCPI2_0(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	incl	-20(%rbp)
.LBB2_3:                                # %for.cond1
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$40, -20(%rbp)
	jg	.LBB2_5
	jmp	.LBB2_4
.LBB2_6:                                # %for.end10
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	rInitmatrix, .Ltmp17-rInitmatrix
	.cfi_endproc

	.globl	rInnerproduct
	.align	16, 0x90
	.type	rInnerproduct,@function
rInnerproduct:                          # @rInnerproduct
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -36(%rbp)
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-28(%rbp), %rax
	imulq	$328, %rax, %rax        # imm = 0x148
	addq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	vmovsd	(%rax,%rcx,8), %xmm0
	imulq	$328, %rcx, %rax        # imm = 0x148
	addq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vaddsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	incl	-36(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$40, -36(%rbp)
	jle	.LBB3_2
# BB#3:                                 # %for.end
	popq	%rbp
	ret
.Ltmp23:
	.size	rInnerproduct, .Ltmp23-rInnerproduct
	.cfi_endproc

	.globl	Mm
	.align	16, 0x90
	.type	Mm,@function
Mm:                                     # @Mm
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	Initrand
	movl	$rma, %edi
	callq	rInitmatrix
	movl	$rmb, %edi
	callq	rInitmatrix
	movl	$1, -8(%rbp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_5:                                # %for.inc6
                                        #   in Loop: Header=BB4_1 Depth=1
	incl	-8(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	cmpl	$40, -8(%rbp)
	jg	.LBB4_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, -12(%rbp)
	jmp	.LBB4_3
	.align	16, 0x90
.LBB4_4:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movslq	-8(%rbp), %rcx
	imulq	$328, %rcx, %rax        # imm = 0x148
	movslq	-12(%rbp), %r8
	leaq	rmr(%rax,%r8,8), %rdi
	movl	$rma, %esi
	movl	$rmb, %edx
                                        # kill: ECX<def> ECX<kill> RCX<kill>
                                        # kill: R8D<def> R8D<kill> R8<kill>
	callq	rInnerproduct
	incl	-12(%rbp)
.LBB4_3:                                # %for.cond1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$40, -12(%rbp)
	jg	.LBB4_5
	jmp	.LBB4_4
.LBB4_6:                                # %for.end8
	movl	-4(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	imulq	$328, %rax, %rcx        # imm = 0x148
	vmovsd	rmr(%rcx,%rax,8), %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp29:
	.size	Mm, .Ltmp29-Mm
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-8(%rbp), %edi
	callq	Mm
	incl	-8(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -8(%rbp)
	jle	.LBB5_2
# BB#3:                                 # %for.end
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp35:
	.size	main, .Ltmp35-main
	.cfi_endproc

	.type	seed,@object            # @seed
	.comm	seed,8,8
	.type	rma,@object             # @rma
	.comm	rma,13448,16
	.type	rmb,@object             # @rmb
	.comm	rmb,13448,16
	.type	rmr,@object             # @rmr
	.comm	rmr,13448,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%f\n"
	.size	.L.str, 4

	.type	value,@object           # @value
	.comm	value,8,8
	.type	fixed,@object           # @fixed
	.comm	fixed,8,8
	.type	floated,@object         # @floated
	.comm	floated,8,8
	.type	permarray,@object       # @permarray
	.comm	permarray,44,16
	.type	pctr,@object            # @pctr
	.comm	pctr,4,4
	.type	tree,@object            # @tree
	.comm	tree,8,8
	.type	stack,@object           # @stack
	.comm	stack,16,16
	.type	cellspace,@object       # @cellspace
	.comm	cellspace,152,16
	.type	freelist,@object        # @freelist
	.comm	freelist,4,4
	.type	movesdone,@object       # @movesdone
	.comm	movesdone,4,4
	.type	ima,@object             # @ima
	.comm	ima,6724,16
	.type	imb,@object             # @imb
	.comm	imb,6724,16
	.type	imr,@object             # @imr
	.comm	imr,6724,16
	.type	piececount,@object      # @piececount
	.comm	piececount,16,16
	.type	class,@object           # @class
	.comm	class,52,16
	.type	piecemax,@object        # @piecemax
	.comm	piecemax,52,16
	.type	puzzl,@object           # @puzzl
	.comm	puzzl,2048,16
	.type	p,@object               # @p
	.comm	p,26624,16
	.type	n,@object               # @n
	.comm	n,4,4
	.type	kount,@object           # @kount
	.comm	kount,4,4
	.type	sortlist,@object        # @sortlist
	.comm	sortlist,20004,16
	.type	biggest,@object         # @biggest
	.comm	biggest,4,4
	.type	littlest,@object        # @littlest
	.comm	littlest,4,4
	.type	top,@object             # @top
	.comm	top,4,4
	.type	z,@object               # @z
	.comm	z,4112,16
	.type	w,@object               # @w
	.comm	w,4112,16
	.type	e,@object               # @e
	.comm	e,2080,16
	.type	zr,@object              # @zr
	.comm	zr,8,8
	.type	zi,@object              # @zi
	.comm	zi,8,8

	.section	".note.GNU-stack","",@progbits
