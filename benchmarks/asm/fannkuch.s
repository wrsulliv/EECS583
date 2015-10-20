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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$11, -20(%rbp)
	movl	$11, %edi
	callq	fannkuch
	movl	$.L.str, %edi
	movl	$11, %esi
	movq	%rax, %rdx
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	main, .Ltmp5-main
	.cfi_endproc

	.align	16, 0x90
	.type	fannkuch,@function
fannkuch:                               # @fannkuch
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
	subq	$96, %rsp
	movl	%edi, -12(%rbp)
	decl	%edi
	movl	%edi, -76(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB1_1
# BB#2:                                 # %if.end
	movslq	-12(%rbp), %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, -24(%rbp)
	movslq	-12(%rbp), %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, -32(%rbp)
	movslq	-12(%rbp), %rdi
	movl	$4, %esi
	callq	calloc
	movq	%rax, -40(%rbp)
	movl	$0, -64(%rbp)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx,%rax,4)
	incl	-64(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB1_4
# BB#5:                                 # %for.end
	movl	-12(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -72(%rbp)
	movq	$0, -56(%rbp)
.LBB1_6:                                # %for.cond7
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_19 Depth 2
                                        #       Child Loop BB1_20 Depth 3
                                        #     Child Loop BB1_25 Depth 2
                                        #       Child Loop BB1_29 Depth 3
	cmpl	$29, -72(%rbp)
	jg	.LBB1_11
# BB#7:                                 # %if.then10
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$0, -64(%rbp)
	jmp	.LBB1_8
	.align	16, 0x90
.LBB1_9:                                # %for.inc18
                                        #   in Loop: Header=BB1_8 Depth=2
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	incl	%esi
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	incl	-64(%rbp)
.LBB1_8:                                # %for.cond11
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB1_9
# BB#10:                                # %for.end20
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	incl	-72(%rbp)
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_12:                               # %for.inc31
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-60(%rbp), %eax
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	decl	-60(%rbp)
.LBB1_11:                               # %for.cond24
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -60(%rbp)
	jne	.LBB1_12
# BB#13:                                # %for.end32
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB1_25
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	-76(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	%eax, (%rcx,%rax,4)
	je	.LBB1_25
# BB#15:                                # %if.then40
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	$0, -48(%rbp)
	movl	$1, -64(%rbp)
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_17:                               # %for.inc49
                                        #   in Loop: Header=BB1_16 Depth=2
	movslq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, (%rdx,%rax,4)
	incl	-64(%rbp)
.LBB1_16:                               # %for.cond41
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB1_17
# BB#18:                                # %for.end51
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	.align	16, 0x90
.LBB1_19:                               # %do.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_20 Depth 3
	movl	$1, -64(%rbp)
	movl	-68(%rbp), %eax
	decl	%eax
	movl	%eax, -80(%rbp)
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_21:                               # %for.inc66
                                        #   in Loop: Header=BB1_20 Depth=3
	movslq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -84(%rbp)
	movslq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	(%rax,%rcx,4), %ecx
	movslq	-64(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
	movq	-24(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movl	-84(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	incl	-64(%rbp)
	decl	-80(%rbp)
.LBB1_20:                               # %for.cond54
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-64(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.LBB1_21
# BB#22:                                # %do.cond
                                        #   in Loop: Header=BB1_19 Depth=2
	incq	-48(%rbp)
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -80(%rbp)
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx,%rax,4)
	movl	-80(%rbp), %eax
	movl	%eax, -68(%rbp)
	testl	%eax, %eax
	jne	.LBB1_19
# BB#23:                                # %do.end
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB1_25
# BB#24:                                # %if.then77
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_25
	.align	16, 0x90
.LBB1_32:                               # %if.end101
                                        #   in Loop: Header=BB1_25 Depth=2
	incl	-60(%rbp)
.LBB1_25:                               # %for.cond80
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_29 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB1_26
# BB#28:                                # %if.end84
                                        #   in Loop: Header=BB1_25 Depth=2
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rbp)
	movl	$0, -64(%rbp)
	jmp	.LBB1_29
	.align	16, 0x90
.LBB1_30:                               # %while.body
                                        #   in Loop: Header=BB1_29 Depth=3
	movl	-64(%rbp), %eax
	incl	%eax
	movl	%eax, -68(%rbp)
	movslq	-68(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	(%rax,%rcx,4), %ecx
	movslq	-64(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB1_29:                               # %while.cond
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB1_30
# BB#31:                                # %while.end
                                        #   in Loop: Header=BB1_25 Depth=2
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	-88(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	decl	%edx
	movl	%edx, (%rcx,%rax,4)
	testl	%edx, %edx
	jg	.LBB1_6
	jmp	.LBB1_32
.LBB1_26:                               # %if.then83
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_27
.LBB1_1:                                # %if.then
	movq	$0, -8(%rbp)
.LBB1_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	fannkuch, .Ltmp11-fannkuch
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Pfannkuchen(%d) = %ld\n"
	.size	.L.str, 23

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "%d"
	.size	.L.str1, 3

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "\n"
	.size	.L.str2, 2


	.section	".note.GNU-stack","",@progbits
