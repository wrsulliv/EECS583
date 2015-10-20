	.file	"<stdin>"
	.text
	.globl	salsa20
	.align	16, 0x90
	.type	salsa20,@function
salsa20:                                # @salsa20
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
	movl	$0, -20(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	movl	%ecx, -96(%rbp,%rax,4)
	incl	-20(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -20(%rbp)
	jbe	.LBB0_2
# BB#3:                                 # %for.end
	movl	$20, -20(%rbp)
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                # %for.inc353
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-96(%rbp), %eax
	addl	-48(%rbp), %eax
	roll	$7, %eax
	xorl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	addl	-96(%rbp), %eax
	roll	$9, %eax
	xorl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	addl	-80(%rbp), %eax
	roll	$13, %eax
	xorl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	addl	-64(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	addl	-92(%rbp), %eax
	roll	$7, %eax
	xorl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	addl	-76(%rbp), %eax
	roll	$9, %eax
	xorl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	addl	-60(%rbp), %eax
	roll	$13, %eax
	xorl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	addl	-44(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -76(%rbp)
	movl	-56(%rbp), %eax
	addl	-72(%rbp), %eax
	roll	$7, %eax
	xorl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	addl	-56(%rbp), %eax
	roll	$9, %eax
	xorl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	addl	-40(%rbp), %eax
	roll	$13, %eax
	xorl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	addl	-88(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	addl	-52(%rbp), %eax
	roll	$7, %eax
	xorl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	addl	-36(%rbp), %eax
	roll	$9, %eax
	xorl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	addl	-84(%rbp), %eax
	roll	$13, %eax
	xorl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	addl	-68(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -36(%rbp)
	movl	-96(%rbp), %eax
	addl	-84(%rbp), %eax
	roll	$7, %eax
	xorl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	addl	-96(%rbp), %eax
	roll	$9, %eax
	xorl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	addl	-92(%rbp), %eax
	roll	$13, %eax
	xorl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	addl	-88(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -96(%rbp)
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	roll	$7, %eax
	xorl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	addl	-76(%rbp), %eax
	roll	$9, %eax
	xorl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	addl	-72(%rbp), %eax
	roll	$13, %eax
	xorl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	addl	-68(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -76(%rbp)
	movl	-56(%rbp), %eax
	addl	-60(%rbp), %eax
	roll	$7, %eax
	xorl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	addl	-56(%rbp), %eax
	roll	$9, %eax
	xorl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	addl	-52(%rbp), %eax
	roll	$13, %eax
	xorl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	addl	-64(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	addl	-40(%rbp), %eax
	roll	$7, %eax
	xorl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	addl	-36(%rbp), %eax
	roll	$9, %eax
	xorl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	addl	-48(%rbp), %eax
	roll	$13, %eax
	xorl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	addl	-44(%rbp), %eax
	roll	$18, %eax
	xorl	%eax, -36(%rbp)
	addl	$-2, -20(%rbp)
.LBB0_4:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB0_5
# BB#6:                                 # %for.end354
	movl	$0, -20(%rbp)
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_8:                                # %for.inc365
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-20(%rbp), %eax
	movl	-96(%rbp,%rax,4), %ecx
	movq	-16(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
	incl	-20(%rbp)
.LBB0_7:                                # %for.cond355
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -20(%rbp)
	jbe	.LBB0_8
# BB#9:                                 # %for.end367
	popq	%rbp
	ret
.Ltmp5:
	.size	salsa20, .Ltmp5-salsa20
	.cfi_endproc

	.globl	salsa
	.align	16, 0x90
	.type	salsa,@function
salsa:                                  # @salsa
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
	cmpl	$0, ptr(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$outbuf, %edi
	movl	$STATE, %esi
	callq	salsa20
	incl	STATE(%rip)
.LBB1_2:                                # %if.end
	movl	ptr(%rip), %eax
	incl	%eax
	andl	$15, %eax
	movl	%eax, ptr(%rip)
	movl	ptr(%rip), %eax
	movl	outbuf(,%rax,4), %eax
	popq	%rbp
	ret
.Ltmp11:
	.size	salsa, .Ltmp11-salsa
	.cfi_endproc

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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$537919488, -16(%rbp)   # imm = 0x20100000
	movl	$0, -20(%rbp)
	movl	$0, -12(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	movl	$-559038737, %ecx       # imm = 0xFFFFFFFFDEADBEEF
	subl	%eax, %ecx
	leal	-307516430(%rax), %edx
	xorl	%ecx, %edx
	movl	%edx, STATE(,%rax,4)
	incl	-12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -12(%rbp)
	jbe	.LBB2_2
# BB#3:                                 # %for.end
	movl	$0, -12(%rbp)
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_5:                                # %for.body4
                                        #   in Loop: Header=BB2_4 Depth=1
	callq	salsa
	incl	-12(%rbp)
.LBB2_4:                                # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jb	.LBB2_5
# BB#6:                                 # %for.end7
	callq	salsa
	movl	%eax, -8(%rbp)
	addl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$.L.str, %edi
	movl	%eax, %esi
	xorb	%al, %al
	callq	printf
	movl	$.L.str1, %edi
	movl	$-162172867, %esi       # imm = 0xFFFFFFFFF655703D
	xorb	%al, %al
	callq	printf
	cmpl	$-162172867, -8(%rbp)   # imm = 0xFFFFFFFFF655703D
	setne	%al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	main, .Ltmp17-main
	.cfi_endproc

	.type	ptr,@object             # @ptr
	.bss
	.globl	ptr
	.align	4
ptr:
	.long	0                       # 0x0
	.size	ptr, 4

	.type	outbuf,@object          # @outbuf
	.comm	outbuf,64,16
	.type	STATE,@object           # @STATE
	.comm	STATE,64,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "got:       %x\n"
	.size	.L.str, 15

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "should be: %x\n"
	.size	.L.str1, 15


	.section	".note.GNU-stack","",@progbits
