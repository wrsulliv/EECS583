	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
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
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$10, -52(%rbp)
	movl	$10, reg_len(%rip)
	movabsq	$4598175219545276416, %rax # imm = 0x3FD0000000000000
	movq	%rax, -72(%rbp)
	movl	$100000, -56(%rbp)      # imm = 0x186A0
	cmpl	$7, -24(%rbp)
	jl	.LBB0_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	leaq	-176(%rbp), %rdi
	callq	strcpy
	jmp	.LBB0_6
.LBB0_2:                                # %if.else
	movl	$1, -64(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-64(%rbp), %rax
	movb	$48, -176(%rbp,%rax)
	incl	-64(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	reg_len(%rip), %eax
	jl	.LBB0_4
# BB#5:                                 # %for.end
	movb	$49, -176(%rbp)
	movslq	reg_len(%rip), %rax
	movb	$0, -176(%rbp,%rax)
.LBB0_6:                                # %if.end
	cmpl	$8, -24(%rbp)
	jl	.LBB0_8
# BB#7:                                 # %if.then7
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	leaq	-182(%rbp), %rdx
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	__isoc99_sscanf
	jmp	.LBB0_9
.LBB0_8:                                # %if.else11
	movw	$1, -182(%rbp)
.LBB0_9:                                # %if.end13
	cmpl	$9, -24(%rbp)
	jl	.LBB0_11
# BB#10:                                # %if.then15
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	leaq	-180(%rbp), %rdx
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	__isoc99_sscanf
	jmp	.LBB0_12
.LBB0_11:                               # %if.else19
	movw	$0, -180(%rbp)
.LBB0_12:                               # %if.end21
	cmpl	$10, -24(%rbp)
	jl	.LBB0_14
# BB#13:                                # %if.then23
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdi
	leaq	-178(%rbp), %rdx
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	__isoc99_sscanf
	jmp	.LBB0_15
.LBB0_14:                               # %if.else27
	movw	$0, -178(%rbp)
.LBB0_15:                               # %if.end29
	cmpl	$101, reg_len(%rip)
	jl	.LBB0_17
# BB#16:                                # %if.then31
	movl	$.L.str1, %edi
	movl	$100, %esi
	xorb	%al, %al
	callq	printf
	movl	$2, -20(%rbp)
	jmp	.LBB0_30
.LBB0_17:                               # %if.end33
	vmovsd	-72(%rbp), %xmm0
	vucomisd	.LCPI0_0(%rip), %xmm0
	ja	.LBB0_19
# BB#18:                                # %lor.lhs.false
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	-72(%rbp), %xmm0
	jbe	.LBB0_20
.LBB0_19:                               # %if.then36
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	movl	$3, -20(%rbp)
.LBB0_30:                               # %return
	movl	-20(%rbp), %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.LBB0_20:                               # %if.end38
	leaq	-176(%rbp), %rdi
	callq	strlen
	movslq	reg_len(%rip), %rcx
	cmpq	%rcx, %rax
	je	.LBB0_22
# BB#21:                                # %if.then43
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	movl	$4, -20(%rbp)
	jmp	.LBB0_30
.LBB0_22:                               # %if.end45
	leaq	-182(%rbp), %rdi
	callq	seed48
	leaq	-48(%rbp), %rdi
	callq	create_link_list
	movl	$0, -60(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB0_26
# BB#23:                                # %if.then50
	movl	$0, -64(%rbp)
	leaq	-48(%rbp), %rbx
	leaq	-176(%rbp), %r14
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_25:                               # %for.inc57
                                        #   in Loop: Header=BB0_24 Depth=1
	movq	%rbx, %rdi
	callq	init
	vmovsd	-72(%rbp), %xmm0
	movl	-52(%rbp), %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	simulate
	addl	%eax, -60(%rbp)
	incl	-64(%rbp)
.LBB0_24:                               # %for.cond51
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_29
	jmp	.LBB0_25
.LBB0_26:                               # %if.else60
	leaq	-48(%rbp), %r14
	movq	%r14, %rdi
	callq	init
	vmovsd	-72(%rbp), %xmm0
	leaq	-176(%rbp), %rbx
	movl	$10000, %edi            # imm = 0x2710
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	simulate
	movl	$0, -64(%rbp)
	jmp	.LBB0_27
	.align	16, 0x90
.LBB0_28:                               # %for.inc70
                                        #   in Loop: Header=BB0_27 Depth=1
	vmovsd	-72(%rbp), %xmm0
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	simulate
	addl	%eax, -60(%rbp)
	incl	-64(%rbp)
.LBB0_27:                               # %for.cond63
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.LBB0_28
.LBB0_29:                               # %if.end73
	movl	$.L.str4, %edi
	xorb	%al, %al
	callq	printf
	movl	-56(%rbp), %ecx
	vcvtsi2sdl	%ecx, %xmm0, %xmm0
	movl	%ecx, %eax
	subl	-60(%rbp), %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm1
	movzwl	-182(%rbp), %r9d
	vmovsd	-72(%rbp), %xmm0
	movl	-52(%rbp), %edx
	movl	reg_len(%rip), %esi
	movzwl	-180(%rbp), %eax
	movzwl	-178(%rbp), %edi
	movl	%edi, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	-176(%rbp), %r8
	movl	$.L.str5, %edi
	movb	$2, %al
	callq	printf
	movl	$0, -20(%rbp)
	jmp	.LBB0_30
.Ltmp8:
	.size	main, .Ltmp8-main
	.cfi_endproc

	.globl	create_link_list
	.align	16, 0x90
	.type	create_link_list,@function
create_link_list:                       # @create_link_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -12(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$16, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	incl	-12(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	reg_len(%rip), %eax
	incl	%eax
	cmpl	%eax, -12(%rbp)
	jl	.LBB1_2
# BB#3:                                 # %for.end
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp14:
	.size	create_link_list, .Ltmp14-create_link_list
	.cfi_endproc

	.globl	init
	.align	16, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_2
# BB#3:                                 # %while.end
	popq	%rbp
	ret
.Ltmp20:
	.size	init, .Ltmp20-init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4666723172467343360     # double 1.0E+4
.LCPI3_1:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	simulate
	.align	16, 0x90
	.type	simulate,@function
simulate:                               # @simulate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	vmovsd	%xmm0, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$0, -60(%rbp)
	movl	reg_len(%rip), %eax
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	imulq	$-2078209981, %rcx, %rcx # imm = 0xFFFFFFFF84210843
	shrq	$32, %rcx
	leal	-1(%rcx,%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$4, %eax
	addl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	reg_len(%rip), %eax
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	imulq	$-2078209981, %rcx, %rcx # imm = 0xFFFFFFFF84210843
	shrq	$32, %rcx
	leal	-1(%rcx,%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$4, %ecx
	addl	%edx, %ecx
	imull	$31, %ecx, %ecx
	negl	%ecx
	leal	-1(%rax,%rcx), %eax
	movl	%eax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -80(%rbp)
	movabsq	$2361183241434822607, %rbx # imm = 0x20C49BA5E353F7CF
	movabsq	$3777893186295716171, %r14 # imm = 0x346DC5D63886594B
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_23:                               # %for.inc115
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-68(%rbp), %eax
	addl	-96(%rbp), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	incl	-80(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
                                        #     Child Loop BB3_13 Depth 2
	movl	-80(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_24
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -84(%rbp)
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_11:                               # %for.inc34
                                        #   in Loop: Header=BB3_3 Depth=2
	incl	-84(%rbp)
.LBB3_3:                                # %for.cond3
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB3_12
# BB#4:                                 # %for.body5
                                        #   in Loop: Header=BB3_3 Depth=2
	callq	lrand48
	movq	%rax, -96(%rbp)
	movl	$0, -88(%rbp)
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_10:                               # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	4(%rcx), %ecx
	addl	-96(%rbp), %ecx
	andl	$1, %ecx
	movl	%ecx, 4(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	sarq	-96(%rbp)
	incl	-88(%rbp)
.LBB3_5:                                # %for.cond6
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$30, -88(%rbp)
	jg	.LBB3_11
# BB#6:                                 # %for.body8
                                        #   in Loop: Header=BB3_5 Depth=3
	imull	$31, -84(%rbp), %eax
	addl	-88(%rbp), %eax
	movslq	%eax, %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %eax
	cmpl	$49, %eax
	jne	.LBB3_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, -68(%rbp)
.LBB3_8:                                # %if.end
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	(%rcx), %ecx
	addl	-96(%rbp), %ecx
	andl	$1, %ecx
	movl	%ecx, (%rax)
	callq	lrand48
	movq	%rax, %rcx
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	subq	%rax, %rcx
	vcvtsi2sdq	%rcx, %xmm0, %xmm0
	vdivsd	.LCPI3_1(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	-40(%rbp), %xmm1
	vucomisd	%xmm0, %xmm1
	jbe	.LBB3_10
# BB#9:                                 # %if.then24
                                        #   in Loop: Header=BB3_5 Depth=3
	xorb	$1, -96(%rbp)
	jmp	.LBB3_10
	.align	16, 0x90
.LBB3_12:                               # %for.end36
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	lrand48
	movq	%rax, -96(%rbp)
	movl	$0, -88(%rbp)
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_18:                               # %for.inc80
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	4(%rcx), %ecx
	addl	-96(%rbp), %ecx
	andl	$1, %ecx
	movl	%ecx, 4(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	sarq	-96(%rbp)
	incl	-88(%rbp)
.LBB3_13:                               # %for.cond38
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB3_19
# BB#14:                                # %for.body41
                                        #   in Loop: Header=BB3_13 Depth=2
	imull	$31, -76(%rbp), %eax
	addl	-88(%rbp), %eax
	movslq	%eax, %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %eax
	cmpl	$49, %eax
	jne	.LBB3_16
# BB#15:                                # %if.then49
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, -68(%rbp)
.LBB3_16:                               # %if.end54
                                        #   in Loop: Header=BB3_13 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	(%rcx), %ecx
	addl	-96(%rbp), %ecx
	andl	$1, %ecx
	movl	%ecx, (%rax)
	callq	lrand48
	movq	%rax, %rcx
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	subq	%rax, %rcx
	vcvtsi2sdq	%rcx, %xmm0, %xmm0
	vdivsd	.LCPI3_1(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	-40(%rbp), %xmm1
	vucomisd	%xmm0, %xmm1
	jbe	.LBB3_18
# BB#17:                                # %if.then68
                                        #   in Loop: Header=BB3_13 Depth=2
	xorb	$1, -96(%rbp)
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_19:                               # %for.end82
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	lrand48
	movq	%rax, -96(%rbp)
	movl	reg_len(%rip), %eax
	decl	%eax
	movslq	%eax, %rax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx,%rax), %eax
	cmpl	$49, %eax
	jne	.LBB3_21
# BB#20:                                # %if.then90
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, -68(%rbp)
.LBB3_21:                               # %if.end95
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-64(%rbp), %eax
	addl	-96(%rbp), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	callq	lrand48
	movq	%rax, %rcx
	imulq	%r14
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$11, %rdx
	addq	%rax, %rdx
	imulq	$10000, %rdx, %rax      # imm = 0x2710
	subq	%rax, %rcx
	vcvtsi2sdq	%rcx, %xmm0, %xmm0
	vdivsd	.LCPI3_0(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	-40(%rbp), %xmm1
	vucomisd	%xmm0, %xmm1
	jbe	.LBB3_23
# BB#22:                                # %if.then107
                                        #   in Loop: Header=BB3_1 Depth=1
	xorb	$1, -96(%rbp)
	jmp	.LBB3_23
.LBB3_24:                               # %for.end117
	movl	$0, -84(%rbp)
	jmp	.LBB3_25
	.align	16, 0x90
.LBB3_28:                               # %for.inc129
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	incl	-84(%rbp)
.LBB3_25:                               # %for.cond118
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	reg_len(%rip), %eax
	jge	.LBB3_29
# BB#26:                                # %for.body121
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	4(%rax), %ecx
	je	.LBB3_28
# BB#27:                                # %if.then126
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	$1, -60(%rbp)
	jmp	.LBB3_28
.LBB3_29:                               # %for.end131
	movl	-60(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp29:
	.size	simulate, .Ltmp29-simulate
	.cfi_endproc

	.globl	kill_list
	.align	16, 0x90
	.type	kill_list,@function
kill_list:                              # @kill_list
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
	movq	%rdi, -8(%rbp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_2:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	jne	.LBB4_2
# BB#3:                                 # %while.end
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp35:
	.size	kill_list, .Ltmp35-kill_list
	.cfi_endproc

	.type	reg_len,@object         # @reg_len
	.comm	reg_len,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%hu"
	.size	.L.str, 4

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "Register too long; Max. = %d\n"
	.size	.L.str1, 30

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "Prob. out of range 0=<Prob>=1\n"
	.size	.L.str2, 31

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "Structure does not match Register length:\n"
	.size	.L.str3, 43

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "reg_len\t#_vect\tprob      #_tms\tstruct\tseed1\tseed2\tseed3\tProb same output\n "
	.size	.L.str4, 75

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "%d\t%d\t%.3e %d\t%s\t%d\t%d\t%d\t%.8e\n"
	.size	.L.str5, 32


	.section	".note.GNU-stack","",@progbits
