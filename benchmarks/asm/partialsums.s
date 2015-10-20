	.file	"<stdin>"
	.text
	.globl	make_vec
	.align	16, 0x90
	.type	make_vec,@function
make_vec:                               # @make_vec
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
	vmovsd	%xmm1, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	vmovsd	-16(%rbp), %xmm0
	vmovsd	%xmm0, 8(%rax)
	vmovaps	-32(%rbp), %xmm0
	popq	%rbp
	ret
.Ltmp5:
	.size	make_vec, .Ltmp5-make_vec
	.cfi_endproc

	.globl	sum_vec
	.align	16, 0x90
	.type	sum_vec,@function
sum_vec:                                # @sum_vec
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
	vmovaps	%xmm0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vaddsd	-8(%rbp), %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp11:
	.size	sum_vec, .Ltmp11-sum_vec
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4611686018427387904     # double 2
.LCPI2_2:
	.quad	-4616189618054758400    # double -1
.LCPI2_3:
	.quad	4604180019048437077     # double 0.6666666666666666
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
	subq	$288, %rsp              # imm = 0x120
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$2500000, -276(%rbp)    # imm = 0x2625A0
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	callq	make_vec
	vmovsd	.LCPI2_0(%rip), %xmm1
	vmovaps	%xmm0, -144(%rbp)
	vmovaps	%xmm1, %xmm0
	callq	make_vec
	vmovsd	.LCPI2_1(%rip), %xmm1
	vmovaps	%xmm0, -160(%rbp)
	vmovaps	%xmm1, %xmm0
	callq	make_vec
	vmovsd	.LCPI2_2(%rip), %xmm1
	vmovaps	%xmm0, -176(%rbp)
	vmovaps	%xmm1, %xmm0
	callq	make_vec
	vmovaps	%xmm0, -208(%rbp)
	vmovsd	.LCPI2_0(%rip), %xmm0
	vmovsd	.LCPI2_1(%rip), %xmm1
	callq	make_vec
	vmovaps	%xmm0, -192(%rbp)
	vmovsd	.LCPI2_0(%rip), %xmm0
	vmovsd	.LCPI2_2(%rip), %xmm1
	callq	make_vec
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	-144(%rbp), %xmm0
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	%xmm0, -96(%rbp)
	vmovaps	%xmm0, -80(%rbp)
	vmovaps	%xmm0, -64(%rbp)
	movq	%rax, -248(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	vmovsd	-248(%rbp), %xmm0
	vsubsd	.LCPI2_0(%rip), %xmm0, %xmm1
	vmovsd	.LCPI2_3(%rip), %xmm0
	callq	pow
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	-248(%rbp), %xmm0
	callq	sqrt
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vaddsd	-32(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	-248(%rbp), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -256(%rbp)
	vmovsd	-248(%rbp), %xmm0
	callq	sin
	vmovsd	%xmm0, -264(%rbp)
	vmovsd	-248(%rbp), %xmm0
	callq	cos
	vmovsd	%xmm0, -272(%rbp)
	vmovsd	-264(%rbp), %xmm0
	vmulsd	-256(%rbp), %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	-272(%rbp), %xmm0
	vmulsd	-256(%rbp), %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	.LCPI2_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vaddsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vaddsd	-248(%rbp), %xmm1, %xmm0
	vmovsd	%xmm0, -248(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	vcvtsi2sdl	-276(%rbp), %xmm0, %xmm0
	vucomisd	-248(%rbp), %xmm0
	jae	.LBB2_2
# BB#3:                                 # %for.end
	vmovapd	-192(%rbp), %xmm0
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_5:                                # %for.body25
                                        #   in Loop: Header=BB2_4 Depth=1
	vmovapd	-160(%rbp), %xmm0
	vmovapd	-224(%rbp), %xmm1
	vaddpd	%xmm0, %xmm1, %xmm2
	vmulpd	%xmm2, %xmm1, %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, -96(%rbp)
	vmovapd	-160(%rbp), %xmm0
	vdivpd	-224(%rbp), %xmm0, %xmm0
	vaddpd	-64(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, -64(%rbp)
	vmovapd	-224(%rbp), %xmm0
	vmulpd	%xmm0, %xmm0, %xmm0
	vmovapd	-160(%rbp), %xmm1
	vdivpd	%xmm0, %xmm1, %xmm0
	vaddpd	-80(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, -80(%rbp)
	vmovapd	-240(%rbp), %xmm0
	vdivpd	-224(%rbp), %xmm0, %xmm0
	vaddpd	-112(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, -112(%rbp)
	vmovapd	-176(%rbp), %xmm0
	vmulpd	-224(%rbp), %xmm0, %xmm0
	vsubpd	-160(%rbp), %xmm0, %xmm0
	vmovapd	-240(%rbp), %xmm1
	vdivpd	%xmm0, %xmm1, %xmm0
	vaddpd	-128(%rbp), %xmm0, %xmm0
	vmovapd	%xmm0, -128(%rbp)
	vmovapd	-224(%rbp), %xmm0
	vaddpd	-176(%rbp), %xmm0, %xmm0
.LBB2_4:                                # %for.end
                                        # =>This Inner Loop Header: Depth=1
	vmovapd	%xmm0, -224(%rbp)
	vcvtsi2sdl	-276(%rbp), %xmm0, %xmm0
	vucomisd	-224(%rbp), %xmm0
	jae	.LBB2_5
# BB#6:                                 # %for.end43
	vmovsd	-24(%rbp), %xmm0
	movl	$.L.str, %edi
	movl	$.L.str1, %esi
	movb	$1, %al
	callq	printf
	vmovsd	-32(%rbp), %xmm0
	movl	$.L.str, %edi
	movl	$.L.str2, %esi
	movb	$1, %al
	callq	printf
	vmovaps	-96(%rbp), %xmm0
	callq	sum_vec
	movl	$.L.str, %edi
	movl	$.L.str3, %esi
	movb	$1, %al
	callq	printf
	vmovsd	-40(%rbp), %xmm0
	movl	$.L.str, %edi
	movl	$.L.str4, %esi
	movb	$1, %al
	callq	printf
	vmovsd	-48(%rbp), %xmm0
	movl	$.L.str, %edi
	movl	$.L.str5, %esi
	movb	$1, %al
	callq	printf
	vmovaps	-64(%rbp), %xmm0
	callq	sum_vec
	movl	$.L.str, %edi
	movl	$.L.str6, %esi
	movb	$1, %al
	callq	printf
	vmovaps	-80(%rbp), %xmm0
	callq	sum_vec
	movl	$.L.str, %edi
	movl	$.L.str7, %esi
	movb	$1, %al
	callq	printf
	vmovaps	-112(%rbp), %xmm0
	callq	sum_vec
	movl	$.L.str, %edi
	movl	$.L.str8, %esi
	movb	$1, %al
	callq	printf
	vmovaps	-128(%rbp), %xmm0
	callq	sum_vec
	movl	$.L.str, %edi
	movl	$.L.str9, %esi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	ret
.Ltmp17:
	.size	main, .Ltmp17-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%.9f\t%s\n"
	.size	.L.str, 9

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "(2/3)^k"
	.size	.L.str1, 8

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "k^-0.5"
	.size	.L.str2, 7

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "1/k(k+1)"
	.size	.L.str3, 9

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "Flint Hills"
	.size	.L.str4, 12

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "Cookson Hills"
	.size	.L.str5, 14

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "Harmonic"
	.size	.L.str6, 9

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "Riemann Zeta"
	.size	.L.str7, 13

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "Alternating Harmonic"
	.size	.L.str8, 21

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "Gregory"
	.size	.L.str9, 8


	.section	".note.GNU-stack","",@progbits
