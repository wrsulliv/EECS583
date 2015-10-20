	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$400000000, %eax        # imm = 0x17D78400
	cmpl	$2, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB0_2:                                # %cond.end
	decl	%eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	callq	gen_random
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -20(%rbp)
	vmovsd	.LCPI0_0(%rip), %xmm0
	testl	%eax, %eax
	jne	.LBB0_4
# BB#5:                                 # %while.end
	callq	gen_random
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4684049276697837568     # double 139968
	.text
	.align	16, 0x90
	.type	gen_random,@function
gen_random:                             # @gen_random
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
	vmovsd	%xmm0, -8(%rbp)
	imulq	$3877, gen_random.last(%rip), %rcx # imm = 0xF25
	addq	$29573, %rcx            # imm = 0x7385
	movabsq	$4318579316753219217, %rdx # imm = 0x3BEEAD01FD6CBE91
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	imulq	$139968, %rdx, %rax     # imm = 0x222C0
	subq	%rax, %rcx
	movq	%rcx, gen_random.last(%rip)
	vcvtsi2sdq	%rcx, %xmm0, %xmm0
	vmulsd	-8(%rbp), %xmm0, %xmm0
	vdivsd	.LCPI1_0(%rip), %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp11:
	.size	gen_random, .Ltmp11-gen_random
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%.9f\n"
	.size	.L.str, 6

	.type	gen_random.last,@object # @gen_random.last
	.data
	.align	8
gen_random.last:
	.quad	42                      # 0x2a
	.size	gen_random.last, 8


	.section	".note.GNU-stack","",@progbits
