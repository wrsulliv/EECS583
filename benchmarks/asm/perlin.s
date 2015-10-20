	.file	"<stdin>"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4672205769001748398     # double 23561.57
.LCPI0_1:
	.quad	4638434866939178254     # double 124.124
.LCPI0_2:
	.quad	4593563533526849028     # double 0.1235
.LCPI0_3:
	.quad	4627233148028512633     # double 23.2345
.LCPI0_4:
	.quad	4609130225638855148     # double 1.4325
.LCPI0_5:
	.quad	4612699328343546266     # double 2.45
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
	subq	$48, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movl	$0, -20(%rbp)
	callq	init
	movq	$0, -56(%rbp)
	movabsq	$-4555905281166241956, %rax # imm = 0xC0C62C48F5C28F5C
	movq	%rax, -32(%rbp)
	movabsq	$-4578575351656820507, %r14 # imm = 0xC075A1F9DB22D0E5
	movabsq	$-4583670989917236756, %rbx # imm = 0xC06387851EB851EC
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_8:                                # %for.inc12
                                        #   in Loop: Header=BB0_1 Depth=1
	vmovsd	.LCPI0_2(%rip), %xmm0
	vaddsd	-32(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -32(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	vmovsd	.LCPI0_0(%rip), %xmm0
	vucomisd	-32(%rbp), %xmm0
	jbe	.LBB0_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, -40(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_7:                                # %for.inc9
                                        #   in Loop: Header=BB0_3 Depth=2
	vmovsd	.LCPI0_4(%rip), %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
.LBB0_3:                                # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	vmovsd	.LCPI0_1(%rip), %xmm0
	vucomisd	-40(%rbp), %xmm0
	jbe	.LBB0_8
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	%rbx, -48(%rbp)
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=3
	vmovsd	-48(%rbp), %xmm2
	vmovsd	-40(%rbp), %xmm1
	vmovsd	-32(%rbp), %xmm0
	callq	noise
	vaddsd	-56(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	.LCPI0_5(%rip), %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
.LBB0_5:                                # %for.cond4
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovsd	.LCPI0_3(%rip), %xmm0
	vucomisd	-40(%rbp), %xmm0
	jbe	.LBB0_7
	jmp	.LBB0_6
.LBB0_9:                                # %for.end14
	vmovsd	-56(%rbp), %xmm0
	movl	$.L.str, %edi
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp8:
	.size	main, .Ltmp8-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	noise,@function
noise:                                  # @noise
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
	subq	$144, %rsp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vroundsd	$1, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vroundsd	$1, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	vmovsd	-24(%rbp), %xmm0
	vroundsd	$1, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vroundsd	$1, %xmm0, %xmm0, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vroundsd	$1, %xmm0, %xmm0, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	-24(%rbp), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vroundsd	$1, %xmm0, %xmm0, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	-8(%rbp), %xmm0
	callq	fade
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	-16(%rbp), %xmm0
	callq	fade
	vmovsd	%xmm0, -56(%rbp)
	vmovsd	-24(%rbp), %xmm0
	callq	fade
	vmovsd	%xmm0, -64(%rbp)
	movslq	-28(%rbp), %rax
	movl	p(,%rax,4), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -68(%rbp)
	movslq	-68(%rbp), %rax
	movl	p(,%rax,4), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movl	p(,%rax,4), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-28(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movl	p(,%rax,4), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)
	movslq	-80(%rbp), %rax
	movl	p(,%rax,4), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movl	p(,%rax,4), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -88(%rbp)
	movslq	-72(%rbp), %rax
	movl	p(,%rax,4), %edi
	vmovsd	-64(%rbp), %xmm0
	vmovsd	%xmm0, -96(%rbp)        # 8-byte Spill
	vmovsd	-56(%rbp), %xmm0
	vmovsd	%xmm0, -104(%rbp)       # 8-byte Spill
	vmovsd	-48(%rbp), %xmm0
	vmovsd	%xmm0, -112(%rbp)       # 8-byte Spill
	vmovsd	-24(%rbp), %xmm2
	vmovsd	-16(%rbp), %xmm1
	vmovsd	-8(%rbp), %xmm0
	callq	grad
	vmovsd	%xmm0, -120(%rbp)       # 8-byte Spill
	vmovsd	-8(%rbp), %xmm0
	vsubsd	.LCPI1_0(%rip), %xmm0, %xmm0
	movslq	-84(%rbp), %rax
	movl	p(,%rax,4), %edi
	vmovsd	-24(%rbp), %xmm2
	vmovsd	-16(%rbp), %xmm1
	callq	grad
	vmovaps	%xmm0, %xmm2
	vmovsd	-112(%rbp), %xmm0       # 8-byte Reload
	vmovsd	-120(%rbp), %xmm1       # 8-byte Reload
	callq	lerp
	vmovsd	%xmm0, -112(%rbp)       # 8-byte Spill
	vmovsd	-16(%rbp), %xmm0
	vsubsd	.LCPI1_0(%rip), %xmm0, %xmm1
	movslq	-76(%rbp), %rax
	movl	p(,%rax,4), %edi
	vmovsd	-48(%rbp), %xmm0
	vmovsd	%xmm0, -120(%rbp)       # 8-byte Spill
	vmovsd	-24(%rbp), %xmm2
	vmovsd	-8(%rbp), %xmm0
	callq	grad
	vmovsd	%xmm0, -128(%rbp)       # 8-byte Spill
	vmovsd	-8(%rbp), %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm2
	vsubsd	%xmm2, %xmm0, %xmm0
	vmovsd	-16(%rbp), %xmm1
	vsubsd	%xmm2, %xmm1, %xmm1
	movslq	-88(%rbp), %rax
	movl	p(,%rax,4), %edi
	vmovsd	-24(%rbp), %xmm2
	callq	grad
	vmovaps	%xmm0, %xmm2
	vmovsd	-120(%rbp), %xmm0       # 8-byte Reload
	vmovsd	-128(%rbp), %xmm1       # 8-byte Reload
	callq	lerp
	vmovaps	%xmm0, %xmm2
	vmovsd	-104(%rbp), %xmm0       # 8-byte Reload
	vmovsd	-112(%rbp), %xmm1       # 8-byte Reload
	callq	lerp
	vmovsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movl	-72(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	vmovsd	-24(%rbp), %xmm0
	vsubsd	.LCPI1_0(%rip), %xmm0, %xmm2
	movl	p(,%rax,4), %edi
	vmovsd	-56(%rbp), %xmm0
	vmovsd	%xmm0, -112(%rbp)       # 8-byte Spill
	vmovsd	-48(%rbp), %xmm0
	vmovsd	%xmm0, -120(%rbp)       # 8-byte Spill
	vmovsd	-16(%rbp), %xmm1
	vmovsd	-8(%rbp), %xmm0
	callq	grad
	vmovsd	%xmm0, -128(%rbp)       # 8-byte Spill
	vmovsd	-24(%rbp), %xmm1
	vmovsd	-8(%rbp), %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm3
	vmovaps	%xmm3, %xmm2
	vsubsd	%xmm2, %xmm0, %xmm0
	vsubsd	%xmm2, %xmm1, %xmm2
	movl	-84(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movl	p(,%rax,4), %edi
	vmovsd	-16(%rbp), %xmm1
	callq	grad
	vmovaps	%xmm0, %xmm2
	vmovsd	-120(%rbp), %xmm0       # 8-byte Reload
	vmovsd	-128(%rbp), %xmm1       # 8-byte Reload
	callq	lerp
	vmovsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movl	-76(%rbp), %eax
	vmovsd	-24(%rbp), %xmm0
	vmovsd	-16(%rbp), %xmm1
	vmovsd	.LCPI1_0(%rip), %xmm3
	vmovaps	%xmm3, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm1
	vsubsd	%xmm2, %xmm0, %xmm2
	incl	%eax
	movslq	%eax, %rax
	movl	p(,%rax,4), %edi
	vmovsd	-48(%rbp), %xmm0
	vmovsd	%xmm0, -128(%rbp)       # 8-byte Spill
	vmovsd	-8(%rbp), %xmm0
	callq	grad
	vmovsd	%xmm0, -136(%rbp)       # 8-byte Spill
	vmovsd	-16(%rbp), %xmm1
	vmovsd	-8(%rbp), %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm2
	vsubsd	%xmm2, %xmm0, %xmm0
	vsubsd	%xmm2, %xmm1, %xmm1
	vmovaps	%xmm2, %xmm3
	vmovsd	-24(%rbp), %xmm2
	vsubsd	%xmm3, %xmm2, %xmm2
	movl	-88(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movl	p(,%rax,4), %edi
	callq	grad
	vmovaps	%xmm0, %xmm2
	vmovsd	-128(%rbp), %xmm0       # 8-byte Reload
	vmovsd	-136(%rbp), %xmm1       # 8-byte Reload
	callq	lerp
	vmovaps	%xmm0, %xmm2
	vmovsd	-112(%rbp), %xmm0       # 8-byte Reload
	vmovsd	-120(%rbp), %xmm1       # 8-byte Reload
	callq	lerp
	vmovaps	%xmm0, %xmm2
	vmovsd	-96(%rbp), %xmm0        # 8-byte Reload
	vmovsd	-104(%rbp), %xmm1       # 8-byte Reload
	callq	lerp
	addq	$144, %rsp
	popq	%rbp
	ret
.Ltmp14:
	.size	noise, .Ltmp14-noise
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4618441417868443648     # double 6
.LCPI2_1:
	.quad	-4598738169498697728    # double -15
.LCPI2_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	fade,@function
fade:                                   # @fade
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
	vmovsd	%xmm0, -8(%rbp)
	vmulsd	%xmm0, %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmulsd	.LCPI2_0(%rip), %xmm0, %xmm2
	vaddsd	.LCPI2_1(%rip), %xmm2, %xmm2
	vmulsd	%xmm2, %xmm0, %xmm0
	vaddsd	.LCPI2_2(%rip), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	popq	%rbp
	ret
.Ltmp20:
	.size	fade, .Ltmp20-fade
	.cfi_endproc

	.align	16, 0x90
	.type	lerp,@function
lerp:                                   # @lerp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	vmovsd	%xmm2, -24(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vsubsd	%xmm0, %xmm2, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp26:
	.size	lerp, .Ltmp26-lerp
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.quad	-9223372036854775808    # double -0.000000e+00
	.quad	-9223372036854775808    # double -0.000000e+00
	.text
	.align	16, 0x90
	.type	grad,@function
grad:                                   # @grad
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	%xmm1, -24(%rbp)
	vmovsd	%xmm2, -32(%rbp)
	movl	-4(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -36(%rbp)
	cmpl	$7, %eax
	jg	.LBB4_2
# BB#1:                                 # %cond.true
	vmovsd	-16(%rbp), %xmm0
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	vmovsd	-24(%rbp), %xmm0
.LBB4_3:                                # %cond.end
	vmovsd	%xmm0, -48(%rbp)
	cmpl	$3, -36(%rbp)
	jg	.LBB4_5
# BB#4:                                 # %cond.true2
	vmovsd	-24(%rbp), %xmm0
	jmp	.LBB4_9
.LBB4_5:                                # %cond.false3
	cmpl	$12, -36(%rbp)
	je	.LBB4_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$14, -36(%rbp)
	jne	.LBB4_8
.LBB4_7:                                # %cond.true6
	vmovsd	-16(%rbp), %xmm0
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false7
	vmovsd	-32(%rbp), %xmm0
.LBB4_9:                                # %cond.end10
	vmovsd	%xmm0, -56(%rbp)
	testb	$1, -36(%rbp)
	je	.LBB4_10
# BB#11:                                # %cond.false15
	vmovsd	-48(%rbp), %xmm0
	vxorpd	.LCPI4_0(%rip), %xmm0, %xmm0
	jmp	.LBB4_12
.LBB4_10:                               # %cond.true14
	vmovsd	-48(%rbp), %xmm0
.LBB4_12:                               # %cond.end16
	testb	$2, -36(%rbp)
	je	.LBB4_13
# BB#14:                                # %cond.false21
	vmovsd	-56(%rbp), %xmm1
	vxorpd	.LCPI4_0(%rip), %xmm1, %xmm1
	jmp	.LBB4_15
.LBB4_13:                               # %cond.true20
	vmovsd	-56(%rbp), %xmm1
.LBB4_15:                               # %cond.end23
	vaddsd	%xmm1, %xmm0, %xmm0
	popq	%rbp
	ret
.Ltmp32:
	.size	grad, .Ltmp32-grad
	.cfi_endproc

	.align	16, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	movl	$0, -8(%rbp)
	movl	$0, -8(%rbp)
	movl	$256, %eax              # imm = 0x100
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-8(%rbp), %rdx
	movl	permutation(,%rdx,4), %ecx
	movl	%ecx, p(,%rdx,4)
	movl	-8(%rbp), %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	movl	%ecx, p(,%rdx,4)
	incl	-8(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, -8(%rbp)
	jle	.LBB5_2
# BB#3:                                 # %for.end
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.Ltmp38:
	.size	init, .Ltmp38-init
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%e\n"
	.size	.L.str, 4

	.type	p,@object               # @p
	.local	p
	.comm	p,2048,16
	.type	permutation,@object     # @permutation
	.data
	.align	16
permutation:
	.long	151                     # 0x97
	.long	160                     # 0xa0
	.long	137                     # 0x89
	.long	91                      # 0x5b
	.long	90                      # 0x5a
	.long	15                      # 0xf
	.long	131                     # 0x83
	.long	13                      # 0xd
	.long	201                     # 0xc9
	.long	95                      # 0x5f
	.long	96                      # 0x60
	.long	53                      # 0x35
	.long	194                     # 0xc2
	.long	233                     # 0xe9
	.long	7                       # 0x7
	.long	225                     # 0xe1
	.long	140                     # 0x8c
	.long	36                      # 0x24
	.long	103                     # 0x67
	.long	30                      # 0x1e
	.long	69                      # 0x45
	.long	142                     # 0x8e
	.long	8                       # 0x8
	.long	99                      # 0x63
	.long	37                      # 0x25
	.long	240                     # 0xf0
	.long	21                      # 0x15
	.long	10                      # 0xa
	.long	23                      # 0x17
	.long	190                     # 0xbe
	.long	6                       # 0x6
	.long	148                     # 0x94
	.long	247                     # 0xf7
	.long	120                     # 0x78
	.long	234                     # 0xea
	.long	75                      # 0x4b
	.long	0                       # 0x0
	.long	26                      # 0x1a
	.long	197                     # 0xc5
	.long	62                      # 0x3e
	.long	94                      # 0x5e
	.long	252                     # 0xfc
	.long	219                     # 0xdb
	.long	203                     # 0xcb
	.long	117                     # 0x75
	.long	35                      # 0x23
	.long	11                      # 0xb
	.long	32                      # 0x20
	.long	57                      # 0x39
	.long	177                     # 0xb1
	.long	33                      # 0x21
	.long	88                      # 0x58
	.long	237                     # 0xed
	.long	149                     # 0x95
	.long	56                      # 0x38
	.long	87                      # 0x57
	.long	174                     # 0xae
	.long	20                      # 0x14
	.long	125                     # 0x7d
	.long	136                     # 0x88
	.long	171                     # 0xab
	.long	168                     # 0xa8
	.long	68                      # 0x44
	.long	175                     # 0xaf
	.long	74                      # 0x4a
	.long	165                     # 0xa5
	.long	71                      # 0x47
	.long	134                     # 0x86
	.long	139                     # 0x8b
	.long	48                      # 0x30
	.long	27                      # 0x1b
	.long	166                     # 0xa6
	.long	77                      # 0x4d
	.long	146                     # 0x92
	.long	158                     # 0x9e
	.long	231                     # 0xe7
	.long	83                      # 0x53
	.long	111                     # 0x6f
	.long	229                     # 0xe5
	.long	122                     # 0x7a
	.long	60                      # 0x3c
	.long	211                     # 0xd3
	.long	133                     # 0x85
	.long	230                     # 0xe6
	.long	220                     # 0xdc
	.long	105                     # 0x69
	.long	92                      # 0x5c
	.long	41                      # 0x29
	.long	55                      # 0x37
	.long	46                      # 0x2e
	.long	245                     # 0xf5
	.long	40                      # 0x28
	.long	244                     # 0xf4
	.long	102                     # 0x66
	.long	143                     # 0x8f
	.long	54                      # 0x36
	.long	65                      # 0x41
	.long	25                      # 0x19
	.long	63                      # 0x3f
	.long	161                     # 0xa1
	.long	1                       # 0x1
	.long	216                     # 0xd8
	.long	80                      # 0x50
	.long	73                      # 0x49
	.long	209                     # 0xd1
	.long	76                      # 0x4c
	.long	132                     # 0x84
	.long	187                     # 0xbb
	.long	208                     # 0xd0
	.long	89                      # 0x59
	.long	18                      # 0x12
	.long	169                     # 0xa9
	.long	200                     # 0xc8
	.long	196                     # 0xc4
	.long	135                     # 0x87
	.long	130                     # 0x82
	.long	116                     # 0x74
	.long	188                     # 0xbc
	.long	159                     # 0x9f
	.long	86                      # 0x56
	.long	164                     # 0xa4
	.long	100                     # 0x64
	.long	109                     # 0x6d
	.long	198                     # 0xc6
	.long	173                     # 0xad
	.long	186                     # 0xba
	.long	3                       # 0x3
	.long	64                      # 0x40
	.long	52                      # 0x34
	.long	217                     # 0xd9
	.long	226                     # 0xe2
	.long	250                     # 0xfa
	.long	124                     # 0x7c
	.long	123                     # 0x7b
	.long	5                       # 0x5
	.long	202                     # 0xca
	.long	38                      # 0x26
	.long	147                     # 0x93
	.long	118                     # 0x76
	.long	126                     # 0x7e
	.long	255                     # 0xff
	.long	82                      # 0x52
	.long	85                      # 0x55
	.long	212                     # 0xd4
	.long	207                     # 0xcf
	.long	206                     # 0xce
	.long	59                      # 0x3b
	.long	227                     # 0xe3
	.long	47                      # 0x2f
	.long	16                      # 0x10
	.long	58                      # 0x3a
	.long	17                      # 0x11
	.long	182                     # 0xb6
	.long	189                     # 0xbd
	.long	28                      # 0x1c
	.long	42                      # 0x2a
	.long	223                     # 0xdf
	.long	183                     # 0xb7
	.long	170                     # 0xaa
	.long	213                     # 0xd5
	.long	119                     # 0x77
	.long	248                     # 0xf8
	.long	152                     # 0x98
	.long	2                       # 0x2
	.long	44                      # 0x2c
	.long	154                     # 0x9a
	.long	163                     # 0xa3
	.long	70                      # 0x46
	.long	221                     # 0xdd
	.long	153                     # 0x99
	.long	101                     # 0x65
	.long	155                     # 0x9b
	.long	167                     # 0xa7
	.long	43                      # 0x2b
	.long	172                     # 0xac
	.long	9                       # 0x9
	.long	129                     # 0x81
	.long	22                      # 0x16
	.long	39                      # 0x27
	.long	253                     # 0xfd
	.long	19                      # 0x13
	.long	98                      # 0x62
	.long	108                     # 0x6c
	.long	110                     # 0x6e
	.long	79                      # 0x4f
	.long	113                     # 0x71
	.long	224                     # 0xe0
	.long	232                     # 0xe8
	.long	178                     # 0xb2
	.long	185                     # 0xb9
	.long	112                     # 0x70
	.long	104                     # 0x68
	.long	218                     # 0xda
	.long	246                     # 0xf6
	.long	97                      # 0x61
	.long	228                     # 0xe4
	.long	251                     # 0xfb
	.long	34                      # 0x22
	.long	242                     # 0xf2
	.long	193                     # 0xc1
	.long	238                     # 0xee
	.long	210                     # 0xd2
	.long	144                     # 0x90
	.long	12                      # 0xc
	.long	191                     # 0xbf
	.long	179                     # 0xb3
	.long	162                     # 0xa2
	.long	241                     # 0xf1
	.long	81                      # 0x51
	.long	51                      # 0x33
	.long	145                     # 0x91
	.long	235                     # 0xeb
	.long	249                     # 0xf9
	.long	14                      # 0xe
	.long	239                     # 0xef
	.long	107                     # 0x6b
	.long	49                      # 0x31
	.long	192                     # 0xc0
	.long	214                     # 0xd6
	.long	31                      # 0x1f
	.long	181                     # 0xb5
	.long	199                     # 0xc7
	.long	106                     # 0x6a
	.long	157                     # 0x9d
	.long	184                     # 0xb8
	.long	84                      # 0x54
	.long	204                     # 0xcc
	.long	176                     # 0xb0
	.long	115                     # 0x73
	.long	121                     # 0x79
	.long	50                      # 0x32
	.long	45                      # 0x2d
	.long	127                     # 0x7f
	.long	4                       # 0x4
	.long	150                     # 0x96
	.long	254                     # 0xfe
	.long	138                     # 0x8a
	.long	236                     # 0xec
	.long	205                     # 0xcd
	.long	93                      # 0x5d
	.long	222                     # 0xde
	.long	114                     # 0x72
	.long	67                      # 0x43
	.long	29                      # 0x1d
	.long	24                      # 0x18
	.long	72                      # 0x48
	.long	243                     # 0xf3
	.long	141                     # 0x8d
	.long	128                     # 0x80
	.long	195                     # 0xc3
	.long	78                      # 0x4e
	.long	66                      # 0x42
	.long	215                     # 0xd7
	.long	61                      # 0x3d
	.long	156                     # 0x9c
	.long	180                     # 0xb4
	.size	permutation, 1024


	.section	".note.GNU-stack","",@progbits
