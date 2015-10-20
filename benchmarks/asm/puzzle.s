	.file	"<stdin>"
	.text
	.globl	rand
	.align	16, 0x90
	.type	rand,@function
rand:                                   # @rand
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
	imulq	$1103515245, next(%rip), %rcx # imm = 0x41C64E6D
	addq	$12345, %rcx            # imm = 0x3039
	movq	%rcx, %rax
	shrq	$16, %rax
	movl	%eax, %eax
	imulq	$131077, %rax, %rdx     # imm = 0x20005
	shrq	$32, %rdx
	movq	%rcx, next(%rip)
	movl	%eax, %ecx
	subl	%edx, %ecx
	shrl	%ecx
	addl	%edx, %ecx
	shrl	$14, %ecx
	imull	$32767, %ecx, %ecx      # imm = 0x7FFF
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	popq	%rbp
	ret
.Ltmp5:
	.size	rand, .Ltmp5-rand
	.cfi_endproc

	.globl	srand
	.align	16, 0x90
	.type	srand,@function
srand:                                  # @srand
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	%rax, next(%rip)
	popq	%rbp
	ret
.Ltmp11:
	.size	srand, .Ltmp11-srand
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4674736413210574848     # double 32768
	.text
	.globl	randInt
	.align	16, 0x90
	.type	randInt,@function
randInt:                                # @randInt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	movl	%esi, %ebx
	movl	%edi, -12(%rbp)
	movl	%ebx, -16(%rbp)
	subl	-12(%rbp), %ebx
	incl	%ebx
	movl	%ebx, -24(%rbp)
	callq	rand
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vdivsd	.LCPI2_0(%rip), %xmm0, %xmm0
	vcvtsi2sdl	%ebx, %xmm0, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	cmpl	-24(%rbp), %eax
	jne	.LBB2_2
# BB#1:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %ecx
	leal	-1(%rcx,%rax), %eax
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	-20(%rbp), %eax
	addl	-12(%rbp), %eax
.LBB2_3:                                # %cond.end
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp19:
	.size	randInt, .Ltmp19-randInt
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4674736413210574848     # double 32768
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI3_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.globl	shuffle
	.align	16, 0x90
	.type	shuffle,@function
shuffle:                                # @shuffle
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp26:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	decl	%esi
	movslq	%esi, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_5:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	(%rax,%rcx,4), %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	-52(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	decq	-48(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB3_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rbx
	callq	rand
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vdivsd	.LCPI3_0(%rip), %xmm0, %xmm0
	incq	%rbx
	vmovd	%rbx, %xmm1
	vpunpckldq	.LCPI3_1(%rip), %xmm1, %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	vsubpd	.LCPI3_2(%rip), %xmm1, %xmm1
	vhaddpd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vcvttsd2si	%xmm0, %eax
	movslq	%eax, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rcx
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB3_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	decq	%rax
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_4:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB3_5
.LBB3_6:                                # %for.end
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp27:
	.size	shuffle, .Ltmp27-shuffle
	.cfi_endproc

	.globl	createRandomArray
	.align	16, 0x90
	.type	createRandomArray,@function
createRandomArray:                      # @createRandomArray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	incl	%edi
	movl	%edi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_2:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx,%rax,4)
	incl	-8(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB4_2
# BB#3:                                 # %for.end
	movl	-4(%rbp), %esi
	movl	$1, %edi
	callq	randInt
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdi
	callq	shuffle
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp33:
	.size	createRandomArray, .Ltmp33-createRandomArray
	.cfi_endproc

	.globl	findDuplicate
	.align	16, 0x90
	.type	findDuplicate,@function
findDuplicate:                          # @findDuplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-16(%rbp), %rax
	leal	1(%rax), %ecx
	xorl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdx
	xorl	(%rdx,%rax,4), %ecx
	movl	%ecx, -20(%rbp)
	incl	-16(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB5_2
# BB#3:                                 # %for.end
	movl	-20(%rbp), %eax
	xorl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	popq	%rbp
	ret
.Ltmp39:
	.size	findDuplicate, .Ltmp39-findDuplicate
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$1, %edi
	callq	srand
	movl	$0, -8(%rbp)
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_5:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	free
	movl	-16(%rbp), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	incl	-8(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	cmpl	$4, -8(%rbp)
	jg	.LBB6_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$500000, %edi           # imm = 0x7A120
	callq	createRandomArray
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_4:                                # %for.body3
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-24(%rbp), %rdi
	movl	$500001, %esi           # imm = 0x7A121
	callq	findDuplicate
	movl	%eax, -16(%rbp)
	incl	-12(%rbp)
.LBB6_3:                                # %for.cond1
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$199, -12(%rbp)
	jg	.LBB6_5
	jmp	.LBB6_4
.LBB6_6:                                # %for.end8
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp45:
	.size	main, .Ltmp45-main
	.cfi_endproc

	.type	next,@object            # @next
	.data
	.align	8
next:
	.quad	1                       # 0x1
	.size	next, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Found duplicate: %d\n"
	.size	.L.str, 21


	.section	".note.GNU-stack","",@progbits
