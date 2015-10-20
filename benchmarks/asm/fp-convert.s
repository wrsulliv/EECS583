	.file	"<stdin>"
	.text
	.globl	loop
	.align	16, 0x90
	.type	loop,@function
loop:                                   # @loop
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	-8(%rbp), %rcx
	vmovss	(%rcx,%rax,4), %xmm1
	vcvtss2sd	%xmm1, %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	incq	-32(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB0_2
# BB#3:                                 # %for.end
	vmovsd	-40(%rbp), %xmm0
	popq	%rbp
	ret
.Ltmp5:
	.size	loop, .Ltmp5-loop
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1036831949              # float 0.1
.LCPI1_1:
	.long	1045220557              # float 0.2
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16432, %rsp            # imm = 0x4030
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16440(%rbp)
	movl	$0, -16444(%rbp)
	movl	$1065353216, -16448(%rbp) # imm = 0x3F800000
	movl	$0, -36(%rbp)
	leaq	-8240(%rbp), %r14
	leaq	-16432(%rbp), %rbx
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_8:                                # %for.inc12
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$2048, %edx             # imm = 0x800
	callq	loop
	vaddsd	-16440(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -16440(%rbp)
	incl	-36(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	cmpl	$499999, -36(%rbp)      # imm = 0x7A11F
	jg	.LBB1_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	imull	$10, %ecx, %ecx
	cmpl	%ecx, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -16444(%rbp)
	movl	$1065353216, -16448(%rbp) # imm = 0x3F800000
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	vmovss	.LCPI1_0(%rip), %xmm0
	vaddss	-16444(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -16444(%rbp)
	vmovss	.LCPI1_1(%rip), %xmm0
	vaddss	-16448(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -16448(%rbp)
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -40(%rbp)
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=2
	movslq	-40(%rbp), %rax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vaddss	-16444(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -8240(%rbp,%rax,4)
	movslq	-40(%rbp), %rax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vaddss	-16448(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -16432(%rbp,%rax,4)
	incl	-40(%rbp)
.LBB1_6:                                # %for.cond2
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2047, -40(%rbp)        # imm = 0x7FF
	jg	.LBB1_8
	jmp	.LBB1_7
.LBB1_9:                                # %for.end14
	vmovsd	-16440(%rbp), %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$16432, %rsp            # imm = 0x4030
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp14:
	.size	main, .Ltmp14-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Total is %g\n"
	.size	.L.str, 13


	.section	".note.GNU-stack","",@progbits
