	.file	"<stdin>"
	.text
	.globl	list_push_tail
	.align	16, 0x90
	.type	list_push_tail,@function
list_push_tail:                         # @list_push_tail
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
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	incl	(%rax)
	popq	%rbp
	ret
.Ltmp5:
	.size	list_push_tail, .Ltmp5-list_push_tail
	.cfi_endproc

	.globl	list_pop_tail
	.align	16, 0x90
	.type	list_pop_tail,@function
list_pop_tail:                          # @list_pop_tail
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	callq	list_empty
	testl	%eax, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	decl	(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	list_pop_tail, .Ltmp11-list_pop_tail
	.cfi_endproc

	.align	16, 0x90
	.type	list_empty,@function
list_empty:                             # @list_empty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	list_length
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	list_empty, .Ltmp17-list_empty
	.cfi_endproc

	.globl	list_push_head
	.align	16, 0x90
	.type	list_push_head,@function
list_push_head:                         # @list_push_head
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	incl	(%rax)
	popq	%rbp
	ret
.Ltmp23:
	.size	list_push_head, .Ltmp23-list_push_head
	.cfi_endproc

	.globl	list_pop_head
	.align	16, 0x90
	.type	list_pop_head,@function
list_pop_head:                          # @list_pop_head
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	callq	list_empty
	testl	%eax, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	decl	(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp29:
	.size	list_pop_head, .Ltmp29-list_pop_head
	.cfi_endproc

	.globl	list_equal
	.align	16, 0x90
	.type	list_equal,@function
list_equal:                             # @list_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_4:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
.LBB5_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB5_5
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB5_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_8
.LBB5_5:                                # %for.end
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB5_7
# BB#6:                                 # %if.then8
	movl	$0, -4(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.end9
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB5_8:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.Ltmp35:
	.size	list_equal, .Ltmp35-list_equal
	.cfi_endproc

	.globl	list_print
	.align	16, 0x90
	.type	list_print,@function
list_print:                             # @list_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	8(%rsi), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	puts
	movq	-16(%rbp), %rdi
	callq	list_length
	movl	$.L.str, %edi
	movl	%eax, %esi
	xorb	%al, %al
	callq	printf
	movq	-16(%rbp), %rax
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_2:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %esi
	incl	%esi
	movl	%esi, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rax), %rcx
	movl	(%rcx), %r8d
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
	movq	-24(%rbp), %rax
.LBB6_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_2
# BB#3:                                 # %for.end
	movl	$.L.str2, %edi
	xorb	%al, %al
	callq	printf
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	$.L.str3, %edi
	xorb	%al, %al
	callq	printf
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp41:
	.size	list_print, .Ltmp41-list_print
	.cfi_endproc

	.align	16, 0x90
	.type	list_length,@function
list_length:                            # @list_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	(%rdi), %eax
	popq	%rbp
	ret
.Ltmp47:
	.size	list_length, .Ltmp47-list_length
	.cfi_endproc

	.globl	list_new
	.align	16, 0x90
	.type	list_new,@function
list_new:                               # @list_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$24, %edi
	callq	malloc
	movq	%rax, -8(%rbp)
	movq	%rax, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp53:
	.size	list_new, .Ltmp53-list_new
	.cfi_endproc

	.globl	list_sequence
	.align	16, 0x90
	.type	list_sequence,@function
list_sequence:                          # @list_sequence
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	%esi, -4(%rbp)
	jle	.LBB9_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB9_2:                                # %if.end
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -12(%rbp)
	addl	$2, %eax
	movslq	%eax, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	decl	-4(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	jmp	.LBB9_3
	.align	16, 0x90
.LBB9_4:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-20(%rbp), %rax
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	-32(%rbp), %rcx
	leaq	(%rcx,%rdx,8), %rdx
	leaq	(%rax,%rax,2), %rax
	movq	%rdx, 8(%rcx,%rax,8)
	movslq	-24(%rbp), %rax
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	-32(%rbp), %rcx
	leaq	(%rcx,%rdx,8), %rdx
	leaq	(%rax,%rax,2), %rax
	movq	%rdx, 16(%rcx,%rax,8)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movslq	-20(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,8)
	incl	-20(%rbp)
	incl	-24(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB9_4
# BB#5:                                 # %for.end
	movslq	-12(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	-32(%rbp), %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 16(%rcx)
	movslq	-12(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 8(%rcx,%rax,8)
	movslq	-12(%rbp), %rax
	leal	-1(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	movq	-32(%rbp), %rcx
	leaq	(%rcx,%rdx,8), %rdx
	leaq	(%rax,%rax,2), %rax
	movq	%rdx, 16(%rcx,%rax,8)
	movslq	-12(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %edx
	movl	%edx, (%rcx,%rax,8)
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp59:
	.size	list_sequence, .Ltmp59-list_sequence
	.cfi_endproc

	.globl	list_copy
	.align	16, 0x90
	.type	list_copy,@function
list_copy:                              # @list_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	list_length
	movl	%eax, -20(%rbp)
	incl	%eax
	movslq	%eax, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, -40(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -16(%rbp)
	movq	-8(%rbp), %rax
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_2:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-16(%rbp), %rax
	leaq	(%rax,%rax,2), %rcx
	movq	-40(%rbp), %rax
	leaq	(%rax,%rcx,8), %rcx
	movslq	-12(%rbp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movq	%rcx, 8(%rax,%rdx,8)
	movslq	-12(%rbp), %rax
	leaq	(%rax,%rax,2), %rcx
	movq	-40(%rbp), %rax
	leaq	(%rax,%rcx,8), %rcx
	movslq	-16(%rbp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movq	%rcx, 16(%rax,%rdx,8)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	-12(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,8)
	incl	-12(%rbp)
	incl	-16(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
.LBB10_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB10_2
# BB#3:                                 # %for.end
	movslq	-20(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	-40(%rbp), %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 16(%rcx)
	movslq	-20(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rcx,%rax,8)
	movq	-8(%rbp), %rdi
	callq	list_last
	movl	(%rax), %eax
	movslq	-20(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,8)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp65:
	.size	list_copy, .Ltmp65-list_copy
	.cfi_endproc

	.align	16, 0x90
	.type	list_last,@function
list_last:                              # @list_last
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	16(%rdi), %rax
	popq	%rbp
	ret
.Ltmp71:
	.size	list_last, .Ltmp71-list_last
	.cfi_endproc

	.globl	list_reverse
	.align	16, 0x90
	.type	list_reverse,@function
list_reverse:                           # @list_reverse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -24(%rbp)
	.align	16, 0x90
.LBB12_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB12_1
# BB#2:                                 # %do.end
	popq	%rbp
	ret
.Ltmp77:
	.size	list_reverse, .Ltmp77-list_reverse
	.cfi_endproc

	.globl	test_lists
	.align	16, 0x90
	.type	test_lists,@function
test_lists:                             # @test_lists
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp84:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	$1, %edi
	movl	$100, %esi
	callq	list_sequence
	movq	%rax, -24(%rbp)
	movq	%rax, %rdi
	callq	list_copy
	movq	%rax, -32(%rbp)
	callq	list_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	list_equal
	testl	%eax, %eax
	jne	.LBB13_3
# BB#1:                                 # %if.then
	movl	$.L.str4, %edi
	jmp	.LBB13_2
	.align	16, 0x90
.LBB13_4:                               # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %rdi
	callq	list_pop_head
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	list_push_tail
.LBB13_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	list_empty
	testl	%eax, %eax
	je	.LBB13_4
# BB#5:                                 # %while.end
	movq	-32(%rbp), %rdi
	callq	list_empty
	testl	%eax, %eax
	jne	.LBB13_7
# BB#6:                                 # %if.then10
	movl	$.L.str5, %edi
	jmp	.LBB13_2
	.align	16, 0x90
.LBB13_8:                               # %while.body17
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %rdi
	callq	list_pop_tail
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	list_push_tail
.LBB13_7:                               # %while.cond13
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	callq	list_empty
	testl	%eax, %eax
	je	.LBB13_8
# BB#9:                                 # %while.end19
	movq	-40(%rbp), %rdi
	callq	list_empty
	testl	%eax, %eax
	je	.LBB13_10
# BB#11:                                # %if.end24
	movq	-24(%rbp), %rdi
	callq	list_reverse
	movq	-24(%rbp), %rdi
	callq	list_first
	cmpl	$100, (%rax)
	jne	.LBB13_12
# BB#13:                                # %if.end30
	movq	-24(%rbp), %rdi
	callq	list_last
	cmpl	$1, (%rax)
	jne	.LBB13_14
# BB#18:                                # %if.end38
	movq	-32(%rbp), %rdi
	callq	list_first
	cmpl	$100, (%rax)
	jne	.LBB13_19
# BB#20:                                # %if.end46
	movq	-32(%rbp), %rdi
	callq	list_last
	cmpl	$1, (%rax)
	jne	.LBB13_21
# BB#22:                                # %if.end54
	movq	-24(%rbp), %rdi
	callq	list_length
	cmpl	$100, %eax
	jne	.LBB13_23
# BB#24:                                # %if.end60
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	list_equal
	testl	%eax, %eax
	je	.LBB13_25
# BB#26:                                # %if.end65
	movq	-24(%rbp), %rdi
	callq	list_length
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rdi
	callq	free
	movq	-32(%rbp), %rdi
	callq	free
	movq	-40(%rbp), %rdi
	callq	free
	movl	-12(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LBB13_10:                              # %if.then22
	movl	$.L.str6, %edi
	jmp	.LBB13_2
.LBB13_12:                              # %if.then26
	movq	-24(%rbp), %rdi
	callq	list_first
	movl	(%rax), %edx
	movl	$.L.str7, %edi
	jmp	.LBB13_16
.LBB13_14:                              # %if.then34
	movq	-24(%rbp), %rdi
	jmp	.LBB13_15
.LBB13_19:                              # %if.then42
	movq	-32(%rbp), %rdi
	callq	list_first
	movl	(%rax), %edx
	movl	$.L.str9, %edi
	jmp	.LBB13_16
.LBB13_21:                              # %if.then50
	movq	-32(%rbp), %rdi
.LBB13_15:                              # %if.then34
	callq	list_last
	movl	(%rax), %edx
	movl	$.L.str8, %edi
.LBB13_16:                              # %if.then34
	movl	$100, %esi
	jmp	.LBB13_17
.LBB13_23:                              # %if.then57
	movq	-24(%rbp), %rdi
	callq	list_length
	movl	$.L.str10, %edi
	movl	$100, %esi
	movl	%eax, %edx
.LBB13_17:                              # %if.then34
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB13_25:                              # %if.then63
	movl	$.L.str11, %edi
.LBB13_2:                               # %if.then
	xorb	%al, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.Ltmp85:
	.size	test_lists, .Ltmp85-test_lists
	.cfi_endproc

	.align	16, 0x90
	.type	list_first,@function
list_first:                             # @list_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rax
	popq	%rbp
	ret
.Ltmp91:
	.size	list_first, .Ltmp91-list_first
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$3000000, %eax          # imm = 0x2DC6C0
	cmpl	$2, -8(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB15_2:                               # %cond.end
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.LBB15_3
	.align	16, 0x90
.LBB15_4:                               # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	callq	test_lists
	movl	%eax, -24(%rbp)
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, -20(%rbp)
	testl	%eax, %eax
	jne	.LBB15_4
# BB#5:                                 # %while.end
	movl	-24(%rbp), %esi
	movl	$.L.str12, %edi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp97:
	.size	main, .Ltmp97-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "length: %d\n"
	.size	.L.str, 12

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "i:%3d  v:%3d  n:%3d  p:%3d\n"
	.size	.L.str1, 28

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "[last entry points to list head]\n"
	.size	.L.str2, 34

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "[val of next of tail is:  %d]\n"
	.size	.L.str3, 31

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "li2 and li1 are not equal\n"
	.size	.L.str4, 27

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "li2 should be empty now\n"
	.size	.L.str5, 25

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "li3 should be empty now\n"
	.size	.L.str6, 25

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "li1 first value wrong, wanted %d, got %d\n"
	.size	.L.str7, 42

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "last value wrong, wanted %d, got %d\n"
	.size	.L.str8, 37

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "li2 first value wrong, wanted %d, got %d\n"
	.size	.L.str9, 42

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "li1 size wrong, wanted %d, got %d\n"
	.size	.L.str10, 35

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "li1 and li2 are not equal\n"
	.size	.L.str11, 27

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "%d\n"
	.size	.L.str12, 4


	.section	".note.GNU-stack","",@progbits
