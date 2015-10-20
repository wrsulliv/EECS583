	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643176031446892544     # double 255
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
	subq	$136, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	$63, -36(%rbp)
	movl	$256, -40(%rbp)         # imm = 0x100
	movq	$65536, -56(%rbp)       # imm = 0x10000
	movq	$1048592, -64(%rbp)     # imm = 0x100010
	movl	-40(%rbp), %eax
	movl	%eax, main.nsize+8(%rip)
	movl	%eax, main.nsize+4(%rip)
	movq	-64(%rbp), %rdi
	callq	malloc
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB0_42
# BB#1:                                 # %if.end
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$0, -16(%rbp)
	movabsq	$4638707616191610880, %rax # imm = 0x4060000000000000
	jmp	.LBB0_2
	.align	16, 0x90
.LBB0_9:                                # %for.inc22
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	-16(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movl	-16(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jge	.LBB0_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -20(%rbp)
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_8:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=2
	incl	-20(%rbp)
.LBB0_4:                                # %for.cond7
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jge	.LBB0_9
# BB#5:                                 # %for.body10
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-16(%rbp), %ecx
	andl	$15, %ecx
	cmpl	$8, %ecx
	je	.LBB0_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-20(%rbp), %ecx
	andl	$15, %ecx
	cmpl	$8, %ecx
	jne	.LBB0_8
.LBB0_7:                                # %if.then16
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-40(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	-20(%rbp), %ecx
	leal	1(%rcx,%rcx), %ecx
	movslq	%ecx, %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB0_8
.LBB0_10:                               # %for.end24
	movl	$0, -16(%rbp)
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_12:                               # %for.inc29
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-48(%rbp), %rdi
	movl	$main.nsize, %esi
	movl	$2, %edx
	movl	$1, %ecx
	callq	fourn
	movq	-48(%rbp), %rdi
	movl	$main.nsize, %esi
	movl	$2, %edx
	movl	$-1, %ecx
	callq	fourn
	incl	-16(%rbp)
.LBB0_11:                               # %for.cond25
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB0_12
# BB#13:                                # %for.end31
	movabsq	$4756540486875873280, %rax # imm = 0x4202A05F20000000
	movq	%rax, -88(%rbp)
	movabsq	$-4466831549978902528, %rcx # imm = 0xC202A05F20000000
	movq	%rcx, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movl	$1, -16(%rbp)
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_27:                               # %for.inc64
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	%xmm0, -112(%rbp)
	addl	$2, -16(%rbp)
.LBB0_14:                               # %for.cond32
                                        # =>This Inner Loop Header: Depth=1
	movslq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB0_28
# BB#15:                                # %for.body36
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movl	-16(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movq	-48(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, -128(%rbp)
	vmovsd	-136(%rbp), %xmm0
	vaddsd	-120(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -136(%rbp)
	vmovsd	-144(%rbp), %xmm0
	vaddsd	-128(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-88(%rbp), %xmm0
	vucomisd	-120(%rbp), %xmm0
	jb	.LBB0_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-120(%rbp), %xmm0
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_17:                               # %cond.false
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-88(%rbp), %xmm0
.LBB0_18:                               # %cond.end
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	%xmm0, -88(%rbp)
	vmovsd	-120(%rbp), %xmm0
	vucomisd	-96(%rbp), %xmm0
	jbe	.LBB0_20
# BB#19:                                # %cond.true48
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-120(%rbp), %xmm0
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_20:                               # %cond.false49
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-96(%rbp), %xmm0
.LBB0_21:                               # %cond.end50
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	%xmm0, -96(%rbp)
	vmovsd	-104(%rbp), %xmm0
	vucomisd	-128(%rbp), %xmm0
	jb	.LBB0_23
# BB#22:                                # %cond.true54
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-128(%rbp), %xmm0
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_23:                               # %cond.false55
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-104(%rbp), %xmm0
.LBB0_24:                               # %cond.end56
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	-128(%rbp), %xmm0
	vucomisd	-112(%rbp), %xmm0
	jbe	.LBB0_26
# BB#25:                                # %cond.true60
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-128(%rbp), %xmm0
	jmp	.LBB0_27
	.align	16, 0x90
.LBB0_26:                               # %cond.false61
                                        #   in Loop: Header=BB0_14 Depth=1
	vmovsd	-112(%rbp), %xmm0
	jmp	.LBB0_27
.LBB0_28:                               # %for.end66
	vmovsd	-88(%rbp), %xmm0
	vmovsd	%xmm0, -72(%rbp)
	vmovsd	-96(%rbp), %xmm0
	vsubsd	-88(%rbp), %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -80(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -16(%rbp)
	movl	$255, %ebx
	jmp	.LBB0_29
	.align	16, 0x90
.LBB0_37:                               # %for.inc100
                                        #   in Loop: Header=BB0_29 Depth=1
	incl	-16(%rbp)
.LBB0_29:                               # %for.cond67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_38
# BB#30:                                # %for.body70
                                        #   in Loop: Header=BB0_29 Depth=1
	movl	$0, -20(%rbp)
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_36:                               # %for.inc97
                                        #   in Loop: Header=BB0_31 Depth=2
	incl	-20(%rbp)
.LBB0_31:                               # %for.cond71
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_37
# BB#32:                                # %for.body74
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	-40(%rbp), %eax
	imull	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	leal	1(%rax,%rax), %eax
	movslq	%eax, %rax
	movq	-48(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vsubsd	-72(%rbp), %xmm0, %xmm0
	movb	$1, %al
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %ecx
	movl	%ecx, -24(%rbp)
	movl	-16(%rbp), %ecx
	andl	$15, %ecx
	cmpl	$8, %ecx
	je	.LBB0_34
# BB#33:                                # %lor.rhs
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	-20(%rbp), %eax
	andl	$15, %eax
	cmpl	$8, %eax
	sete	%al
.LBB0_34:                               # %lor.end
                                        #   in Loop: Header=BB0_31 Depth=2
	testb	%al, %al
	movl	$0, %eax
	cmovnel	%ebx, %eax
	movl	%eax, -28(%rbp)
	cmpl	%eax, -24(%rbp)
	je	.LBB0_36
# BB#35:                                # %if.then93
                                        #   in Loop: Header=BB0_31 Depth=2
	incl	-32(%rbp)
	movl	-24(%rbp), %r9d
	movl	-28(%rbp), %r8d
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	movq	stderr(%rip), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB0_36
.LBB0_38:                               # %for.end102
	cmpl	$0, -32(%rbp)
	je	.LBB0_39
# BB#40:                                # %if.else
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	stderr(%rip), %rdi
	movl	$.L.str3, %esi
	xorb	%al, %al
	callq	fprintf
	jmp	.LBB0_41
.LBB0_39:                               # %if.then105
	movl	-36(%rbp), %edx
	movq	stderr(%rip), %rdi
	movl	$.L.str2, %esi
	xorb	%al, %al
	callq	fprintf
.LBB0_41:                               # %if.end108
	xorl	%eax, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LBB0_42:                               # %if.then
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Ltmp7:
	.size	main, .Ltmp7-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4618760256179416348     # double 6.28318530717959
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
.LCPI1_2:
	.quad	-4611686018427387904    # double -2
	.text
	.align	16, 0x90
	.type	fourn,@function
fourn:                                  # @fourn
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp14:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$1, -104(%rbp)
	movl	$1, -80(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	-104(%rbp), %edx
	imull	(%rcx,%rax,4), %edx
	movl	%edx, -104(%rbp)
	incl	-80(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB1_2
# BB#3:                                 # %for.end
	movl	$1, -96(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -80(%rbp)
	movabsq	$4607182418800017408, %rbx # imm = 0x3FF0000000000000
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_32:                               # %for.inc136
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-96(%rbp), %eax
	imull	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	decl	-80(%rbp)
.LBB1_4:                                # %for.cond1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #         Child Loop BB1_11 Depth 4
                                        #       Child Loop BB1_15 Depth 3
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_23 Depth 3
                                        #         Child Loop BB1_25 Depth 4
                                        #           Child Loop BB1_27 Depth 5
	cmpl	$0, -80(%rbp)
	jle	.LBB1_33
# BB#5:                                 # %for.body3
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	movl	%ecx, -92(%rbp)
	imull	-96(%rbp), %ecx
	movl	-104(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -100(%rbp)
	movl	-96(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -56(%rbp)
	imull	-92(%rbp), %eax
	movl	%eax, -60(%rbp)
	imull	-100(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	$1, -48(%rbp)
	movl	$1, -40(%rbp)
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_19:                               # %for.inc52
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-76(%rbp), %eax
	addl	%eax, -48(%rbp)
	movl	-56(%rbp), %eax
	addl	%eax, -40(%rbp)
.LBB1_6:                                # %for.cond9
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #         Child Loop BB1_11 Depth 4
                                        #       Child Loop BB1_15 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB1_20
# BB#7:                                 # %for.body11
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB1_14
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_9
	.align	16, 0x90
.LBB1_13:                               # %for.inc44
                                        #   in Loop: Header=BB1_9 Depth=3
	addl	$2, -36(%rbp)
.LBB1_9:                                # %for.cond13
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_11 Depth 4
	movl	-56(%rbp), %eax
	movl	-40(%rbp), %ecx
	leal	-2(%rcx,%rax), %eax
	cmpl	%eax, -36(%rbp)
	jg	.LBB1_14
# BB#10:                                # %for.body15
                                        #   in Loop: Header=BB1_9 Depth=3
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_12:                               # %for.inc41
                                        #   in Loop: Header=BB1_11 Depth=4
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rax
	vmovsd	(%rax,%rcx,8), %xmm0
	movslq	-44(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	vmovsd	-120(%rbp), %xmm0
	vmovsd	%xmm0, (%rax,%rcx,8)
	movl	-44(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movq	-16(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movl	-52(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	vmovsd	(%rax,%rcx,8), %xmm0
	movl	-44(%rbp), %ecx
	incl	%ecx
	movslq	%ecx, %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	movl	-52(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movq	-16(%rbp), %rcx
	vmovsd	-120(%rbp), %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	movl	-60(%rbp), %eax
	addl	%eax, -44(%rbp)
.LBB1_11:                               # %for.cond16
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        #       Parent Loop BB1_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB1_13
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_14:                               # %if.end
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-60(%rbp), %eax
	sarl	%eax
	movl	%eax, -76(%rbp)
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_18:                               # %while.body
                                        #   in Loop: Header=BB1_15 Depth=3
	movl	-76(%rbp), %eax
	subl	%eax, -48(%rbp)
	sarl	-76(%rbp)
.LBB1_15:                               # %while.cond
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorb	%al, %al
	movl	-76(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	jl	.LBB1_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB1_15 Depth=3
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	setg	%al
.LBB1_17:                               # %land.end
                                        #   in Loop: Header=BB1_15 Depth=3
	testb	%al, %al
	je	.LBB1_19
	jmp	.LBB1_18
	.align	16, 0x90
.LBB1_20:                               # %for.end54
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LBB1_21
	.align	16, 0x90
.LBB1_31:                               # %for.end133
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	-72(%rbp), %eax
.LBB1_21:                               # %for.end54
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_23 Depth 3
                                        #         Child Loop BB1_25 Depth 4
                                        #           Child Loop BB1_27 Depth 5
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB1_32
# BB#22:                                # %while.body57
                                        #   in Loop: Header=BB1_21 Depth=2
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -72(%rbp)
	cltd
	idivl	-56(%rbp)
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vcvtsi2sdl	-32(%rbp), %xmm0, %xmm1
	vmulsd	.LCPI1_0(%rip), %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -128(%rbp)
	vmulsd	.LCPI1_1(%rip), %xmm0, %xmm0
	callq	sin
	vmovsd	%xmm0, -168(%rbp)
	vmulsd	.LCPI1_2(%rip), %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	vmovsd	-128(%rbp), %xmm0
	callq	sin
	vmovsd	%xmm0, -144(%rbp)
	movq	%rbx, -160(%rbp)
	movq	$0, -136(%rbp)
	movl	$1, -44(%rbp)
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_30:                               # %for.inc131
                                        #   in Loop: Header=BB1_23 Depth=3
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -168(%rbp)
	vmulsd	-152(%rbp), %xmm0, %xmm0
	vmovsd	-136(%rbp), %xmm1
	vmulsd	-144(%rbp), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vaddsd	-160(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vmovsd	-168(%rbp), %xmm0
	vmulsd	-144(%rbp), %xmm0, %xmm0
	vmovsd	-136(%rbp), %xmm1
	vmulsd	-152(%rbp), %xmm1, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -136(%rbp)
	movl	-56(%rbp), %eax
	addl	%eax, -44(%rbp)
.LBB1_23:                               # %for.cond67
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_25 Depth 4
                                        #           Child Loop BB1_27 Depth 5
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.LBB1_31
# BB#24:                                # %for.body70
                                        #   in Loop: Header=BB1_23 Depth=3
	movl	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_25
.LBB1_29:                               # %for.inc120
                                        #   in Loop: Header=BB1_25 Depth=4
	addl	$2, -36(%rbp)
	.align	16, 0x90
.LBB1_25:                               # %for.cond71
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_23 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_27 Depth 5
	movl	-56(%rbp), %eax
	movl	-44(%rbp), %ecx
	leal	-2(%rcx,%rax), %eax
	cmpl	%eax, -36(%rbp)
	jg	.LBB1_30
# BB#26:                                # %for.body76
                                        #   in Loop: Header=BB1_25 Depth=4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_27
	.align	16, 0x90
.LBB1_28:                               # %for.inc117
                                        #   in Loop: Header=BB1_27 Depth=5
	movl	-40(%rbp), %eax
	movl	%eax, -84(%rbp)
	addl	-68(%rbp), %eax
	movl	%eax, -88(%rbp)
	movslq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	vmovsd	-160(%rbp), %xmm0
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm0
	incl	%ecx
	movslq	%ecx, %rcx
	vmovsd	-136(%rbp), %xmm1
	vmulsd	(%rax,%rcx,8), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movslq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	vmovsd	-136(%rbp), %xmm0
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm0
	incl	%ecx
	movslq	%ecx, %rcx
	vmovsd	-160(%rbp), %xmm1
	vmulsd	(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	movslq	-84(%rbp), %rcx
	movq	-16(%rbp), %rax
	vmovsd	(%rax,%rcx,8), %xmm0
	vsubsd	-120(%rbp), %xmm0, %xmm0
	movslq	-88(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	movl	-84(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	vmovsd	(%rax,%rcx,8), %xmm0
	vsubsd	-112(%rbp), %xmm0, %xmm0
	movl	-88(%rbp), %ecx
	incl	%ecx
	movslq	%ecx, %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	movslq	-84(%rbp), %rax
	movq	-16(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vaddsd	-120(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	movl	-84(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movq	-16(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vaddsd	-112(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	movl	-72(%rbp), %eax
	addl	%eax, -40(%rbp)
.LBB1_27:                               # %for.cond77
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_23 Depth=3
                                        #         Parent Loop BB1_25 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-40(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB1_29
	jmp	.LBB1_28
.LBB1_33:                               # %for.end137
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp15:
	.size	fourn, .Ltmp15-fourn
	.cfi_endproc

	.type	main.nsize,@object      # @main.nsize
	.local	main.nsize
	.comm	main.nsize,12,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Can't allocate data array.\n"
	.size	.L.str, 28

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "Wrong answer at (%d,%d)!  Expected %d, got %d.\n"
	.size	.L.str1, 48

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "%d passes.  No errors in results.\n"
	.size	.L.str2, 35

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "%d passes.  %d errors in results.\n"
	.size	.L.str3, 35


	.section	".note.GNU-stack","",@progbits
