	.file	"<stdin>"
	.text
	.globl	emit
	.align	16, 0x90
	.type	emit,@function
emit:                                   # @emit
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
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	%xmm1, -8(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vaddsd	accum(%rip), %xmm0, %xmm0
	vmovsd	accum+8(%rip), %xmm2
	vmovsd	%xmm0, accum(%rip)
	vaddsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, accum+8(%rip)
	popq	%rbp
	ret
.Ltmp5:
	.size	emit, .Ltmp5-emit
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4616189618054758400     # double 4
.LCPI1_1:
	.quad	4662219572839972864     # double 5000
.LCPI1_2:
	.quad	-4611686018427387904    # double -2
.LCPI1_3:
	.quad	4611686018427387904     # double 2
	.text
	.globl	mandel
	.align	16, 0x90
	.type	mandel,@function
mandel:                                 # @mandel
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
	subq	$112, %rsp
	movl	$0, -20(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_9:                                # %for.inc37
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	-20(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	cmpl	$4999, -20(%rbp)        # imm = 0x1387
	jg	.LBB1_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -24(%rbp)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_8:                                # %for.inc34
                                        #   in Loop: Header=BB1_3 Depth=2
	vmovsd	-64(%rbp), %xmm0
	vmovsd	-56(%rbp), %xmm1
	vmovsd	%xmm0, -80(%rbp)
	vmovsd	%xmm1, -72(%rbp)
	vmovsd	-80(%rbp), %xmm0
	callq	emit
	incl	-24(%rbp)
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	cmpl	$4999, -24(%rbp)        # imm = 0x1387
	jg	.LBB1_9
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB1_3 Depth=2
	vcvtsi2sdl	-24(%rbp), %xmm0, %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm2
	vmulsd	%xmm2, %xmm0, %xmm0
	vmovsd	.LCPI1_1(%rip), %xmm3
	vdivsd	%xmm3, %xmm0, %xmm0
	vcvtsi2sdl	-20(%rbp), %xmm0, %xmm1
	vmulsd	%xmm2, %xmm1, %xmm1
	vdivsd	%xmm3, %xmm1, %xmm1
	vmovsd	.LCPI1_2(%rip), %xmm2
	vaddsd	%xmm2, %xmm1, %xmm1
	vsubsd	%xmm0, %xmm2, %xmm0
	vxorps	%xmm3, %xmm3, %xmm3
	vmulsd	%xmm3, %xmm0, %xmm2
	vsubsd	%xmm3, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovsd	%xmm1, -48(%rbp)
	vaddsd	%xmm3, %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=3
	incl	-28(%rbp)
.LBB1_5:                                # %for.cond9
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$9, -28(%rbp)
	jg	.LBB1_8
# BB#6:                                 # %for.body12
                                        #   in Loop: Header=BB1_5 Depth=3
	vmovsd	-64(%rbp), %xmm0
	vmovsd	-56(%rbp), %xmm1
	vmulsd	%xmm1, %xmm1, %xmm2
	vmulsd	%xmm0, %xmm0, %xmm3
	vsubsd	%xmm2, %xmm3, %xmm2
	vaddsd	-48(%rbp), %xmm2, %xmm2
	vmulsd	%xmm0, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm1
	vmovsd	%xmm2, -64(%rbp)
	vmovsd	%xmm1, -56(%rbp)
	vmovsd	-64(%rbp), %xmm0
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	-8(%rbp), %xmm0
	callq	hypot
	vucomisd	.LCPI1_3(%rip), %xmm0
	jae	.LBB1_8
	jmp	.LBB1_7
.LBB1_10:                               # %for.end39
	addq	$112, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	mandel, .Ltmp11-mandel
	.cfi_endproc

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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	mandel
	vcvttsd2si	accum(%rip), %esi
	vmovsd	accum+8(%rip), %xmm0
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	main, .Ltmp17-main
	.cfi_endproc

	.type	accum,@object           # @accum
	.comm	accum,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d\n"
	.size	.L.str, 4


	.section	".note.GNU-stack","",@progbits
