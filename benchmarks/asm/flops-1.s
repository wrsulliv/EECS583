	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4595585649759538381    # double -25.2
.LCPI0_1:
	.quad	4158027847206421152     # double 1.0E-30
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
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	movq	$15625, -56(%rbp)       # imm = 0x3D09
	movabsq	$4634204016564240384, %rax # imm = 0x4050000000000000
	movq	%rax, T+8(%rip)
	movabsq	$4617315517961601024, %r8 # imm = 0x4014000000000000
	movabsq	$4616189618054758400, %rcx # imm = 0x4010000000000000
	movabsq	$4613937818241073152, %rdx # imm = 0x4008000000000000
	movabsq	$4611686018427387904, %rsi # imm = 0x4000000000000000
	movabsq	$4614256656552045848, %rdi # imm = 0x400921FB54442D18
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, TLimit(%rip)
	movq	$512000000, -64(%rbp)   # imm = 0x1E848000
	movq	%rdi, piref(%rip)
	movq	%rax, one(%rip)
	movq	%rsi, two(%rip)
	movq	%rdx, three(%rip)
	movq	%rcx, four(%rip)
	movq	%r8, five(%rip)
	vmovsd	one(%rip), %xmm0
	vmovsd	%xmm0, scale(%rip)
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	imulq	$10000, -56(%rbp), %rax # imm = 0x2710
	movq	%rax, -88(%rbp)
	movq	$0, sa(%rip)
	movq	-88(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -88(%rbp)
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	one(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	vmovsd	one(%rip), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movq	$1, -72(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	vmovsd	-32(%rbp), %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	vmulsd	D3(%rip), %xmm0, %xmm1
	vaddsd	D2(%rip), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm1
	vmovsd	D1(%rip), %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vmulsd	E3(%rip), %xmm0, %xmm3
	vaddsd	E2(%rip), %xmm3, %xmm3
	vmulsd	%xmm3, %xmm0, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm0, %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
	vaddsd	-16(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	incq	-72(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	decq	%rax
	cmpq	%rax, -72(%rbp)
	jle	.LBB0_2
# BB#3:                                 # %for.end
	vmovsd	D1(%rip), %xmm1
	vaddsd	D2(%rip), %xmm1, %xmm0
	vaddsd	D3(%rip), %xmm0, %xmm0
	vaddsd	one(%rip), %xmm1, %xmm1
	vaddsd	E2(%rip), %xmm1, %xmm1
	vaddsd	E3(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, sa(%rip)
	vmovsd	D1(%rip), %xmm0
	vmovsd	%xmm0, sb(%rip)
	vaddsd	sa(%rip), %xmm0, %xmm1
	vmovsd	two(%rip), %xmm0
	vmulsd	-16(%rbp), %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm1
	vmulsd	-48(%rbp), %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, sa(%rip)
	vmovsd	one(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, sb(%rip)
	vcvttsd2si	%xmm0, %rax
	imulq	$40000, %rax, %rax      # imm = 0x9C40
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	scale(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rax
	movq	%rax, -88(%rbp)
	vmovsd	sb(%rip), %xmm0
	vaddsd	.LCPI0_0(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, sc(%rip)
	vmulsd	.LCPI0_1(%rip), %xmm0, %xmm0
	movl	$.L.str4, %edi
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	movb	$3, %al
	callq	printf
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.type	A0,@object              # @A0
	.data
	.globl	A0
	.align	8
A0:
	.quad	4607182418800017408     # double 1
	.size	A0, 8

	.type	A1,@object              # @A1
	.globl	A1
	.align	8
A1:
	.quad	-4628199217061062907    # double -0.1666666666671334
	.size	A1, 8

	.type	A2,@object              # @A2
	.globl	A2
	.align	8
A2:
	.quad	4575957461386324387     # double 0.00833333333809067
	.size	A2, 8

	.type	A3,@object              # @A3
	.globl	A3
	.align	8
A3:
	.quad	4551452161186318961     # double 1.98412715551283E-4
	.size	A3, 8

	.type	A4,@object              # @A4
	.globl	A4
	.align	8
A4:
	.quad	4523617278161991014     # double 2.7557589750762E-6
	.size	A4, 8

	.type	A5,@object              # @A5
	.globl	A5
	.align	8
A5:
	.quad	4493162352400180262     # double 2.507059876207E-8
	.size	A5, 8

	.type	A6,@object              # @A6
	.globl	A6
	.align	8
A6:
	.quad	4460408574331961766     # double 1.64105986683E-10
	.size	A6, 8

	.type	B0,@object              # @B0
	.globl	B0
	.align	8
B0:
	.quad	4607182418800017408     # double 1
	.size	B0, 8

	.type	B1,@object              # @B1
	.globl	B1
	.align	8
B1:
	.quad	-4620693217682161322    # double -0.4999999999982
	.size	B1, 8

	.type	B2,@object              # @B2
	.globl	B2
	.align	8
B2:
	.quad	4586165620536050212     # double 0.04166666664651
	.size	B2, 8

	.type	B3,@object              # @B3
	.globl	B3
	.align	8
B3:
	.quad	-4659324094869183210    # double -0.001388888805755
	.size	B3, 8

	.type	B4,@object              # @B4
	.globl	B4
	.align	8
B4:
	.quad	4537941314664410551     # double 2.4801428034E-5
	.size	B4, 8

	.type	B5,@object              # @B5
	.globl	B5
	.align	8
B5:
	.quad	-4714569847609107570    # double -2.754213324E-7
	.size	B5, 8

	.type	B6,@object              # @B6
	.globl	B6
	.align	8
B6:
	.quad	4476955928576333866     # double 2.0189405E-9
	.size	B6, 8

	.type	C0,@object              # @C0
	.globl	C0
	.align	8
C0:
	.quad	4607182418800017408     # double 1
	.size	C0, 8

	.type	C1,@object              # @C1
	.globl	C1
	.align	8
C1:
	.quad	4607182418770113506     # double 0.9999999966799999
	.size	C1, 8

	.type	C2,@object              # @C2
	.globl	C2
	.align	8
C2:
	.quad	4602678818303091896     # double 0.49999995173
	.size	C2, 8

	.type	C3,@object              # @C3
	.globl	C3
	.align	8
C3:
	.quad	4595172833331996949     # double 0.16666704243
	.size	C3, 8

	.type	C4,@object              # @C4
	.globl	C4
	.align	8
C4:
	.quad	4586165646998984008     # double 0.04166685027
	.size	C4, 8

	.type	C5,@object              # @C5
	.globl	C5
	.align	8
C5:
	.quad	4575953652716999180     # double 0.008326726350000001
	.size	C5, 8

	.type	C6,@object              # @C6
	.globl	C6
	.align	8
C6:
	.quad	4564137743291747333     # double 0.00140836136
	.size	C6, 8

	.type	C7,@object              # @C7
	.globl	C7
	.align	8
C7:
	.quad	4550536094195072826     # double 1.7358267E-4
	.size	C7, 8

	.type	C8,@object              # @C8
	.globl	C8
	.align	8
C8:
	.quad	4540926964768485839     # double 3.931683E-5
	.size	C8, 8

	.type	D1,@object              # @D1
	.globl	D1
	.align	8
D1:
	.quad	4585925428481590132     # double 0.03999999946405
	.size	D1, 8

	.type	D2,@object              # @D2
	.globl	D2
	.align	8
D2:
	.quad	4561993660426952041     # double 9.6E-4
	.size	D2, 8

	.type	D3,@object              # @D3
	.globl	D3
	.align	8
D3:
	.quad	4518430227020687144     # double 1.233153E-6
	.size	D3, 8

	.type	E2,@object              # @E2
	.globl	E2
	.align	8
E2:
	.quad	4557490060799581545     # double 4.8E-4
	.size	E2, 8

	.type	E3,@object              # @E3
	.globl	E3
	.align	8
E3:
	.quad	4511364161231096202     # double 4.11051E-7
	.size	E3, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "\n"
	.size	.L.str, 2

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\n\n"
	.size	.L.str1, 58

	.type	T,@object               # @T
	.comm	T,288,16
	.type	TLimit,@object          # @TLimit
	.comm	TLimit,8,8
	.type	piref,@object           # @piref
	.comm	piref,8,8
	.type	one,@object             # @one
	.comm	one,8,8
	.type	two,@object             # @two
	.comm	two,8,8
	.type	three,@object           # @three
	.comm	three,8,8
	.type	four,@object            # @four
	.comm	four,8,8
	.type	five,@object            # @five
	.comm	five,8,8
	.type	scale,@object           # @scale
	.comm	scale,8,8
	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "   Module     Error        RunTime      MFLOPS\n"
	.size	.L.str2, 48

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "                            (usec)\n"
	.size	.L.str3, 36

	.type	sa,@object              # @sa
	.comm	sa,8,8
	.type	sb,@object              # @sb
	.comm	sb,8,8
	.type	sc,@object              # @sc
	.comm	sc,8,8
	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "     1   %13.4lf  %10.4lf  %10.4lf\n"
	.size	.L.str4, 36

	.type	nulltime,@object        # @nulltime
	.comm	nulltime,8,8
	.type	TimeArray,@object       # @TimeArray
	.comm	TimeArray,24,16
	.type	sd,@object              # @sd
	.comm	sd,8,8
	.type	piprg,@object           # @piprg
	.comm	piprg,8,8
	.type	pierr,@object           # @pierr
	.comm	pierr,8,8

	.section	".note.GNU-stack","",@progbits
