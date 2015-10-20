	.file	"<stdin>"
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$10000000, %eax         # imm = 0x989680
	cmpl	$2, -16(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB0_2:                                # %cond.end
	movl	%eax, -28(%rbp)
	movl	$32, -36(%rbp)
	movslq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	calloc
	movq	%rax, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$6, -60(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_3
# BB#5:                                 # %if.end
	movl	$0, -32(%rbp)
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_11:                               # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-56(%rbp), %rdi
	movl	$.L.str2, %esi
	callq	strcat
	movslq	-60(%rbp), %rax
	addq	%rax, -56(%rbp)
	incl	-32(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-60(%rbp), %eax
	incl	%eax
	movslq	%eax, %rax
	movslq	-36(%rbp), %rcx
	addq	-48(%rbp), %rcx
	subq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB0_11
# BB#8:                                 # %if.then7
                                        #   in Loop: Header=BB0_6 Depth=1
	shll	-36(%rbp)
	movslq	-36(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	realloc
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB0_9
# BB#10:                                # %if.end12
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	addq	%rbx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_11
.LBB0_12:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	strlen
	movl	$.L.str3, %edi
	movl	%eax, %esi
	xorb	%al, %al
	callq	printf
	movq	-48(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LBB0_3:                                # %if.then
	movl	$.L.str, %edi
	jmp	.LBB0_4
.LBB0_9:                                # %if.then11
	movl	$.L.str1, %edi
.LBB0_4:                                # %if.then
	callq	perror
	movl	$1, %edi
	callq	exit
.Ltmp7:
	.size	main, .Ltmp7-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "calloc strbuf"
	.size	.L.str, 14

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "realloc strbuf"
	.size	.L.str1, 15

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "hello\n"
	.size	.L.str2, 7

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "%d\n"
	.size	.L.str3, 4


	.section	".note.GNU-stack","",@progbits
