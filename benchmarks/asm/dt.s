	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182419250377371     # double 1.0000001
.LCPI0_1:
	.quad	4457293557087583675     # double 1.0E-10
.LCPI0_2:
	.quad	4607182418800017408     # double 1
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-24(%rbp), %rdi
	movl	$16, %esi
	movl	$16384, %edx            # imm = 0x4000
	callq	posix_memalign
	leaq	-32(%rbp), %rdi
	movl	$16, %esi
	movl	$16384, %edx            # imm = 0x4000
	callq	posix_memalign
	movl	$.L.str, %edi
	movl	$131072, %esi           # imm = 0x20000
	xorb	%al, %al
	callq	printf
	movl	$.L.str1, %edi
	movl	$2048, %esi             # imm = 0x800
	xorb	%al, %al
	callq	printf
	movq	$0, -40(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$2048, %eax             # imm = 0x800
	subq	-40(%rbp), %rax
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	callq	cosf
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LCPI0_0(%rip), %xmm0, %xmm0
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	vcvtsi2ssq	-40(%rbp), %xmm0, %xmm0
	callq	sinf
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LCPI0_1(%rip), %xmm0, %xmm0
	vaddsd	.LCPI0_2(%rip), %xmm0, %xmm0
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	incq	-40(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2047, -40(%rbp)        # imm = 0x7FF
	jle	.LBB0_2
# BB#3:                                 # %for.end
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	double_array_divs_variable
	movq	-24(%rbp), %rax
	vmovsd	(%rax), %xmm0
	movl	$.L.str2, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.align	16, 0x90
	.type	double_array_divs_variable,@function
double_array_divs_variable:             # @double_array_divs_variable
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_5:                                # %for.inc5
                                        #   in Loop: Header=BB1_1 Depth=1
	incq	-32(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpq	$131071, -32(%rbp)      # imm = 0x1FFFF
	jg	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$0, -24(%rbp)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	movq	-16(%rbp), %rdx
	vdivsd	(%rdx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	incq	-24(%rbp)
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$2047, -24(%rbp)        # imm = 0x7FF
	jg	.LBB1_5
	jmp	.LBB1_4
.LBB1_6:                                # %for.end7
	popq	%rbp
	ret
.Ltmp11:
	.size	double_array_divs_variable, .Ltmp11-double_array_divs_variable
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 " %i iterations of each test. "
	.size	.L.str, 30

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 " inner loop / array size %i.\n"
	.size	.L.str1, 30

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "%f\n"
	.size	.L.str2, 4


	.section	".note.GNU-stack","",@progbits
