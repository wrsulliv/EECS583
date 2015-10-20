	.file	"<stdin>"
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
	movl	$170000, %eax           # imm = 0x29810
	cmpl	$2, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB0_2:                                # %cond.end
	movl	%eax, -20(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_4:                                # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -44(%rbp)
	movq	$2, -32(%rbp)
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=2
	movq	-32(%rbp), %rax
	movb	$1, main.flags(%rax)
	incq	-32(%rbp)
.LBB0_5:                                # %for.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$8192, -32(%rbp)        # imm = 0x2000
	jle	.LBB0_6
# BB#7:                                 # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	$2, -32(%rbp)
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_14:                               # %for.inc16
                                        #   in Loop: Header=BB0_8 Depth=2
	incq	-32(%rbp)
.LBB0_8:                                # %for.cond3
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	cmpq	$8192, -32(%rbp)        # imm = 0x2000
	jg	.LBB0_3
# BB#9:                                 # %for.body5
                                        #   in Loop: Header=BB0_8 Depth=2
	movq	-32(%rbp), %rax
	cmpb	$0, main.flags(%rax)
	je	.LBB0_14
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB0_8 Depth=2
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_12:                               # %for.inc12
                                        #   in Loop: Header=BB0_11 Depth=3
	movq	-40(%rbp), %rax
	movb	$0, main.flags(%rax)
	movq	-32(%rbp), %rax
	addq	%rax, -40(%rbp)
.LBB0_11:                               # %for.cond8
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$8192, -40(%rbp)        # imm = 0x2000
	jle	.LBB0_12
# BB#13:                                # %for.end14
                                        #   in Loop: Header=BB0_8 Depth=2
	incl	-44(%rbp)
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -20(%rbp)
	testl	%eax, %eax
	jne	.LBB0_4
# BB#15:                                # %while.end
	movl	-44(%rbp), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.type	main.flags,@object      # @main.flags
	.local	main.flags
	.comm	main.flags,8193,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Count: %d\n"
	.size	.L.str, 11


	.section	".note.GNU-stack","",@progbits
