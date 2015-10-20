	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4652007308841189376     # double 1000
.LCPI0_1:
	.quad	4611686018427387904     # double 2
.LCPI0_2:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4546461098394361986     # double 9.26E-5
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movabsq	$4665101392816373760, %rax # imm = 0x40BDC50000000000
	movq	%rax, spectral_line+8(%rip)
	movabsq	$4664275610105890734, %rax # imm = 0x40BAD5F47AE147AE
	movq	%rax, spectral_line+16(%rip)
	movabsq	$4663937907204047241, %rax # imm = 0x40B9A2D0E5604189
	movq	%rax, spectral_line+24(%rip)
	movabsq	$4663204673685809005, %rax # imm = 0x40B707F1A9FBE76D
	movq	%rax, spectral_line+32(%rip)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movabsq	$4660945225669240947, %rcx # imm = 0x40AF00FCED916873
	movabsq	$4661494419632687153, %rdx # imm = 0x40B0F47A1CAC0831
	movabsq	$4662067118955711955, %rsi # imm = 0x40B2FD5810624DD3
	movabsq	$4662515953895821279, %rdi # imm = 0x40B4958E978D4FDF
	movq	%rdi, spectral_line+40(%rip)
	movq	%rsi, spectral_line+48(%rip)
	movq	%rdx, spectral_line+56(%rip)
	movq	%rcx, spectral_line+64(%rip)
	movl	$1000000, niter(%rip)   # imm = 0xF4240
	movq	%rax, clear_aperture(%rip)
	movw	$4, current_surfaces(%rip)
	movl	$0, -28(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_5:                                # %for.inc13
                                        #   in Loop: Header=BB0_1 Depth=1
	incl	-28(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movswl	current_surfaces(%rip), %eax
	cmpl	%eax, -28(%rbp)
	jge	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movslq	-28(%rbp), %rcx
	movq	%rcx, %rdx
	shlq	$5, %rdx
	movslq	-32(%rbp), %rax
	vmovsd	testcase(%rdx,%rax,8), %xmm0
	leal	1(%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	incl	%eax
	movslq	%eax, %rax
	shlq	$3, %rax
	vmovsd	%xmm0, s(%rax,%rcx,8)
	incl	-32(%rbp)
.LBB0_3:                                # %for.cond2
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -32(%rbp)
	jg	.LBB0_5
	jmp	.LBB0_4
.LBB0_6:                                # %for.end15
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	movl	niter(%rip), %esi
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	movl	niter(%rip), %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vdivsd	.LCPI0_0(%rip), %xmm0, %xmm0
	movl	$.L.str2, %edi
	movb	$1, %al
	callq	printf
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
	movl	$0, itercount(%rip)
	movabsq	$4567911030049346683, %rbx # imm = 0x3F647AE147AE147B
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_11:                               # %for.inc53
                                        #   in Loop: Header=BB0_7 Depth=1
	movw	$0, paraxial(%rip)
	vmovsd	clear_aperture(%rip), %xmm0
	vmovsd	.LCPI0_1(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	movl	$3, %edi
	callq	trace_line
	vmovsd	object_distance(%rip), %xmm0
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	clear_aperture(%rip), %xmm0
	vdivsd	.LCPI0_1(%rip), %xmm0, %xmm0
	movl	$6, %edi
	callq	trace_line
	vmovsd	object_distance(%rip), %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	od_sa+16(%rip), %xmm0
	vsubsd	od_sa(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, aberr_lspher(%rip)
	vmovsd	od_sa+16(%rip), %xmm0
	vmulsd	od_sa+24(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -64(%rbp)        # 8-byte Spill
	vmovsd	od_sa+8(%rip), %xmm0
	callq	sin
	vmulsd	od_sa(%rip), %xmm0, %xmm0
	vmovsd	-64(%rbp), %xmm1        # 8-byte Reload
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	.LCPI0_2(%rip), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, aberr_osc(%rip)
	vmovsd	-48(%rbp), %xmm0
	vsubsd	-56(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, aberr_lchrom(%rip)
	vmovsd	od_sa+8(%rip), %xmm0
	callq	sin
	vmulsd	%xmm0, %xmm0, %xmm1
	vmovsd	.LCPI0_3(%rip), %xmm2
	vdivsd	%xmm1, %xmm2, %xmm1
	vmovsd	%xmm0, max_lspher(%rip)
	vmovsd	%xmm1, max_lspher(%rip)
	movq	%rbx, max_osc(%rip)
	vmovsd	max_lspher(%rip), %xmm0
	vmovsd	%xmm0, max_lchrom(%rip)
	incl	itercount(%rip)
.LBB0_7:                                # %for.cond21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	itercount(%rip), %eax
	cmpl	niter(%rip), %eax
	jge	.LBB0_12
# BB#8:                                 # %for.body24
                                        #   in Loop: Header=BB0_7 Depth=1
	movw	$0, paraxial(%rip)
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_10:                               # %for.inc38
                                        #   in Loop: Header=BB0_9 Depth=2
	vmovsd	clear_aperture(%rip), %xmm0
	vdivsd	.LCPI0_1(%rip), %xmm0, %xmm0
	movl	$4, %edi
	callq	trace_line
	movswq	paraxial(%rip), %rax
	shlq	$4, %rax
	vmovsd	object_distance(%rip), %xmm0
	vmovsd	%xmm0, od_sa(%rax)
	movswq	paraxial(%rip), %rax
	shlq	$4, %rax
	vmovsd	axis_slope_angle(%rip), %xmm0
	vmovsd	%xmm0, od_sa+8(%rax)
	incw	paraxial(%rip)
.LBB0_9:                                # %for.cond25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	paraxial(%rip), %eax
	cmpl	$1, %eax
	jg	.LBB0_11
	jmp	.LBB0_10
.LBB0_12:                               # %for.end55
	vmovsd	od_sa+8(%rip), %xmm1
	vmovsd	od_sa(%rip), %xmm0
	movl	$outarr, %edi
	movl	$.L.str5, %esi
	movl	$.L.str6, %edx
	movb	$2, %al
	callq	sprintf
	vmovsd	od_sa+24(%rip), %xmm1
	vmovsd	od_sa+16(%rip), %xmm0
	movl	$outarr+80, %edi
	movl	$.L.str5, %esi
	movl	$.L.str7, %edx
	movb	$2, %al
	callq	sprintf
	vmovsd	aberr_lspher(%rip), %xmm0
	movl	$outarr+160, %edi
	movl	$.L.str8, %esi
	movb	$1, %al
	callq	sprintf
	vmovsd	max_lspher(%rip), %xmm0
	movl	$outarr+240, %edi
	movl	$.L.str9, %esi
	movb	$1, %al
	callq	sprintf
	vmovsd	aberr_osc(%rip), %xmm0
	movl	$outarr+320, %edi
	movl	$.L.str10, %esi
	movb	$1, %al
	callq	sprintf
	vmovsd	max_osc(%rip), %xmm0
	movl	$outarr+400, %edi
	movl	$.L.str9, %esi
	movb	$1, %al
	callq	sprintf
	vmovsd	aberr_lchrom(%rip), %xmm0
	movl	$outarr+480, %edi
	movl	$.L.str11, %esi
	movb	$1, %al
	callq	sprintf
	vmovsd	max_lchrom(%rip), %xmm0
	movl	$outarr+560, %edi
	movl	$.L.str9, %esi
	movb	$1, %al
	callq	sprintf
	movl	$0, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$32, %ebx
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_21:                               # %for.inc125
                                        #   in Loop: Header=BB0_13 Depth=1
	incl	-28(%rbp)
.LBB0_13:                               # %for.cond64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	cmpl	$7, -28(%rbp)
	jg	.LBB0_22
# BB#14:                                # %for.body67
                                        #   in Loop: Header=BB0_13 Depth=1
	movslq	-28(%rbp), %rax
	movq	refarr(,%rax,8), %rsi
	leaq	(%rax,%rax,4), %rax
	shlq	$4, %rax
	leaq	outarr(%rax), %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_21
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-28(%rbp), %esi
	incl	%esi
	movl	$.L.str12, %edi
	xorb	%al, %al
	callq	printf
	movslq	-28(%rbp), %rax
	movq	refarr(,%rax,8), %rsi
	movl	$.L.str13, %edi
	xorb	%al, %al
	callq	printf
	movslq	-28(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$4, %rax
	leaq	outarr(%rax), %rsi
	movl	$.L.str14, %edi
	xorb	%al, %al
	callq	printf
	movl	$.L.str15, %edi
	xorb	%al, %al
	callq	printf
	movslq	-28(%rbp), %rax
	movq	refarr(,%rax,8), %rdi
	callq	strlen
	movl	%eax, -36(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_19:                               # %for.inc120
                                        #   in Loop: Header=BB0_16 Depth=2
	incl	-32(%rbp)
.LBB0_16:                               # %for.cond89
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_20
# BB#17:                                # %for.body92
                                        #   in Loop: Header=BB0_16 Depth=2
	movslq	-28(%rbp), %rdx
	movq	refarr(,%rdx,8), %rcx
	movslq	-32(%rbp), %rax
	movsbl	(%rcx,%rax), %ecx
	leaq	(%rdx,%rdx,4), %rdx
	shlq	$4, %rdx
	movsbl	outarr(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	movl	$94, %esi
	cmovel	%ebx, %esi
	movl	$.L.str16, %edi
	xorb	%al, %al
	callq	printf
	movslq	-28(%rbp), %rdx
	movq	refarr(,%rdx,8), %rcx
	movslq	-32(%rbp), %rax
	movsbl	(%rcx,%rax), %ecx
	leaq	(%rdx,%rdx,4), %rdx
	shlq	$4, %rdx
	movsbl	outarr(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	je	.LBB0_19
# BB#18:                                # %if.then118
                                        #   in Loop: Header=BB0_16 Depth=2
	incl	-40(%rbp)
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_20:                               # %for.end122
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$.L.str17, %edi
	xorb	%al, %al
	callq	printf
	jmp	.LBB0_21
.LBB0_22:                               # %for.end127
	cmpl	$0, -40(%rbp)
	jle	.LBB0_26
# BB#23:                                # %if.then130
	movl	$.L.str19, %edx
	movl	-40(%rbp), %esi
	cmpl	$1, %esi
	jg	.LBB0_25
# BB#24:                                # %select.mid
	movl	$.L.str20, %edx
.LBB0_25:                               # %select.end
	movl	$.L.str18, %edi
	xorb	%al, %al
	callq	printf
	jmp	.LBB0_27
.LBB0_26:                               # %if.else
	movl	$.L.str21, %edi
	xorb	%al, %al
	callq	printf
.LBB0_27:                               # %if.end136
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	main, .Ltmp7-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	trace_line,@function
trace_line:                             # @trace_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	movq	$0, object_distance(%rip)
	vmovsd	-16(%rbp), %xmm0
	vmovsd	%xmm0, ray_height(%rip)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, from_index(%rip)
	movl	$1, -20(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	-20(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movswl	current_surfaces(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jg	.LBB1_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-20(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	vmovsd	s+8(,%rax,8), %xmm0
	vmovsd	%xmm0, radius_of_curvature(%rip)
	movslq	-20(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	vmovsd	s+16(,%rax,8), %xmm0
	vmovsd	%xmm0, to_index(%rip)
	vucomisd	.LCPI1_0(%rip), %xmm0
	jbe	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-8(%rbp), %rax
	vmovsd	spectral_line+32(%rip), %xmm0
	vsubsd	spectral_line(,%rax,8), %xmm0, %xmm0
	vmovsd	spectral_line+24(%rip), %xmm1
	vsubsd	spectral_line+48(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	movslq	-20(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	vmovsd	.LCPI1_1(%rip), %xmm1
	vaddsd	s+16(,%rax,8), %xmm1, %xmm1
	vdivsd	s+24(,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vaddsd	to_index(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, to_index(%rip)
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	callq	transit_surface
	vmovsd	to_index(%rip), %xmm0
	vmovsd	%xmm0, from_index(%rip)
	movswl	current_surfaces(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jge	.LBB1_6
# BB#5:                                 # %if.then22
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-20(%rbp), %rax
	leaq	(%rax,%rax,4), %rax
	vmovsd	object_distance(%rip), %xmm0
	vsubsd	s+32(,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, object_distance(%rip)
	jmp	.LBB1_6
.LBB1_7:                                # %for.end
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp13:
	.size	trace_line, .Ltmp13-trace_line
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.quad	-9223372036854775808    # double -0.000000e+00
	.quad	-9223372036854775808    # double -0.000000e+00
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4611686018427387904     # double 2
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	transit_surface,@function
transit_surface:                        # @transit_surface
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	cmpw	$0, paraxial(%rip)
	je	.LBB2_9
# BB#1:                                 # %if.then
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	radius_of_curvature(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jne	.LBB2_2
	jnp	.LBB2_8
.LBB2_2:                                # %if.then1
	vmovsd	object_distance(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jne	.LBB2_4
	jp	.LBB2_4
# BB#3:                                 # %if.then3
	movq	$0, axis_slope_angle(%rip)
	vmovsd	ray_height(%rip), %xmm0
	vdivsd	radius_of_curvature(%rip), %xmm0, %xmm0
	jmp	.LBB2_5
.LBB2_9:                                # %if.end18
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	radius_of_curvature(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jne	.LBB2_10
	jnp	.LBB2_14
.LBB2_10:                               # %if.then20
	vmovsd	object_distance(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jne	.LBB2_12
	jp	.LBB2_12
# BB#11:                                # %if.then22
	movq	$0, axis_slope_angle(%rip)
	vmovsd	ray_height(%rip), %xmm0
	vdivsd	radius_of_curvature(%rip), %xmm0, %xmm0
	jmp	.LBB2_13
.LBB2_8:                                # %if.end13
	vmovsd	to_index(%rip), %xmm0
	vdivsd	from_index(%rip), %xmm0, %xmm0
	vmulsd	object_distance(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, object_distance(%rip)
	vmovsd	from_index(%rip), %xmm0
	vdivsd	to_index(%rip), %xmm0, %xmm0
	vmulsd	axis_slope_angle(%rip), %xmm0, %xmm0
	jmp	.LBB2_15
.LBB2_4:                                # %if.else
	vmovsd	radius_of_curvature(%rip), %xmm0
	vmovsd	object_distance(%rip), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmulsd	axis_slope_angle(%rip), %xmm0, %xmm0
.LBB2_5:                                # %if.else
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	from_index(%rip), %xmm0
	vdivsd	to_index(%rip), %xmm0, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vmulsd	-24(%rbp), %xmm1, %xmm1
	vmovsd	%xmm1, -32(%rbp)
	vmovsd	axis_slope_angle(%rip), %xmm1
	vmovsd	%xmm1, -40(%rbp)
	vmovsd	axis_slope_angle(%rip), %xmm1
	vaddsd	-24(%rbp), %xmm1, %xmm1
	vsubsd	-32(%rbp), %xmm1, %xmm1
	vmovsd	%xmm1, axis_slope_angle(%rip)
	vmovsd	object_distance(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jne	.LBB2_6
	jnp	.LBB2_7
.LBB2_6:                                # %if.then9
	vmovsd	object_distance(%rip), %xmm0
	vmulsd	-40(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, ray_height(%rip)
.LBB2_7:                                # %if.end11
	vmovsd	ray_height(%rip), %xmm0
	vdivsd	axis_slope_angle(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, object_distance(%rip)
	jmp	.LBB2_16
.LBB2_14:                               # %if.end48
	vmovsd	from_index(%rip), %xmm0
	vdivsd	to_index(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)        # 8-byte Spill
	vmovsd	axis_slope_angle(%rip), %xmm0
	callq	sin
	vmovsd	-56(%rbp), %xmm1        # 8-byte Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	callq	asin
	vxorpd	.LCPI2_0(%rip), %xmm0, %xmm1
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	object_distance(%rip), %xmm1
	vmovsd	%xmm1, -56(%rbp)        # 8-byte Spill
	vmovsd	to_index(%rip), %xmm1
	vmovsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	cos
	vmovsd	-64(%rbp), %xmm1        # 8-byte Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -64(%rbp)        # 8-byte Spill
	vmovsd	from_index(%rip), %xmm0
	vmovsd	%xmm0, -72(%rbp)        # 8-byte Spill
	vmovsd	axis_slope_angle(%rip), %xmm0
	callq	cos
	vmovsd	-72(%rbp), %xmm1        # 8-byte Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	-64(%rbp), %xmm1        # 8-byte Reload
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	-56(%rbp), %xmm1        # 8-byte Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, object_distance(%rip)
	vmovsd	-16(%rbp), %xmm0
	vxorpd	.LCPI2_0(%rip), %xmm0, %xmm0
.LBB2_15:                               # %if.end48
	vmovsd	%xmm0, axis_slope_angle(%rip)
	jmp	.LBB2_16
.LBB2_12:                               # %if.else24
	vmovsd	radius_of_curvature(%rip), %xmm0
	vmovsd	object_distance(%rip), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -56(%rbp)        # 8-byte Spill
	vmovsd	axis_slope_angle(%rip), %xmm0
	callq	sin
	vmovsd	-56(%rbp), %xmm1        # 8-byte Reload
	vmulsd	%xmm0, %xmm1, %xmm0
.LBB2_13:                               # %if.else24
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	-24(%rbp), %xmm0
	callq	asin
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	from_index(%rip), %xmm0
	vdivsd	to_index(%rip), %xmm0, %xmm0
	vmulsd	-24(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	axis_slope_angle(%rip), %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	axis_slope_angle(%rip), %xmm0
	vaddsd	-8(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)        # 8-byte Spill
	vmovsd	-32(%rbp), %xmm0
	callq	asin
	vmovsd	-56(%rbp), %xmm1        # 8-byte Reload
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, axis_slope_angle(%rip)
	vmovsd	-40(%rbp), %xmm0
	vaddsd	-8(%rbp), %xmm0, %xmm0
	vdivsd	.LCPI2_1(%rip), %xmm0, %xmm0
	callq	sin
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	radius_of_curvature(%rip), %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	-40(%rbp), %xmm0
	vaddsd	-8(%rbp), %xmm0, %xmm0
	vmovsd	radius_of_curvature(%rip), %xmm1
	vmovsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	sin
	vmovsd	%xmm0, -64(%rbp)        # 8-byte Spill
	vmovsd	axis_slope_angle(%rip), %xmm0
	callq	tan
	vmovsd	.LCPI2_2(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	-56(%rbp), %xmm1        # 8-byte Reload
	vmulsd	-64(%rbp), %xmm1, %xmm1 # 8-byte Folded Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	vaddsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, object_distance(%rip)
.LBB2_16:                               # %return
	addq	$80, %rsp
	popq	%rbp
	ret
.Ltmp19:
	.size	transit_surface, .Ltmp19-transit_surface
	.cfi_endproc

	.type	niter,@object           # @niter
	.data
	.globl	niter
	.align	4
niter:
	.long	1000                    # 0x3e8
	.size	niter, 4

	.type	spectral_line,@object   # @spectral_line
	.local	spectral_line
	.comm	spectral_line,72,16
	.type	clear_aperture,@object  # @clear_aperture
	.local	clear_aperture
	.comm	clear_aperture,8,8
	.type	current_surfaces,@object # @current_surfaces
	.local	current_surfaces
	.comm	current_surfaces,2,2
	.type	testcase,@object        # @testcase
	.align	16
testcase:
	.quad	4628307115802152141     # double 2.705000e+01
	.quad	4609495917928597632     # double 1.513700e+00
	.quad	4634147721568898253     # double 6.360000e+01
	.quad	4602858963157741732     # double 5.200000e-01
	.quad	-4597983816561113170    # double -1.668000e+01
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4594139994279152452     # double 1.380000e-01
	.quad	-4597983816561113170    # double -1.668000e+01
	.quad	4609958437610328582     # double 1.616400e+00
	.quad	4630361883132139930     # double 3.670000e+01
	.quad	4600517091351509074     # double 3.800000e-01
	.quad	-4588175820997630362    # double -7.810000e+01
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.size	testcase, 128

	.type	s,@object               # @s
	.local	s
	.comm	s,400,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Ready to begin John Walker's floating point accuracy\n"
	.size	.L.str, 54

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "and performance benchmark.  %d iterations will be made.\n\n"
	.size	.L.str1, 58

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "\nMeasured run time in seconds should be divided by %.f\n"
	.size	.L.str2, 56

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "to normalise for reporting results.  For archival results,\n"
	.size	.L.str3, 60

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "adjust iteration count so the benchmark runs about five minutes.\n\n"
	.size	.L.str4, 67

	.type	itercount,@object       # @itercount
	.comm	itercount,4,4
	.type	paraxial,@object        # @paraxial
	.local	paraxial
	.comm	paraxial,2,2
	.type	object_distance,@object # @object_distance
	.local	object_distance
	.comm	object_distance,8,8
	.type	od_sa,@object           # @od_sa
	.local	od_sa
	.comm	od_sa,32,16
	.type	axis_slope_angle,@object # @axis_slope_angle
	.local	axis_slope_angle
	.comm	axis_slope_angle,8,8
	.type	aberr_lspher,@object    # @aberr_lspher
	.local	aberr_lspher
	.comm	aberr_lspher,8,8
	.type	aberr_osc,@object       # @aberr_osc
	.local	aberr_osc
	.comm	aberr_osc,8,8
	.type	aberr_lchrom,@object    # @aberr_lchrom
	.local	aberr_lchrom
	.comm	aberr_lchrom,8,8
	.type	max_lspher,@object      # @max_lspher
	.local	max_lspher
	.comm	max_lspher,8,8
	.type	max_osc,@object         # @max_osc
	.local	max_osc
	.comm	max_osc,8,8
	.type	max_lchrom,@object      # @max_lchrom
	.local	max_lchrom
	.comm	max_lchrom,8,8
	.type	outarr,@object          # @outarr
	.local	outarr
	.comm	outarr,640,16
	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "%15s   %21.11f  %14.11f"
	.size	.L.str5, 24

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "Marginal ray"
	.size	.L.str6, 13

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "Paraxial ray"
	.size	.L.str7, 13

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "Longitudinal spherical aberration:      %16.11f"
	.size	.L.str8, 48

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "    (Maximum permissible):              %16.11f"
	.size	.L.str9, 48

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "Offense against sine condition (coma):  %16.11f"
	.size	.L.str10, 48

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "Axial chromatic aberration:             %16.11f"
	.size	.L.str11, 48

	.type	refarr,@object          # @refarr
	.data
	.align	16
refarr:
	.quad	.L.str22
	.quad	.L.str23
	.quad	.L.str24
	.quad	.L.str25
	.quad	.L.str26
	.quad	.L.str27
	.quad	.L.str28
	.quad	.L.str25
	.size	refarr, 64

	.type	.L.str12,@object        # @.str12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str12:
	.asciz	 "\nError in results on line %d...\n"
	.size	.L.str12, 33

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "Expected:  \"%s\"\n"
	.size	.L.str13, 17

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "Received:  \"%s\"\n"
	.size	.L.str14, 17

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "(Errors)    "
	.size	.L.str15, 13

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	 "%c"
	.size	.L.str16, 3

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	 "\n"
	.size	.L.str17, 2

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	 "\n%d error%s in results.  This is VERY SERIOUS.\n"
	.size	.L.str18, 48

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	 "s"
	.size	.L.str19, 2

	.type	.L.str20,@object        # @.str20
.L.str20:
	.zero	1
	.size	.L.str20, 1

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	 "\nNo errors in results.\n"
	.size	.L.str21, 24

	.type	.L.str22,@object        # @.str22
.L.str22:
	.asciz	 "   Marginal ray          47.09479120920   0.04178472683"
	.size	.L.str22, 56

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	 "   Paraxial ray          47.08372160249   0.04177864821"
	.size	.L.str23, 56

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	 "Longitudinal spherical aberration:        -0.01106960671"
	.size	.L.str24, 57

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	 "    (Maximum permissible):                 0.05306749907"
	.size	.L.str25, 57

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	 "Offense against sine condition (coma):     0.00008954761"
	.size	.L.str26, 57

	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	 "    (Maximum permissible):                 0.00250000000"
	.size	.L.str27, 57

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	 "Axial chromatic aberration:                0.00448229032"
	.size	.L.str28, 57

	.type	ray_height,@object      # @ray_height
	.local	ray_height
	.comm	ray_height,8,8
	.type	from_index,@object      # @from_index
	.local	from_index
	.comm	from_index,8,8
	.type	radius_of_curvature,@object # @radius_of_curvature
	.local	radius_of_curvature
	.comm	radius_of_curvature,8,8
	.type	to_index,@object        # @to_index
	.local	to_index
	.comm	to_index,8,8

	.section	".note.GNU-stack","",@progbits
