	.file	"<stdin>"
	.text
	.globl	ack
	.align	16, 0x90
	.type	ack,@function
ack:                                    # @ack
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	%edi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_1
# BB#2:                                 # %if.end
	movl	-16(%rbp), %ebx
	decl	%ebx
	movl	$1, %eax
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# BB#3:                                 # %cond.true
	movl	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	decl	%esi
	callq	ack
.LBB0_4:                                # %cond.end
	movl	%ebx, %edi
	movl	%eax, %esi
	callq	ack
	jmp	.LBB0_5
.LBB0_1:                                # %if.then
	movl	-20(%rbp), %eax
	incl	%eax
.LBB0_5:                                # %cond.end
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp7:
	.size	ack, .Ltmp7-ack
	.cfi_endproc

	.globl	fib
	.align	16, 0x90
	.type	fib,@function
fib:                                    # @fib
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
	pushq	%rax
.Ltmp14:
	.cfi_offset %rbx, -24
	movl	%edi, -16(%rbp)
	cmpl	$1, %edi
	jg	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, -12(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movl	-16(%rbp), %edi
	addl	$-2, %edi
	callq	fib
	movl	%eax, %ebx
	movl	-16(%rbp), %edi
	decl	%edi
	callq	fib
	addl	%ebx, %eax
	movl	%eax, -12(%rbp)
.LBB1_3:                                # %return
	movl	-12(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp15:
	.size	fib, .Ltmp15-fib
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4611686018427387904     # double 2
.LCPI2_1:
	.quad	-4611686018427387904    # double -2
.LCPI2_2:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	fibFP
	.align	16, 0x90
	.type	fibFP,@function
fibFP:                                  # @fibFP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	.LCPI2_0(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	vmovsd	-16(%rbp), %xmm0
	vaddsd	.LCPI2_1(%rip), %xmm0, %xmm0
	callq	fibFP
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	vmovsd	-16(%rbp), %xmm0
	vaddsd	.LCPI2_2(%rip), %xmm0, %xmm0
	callq	fibFP
	vmovsd	-24(%rbp), %xmm1        # 8-byte Reload
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rbp)
.LBB2_3:                                # %return
	vmovsd	-8(%rbp), %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp21:
	.size	fibFP, .Ltmp21-fibFP
	.cfi_endproc

	.globl	tak
	.align	16, 0x90
	.type	tak,@function
tak:                                    # @tak
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
	movl	%edi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB3_2
# BB#1:                                 # %if.then
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edi
	decl	%edi
	callq	tak
	movl	%eax, %r14d
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edi
	decl	%edi
	callq	tak
	movl	%eax, %ebx
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-32(%rbp), %edi
	decl	%edi
	callq	tak
	movl	%r14d, %edi
	movl	%ebx, %esi
	movl	%eax, %edx
	callq	tak
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movl	-32(%rbp), %eax
.LBB3_3:                                # %if.end
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp30:
	.size	tak, .Ltmp30-tak
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	takFP
	.align	16, 0x90
	.type	takFP,@function
takFP:                                  # @takFP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	%xmm1, -24(%rbp)
	vmovsd	%xmm2, -32(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vucomisd	-24(%rbp), %xmm0
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	vmovsd	-16(%rbp), %xmm0
	vsubsd	.LCPI4_0(%rip), %xmm0, %xmm0
	vmovsd	-32(%rbp), %xmm2
	vmovsd	-24(%rbp), %xmm1
	callq	takFP
	vmovsd	%xmm0, -40(%rbp)        # 8-byte Spill
	vmovsd	-24(%rbp), %xmm0
	vsubsd	.LCPI4_0(%rip), %xmm0, %xmm0
	vmovsd	-16(%rbp), %xmm2
	vmovsd	-32(%rbp), %xmm1
	callq	takFP
	vmovsd	%xmm0, -48(%rbp)        # 8-byte Spill
	vmovsd	-32(%rbp), %xmm0
	vsubsd	.LCPI4_0(%rip), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm2
	vmovsd	-16(%rbp), %xmm1
	callq	takFP
	vmovaps	%xmm0, %xmm2
	vmovsd	-40(%rbp), %xmm0        # 8-byte Reload
	vmovsd	-48(%rbp), %xmm1        # 8-byte Reload
	callq	takFP
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	vmovsd	-32(%rbp), %xmm0
.LBB4_3:                                # %if.end
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp36:
	.size	takFP, .Ltmp36-takFP
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4628574517030027264     # double 28
.LCPI5_1:
	.quad	4613937818241073152     # double 3
.LCPI5_2:
	.quad	4611686018427387904     # double 2
.LCPI5_3:
	.quad	4607182418800017408     # double 1
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
.Ltmp43:
	.cfi_offset %rbx, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
	movl	$0, -28(%rbp)
	movl	%edi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	$10, -44(%rbp)
	movl	$3, %edi
	movl	$11, %esi
	callq	ack
	movl	$.L.str, %edi
	movl	$11, %esi
	movl	%eax, %edx
	xorb	%al, %al
	callq	printf
	movl	-44(%rbp), %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vaddsd	.LCPI5_0(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	fibFP
	vmovaps	%xmm0, %xmm1
	movl	$.L.str1, %edi
	vmovsd	-56(%rbp), %xmm0        # 8-byte Reload
	movb	$2, %al
	callq	printf
	movl	-44(%rbp), %ebx
	leal	(%rbx,%rbx,2), %r14d
	leal	(%rbx,%rbx), %r15d
	movl	%r14d, %edi
	movl	%r15d, %esi
	movl	%ebx, %edx
	callq	tak
	movl	$.L.str2, %edi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	xorb	%al, %al
	callq	printf
	movl	$3, %edi
	callq	fib
	movl	$.L.str3, %edi
	movl	%eax, %esi
	xorb	%al, %al
	callq	printf
	vmovsd	.LCPI5_1(%rip), %xmm0
	vmovsd	.LCPI5_2(%rip), %xmm1
	vmovsd	.LCPI5_3(%rip), %xmm2
	callq	takFP
	movl	$.L.str4, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp46:
	.size	main, .Ltmp46-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Ack(3,%d): %d\n"
	.size	.L.str, 15

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "Fib(%.1f): %.1f\n"
	.size	.L.str1, 17

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "Tak(%d,%d,%d): %d\n"
	.size	.L.str2, 19

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "Fib(3): %d\n"
	.size	.L.str3, 12

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "Tak(3.0,2.0,1.0): %.1f\n"
	.size	.L.str4, 24


	.section	".note.GNU-stack","",@progbits
