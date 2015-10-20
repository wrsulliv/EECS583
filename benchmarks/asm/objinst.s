	.file	"<stdin>"
	.text
	.globl	toggle_value
	.align	16, 0x90
	.type	toggle_value,@function
toggle_value:                           # @toggle_value
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
	movsbl	(%rdi), %eax
	popq	%rbp
	ret
.Ltmp5:
	.size	toggle_value, .Ltmp5-toggle_value
	.cfi_endproc

	.globl	toggle_activate
	.align	16, 0x90
	.type	toggle_activate,@function
toggle_activate:                        # @toggle_activate
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
	cmpb	$0, (%rdi)
	sete	(%rdi)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.Ltmp11:
	.size	toggle_activate, .Ltmp11-toggle_activate
	.cfi_endproc

	.globl	init_Toggle
	.align	16, 0x90
	.type	init_Toggle,@function
init_Toggle:                            # @init_Toggle
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
	movq	%rdi, -8(%rbp)
	movb	%sil, -9(%rbp)
	movq	-8(%rbp), %rax
	movb	%sil, (%rax)
	movq	-8(%rbp), %rax
	movq	$toggle_value, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$toggle_activate, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.Ltmp17:
	.size	init_Toggle, .Ltmp17-init_Toggle
	.cfi_endproc

	.globl	new_Toggle
	.align	16, 0x90
	.type	new_Toggle,@function
new_Toggle:                             # @new_Toggle
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
	subq	$16, %rsp
	movb	%dil, -1(%rbp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	movsbl	-1(%rbp), %esi
	movq	%rax, %rdi
	callq	init_Toggle
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp23:
	.size	new_Toggle, .Ltmp23-new_Toggle
	.cfi_endproc

	.globl	nth_toggle_activate
	.align	16, 0x90
	.type	nth_toggle_activate,@function
nth_toggle_activate:                    # @nth_toggle_activate
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
	movq	%rdi, -8(%rbp)
	movl	28(%rdi), %eax
	incl	%eax
	movl	%eax, 28(%rdi)
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	sete	(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.Ltmp29:
	.size	nth_toggle_activate, .Ltmp29-nth_toggle_activate
	.cfi_endproc

	.globl	init_NthToggle
	.align	16, 0x90
	.type	init_NthToggle,@function
init_NthToggle:                         # @init_NthToggle
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	%esi, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movq	$nth_toggle_activate, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.Ltmp35:
	.size	init_NthToggle, .Ltmp35-init_NthToggle
	.cfi_endproc

	.globl	new_NthToggle
	.align	16, 0x90
	.type	new_NthToggle,@function
new_NthToggle:                          # @new_NthToggle
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
	subq	$16, %rsp
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	movl	$32, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	movsbl	-1(%rbp), %esi
	movq	%rax, %rdi
	callq	init_Toggle
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	%rax, %rdi
	callq	init_NthToggle
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp41:
	.size	new_NthToggle, .Ltmp41-new_NthToggle
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp48:
	.cfi_offset %rbx, -24
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$70000000, %eax         # imm = 0x42C1D80
	cmpl	$2, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB7_2:                                # %cond.end
	movl	%eax, -32(%rbp)
	movl	$1, %edi
	callq	new_Toggle
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$.L.str, %ebx
	jmp	.LBB7_3
	.align	16, 0x90
.LBB7_4:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	*16(%rdi)
	movq	-40(%rbp), %rdi
	callq	*8(%rax)
	movsbl	%al, %eax
	testl	%eax, %eax
	movl	$.L.str1, %edi
	cmovneq	%rbx, %rdi
	callq	puts
	incl	-28(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -28(%rbp)
	jle	.LBB7_4
# BB#5:                                 # %for.end
	movq	-40(%rbp), %rdi
	callq	free
	movl	$0, -28(%rbp)
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_7:                                # %for.inc13
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	$1, %edi
	callq	new_Toggle
	movq	%rax, -40(%rbp)
	movq	%rax, %rdi
	callq	free
	incl	-28(%rbp)
.LBB7_6:                                # %for.cond8
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.LBB7_7
# BB#8:                                 # %for.end15
	movl	$.L.str2, %edi
	callq	puts
	movl	$1, %edi
	movl	$3, %esi
	callq	new_NthToggle
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_13:                               # %for.inc29
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	-56(%rbp), %rdi
	callq	puts
	incl	-28(%rbp)
.LBB7_9:                                # %for.cond18
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -28(%rbp)
	jg	.LBB7_14
# BB#10:                                # %for.body21
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	-48(%rbp), %rdi
	callq	*16(%rdi)
	movq	-48(%rbp), %rdi
	callq	*8(%rax)
	testb	%al, %al
	je	.LBB7_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	$.L.str, -56(%rbp)
	jmp	.LBB7_13
	.align	16, 0x90
.LBB7_12:                               # %if.else
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	$.L.str1, -56(%rbp)
	jmp	.LBB7_13
.LBB7_14:                               # %for.end31
	movq	-48(%rbp), %rdi
	callq	free
	movl	$0, -28(%rbp)
	jmp	.LBB7_15
	.align	16, 0x90
.LBB7_16:                               # %for.inc37
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	$1, %edi
	movl	$3, %esi
	callq	new_NthToggle
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	callq	free
	incl	-28(%rbp)
.LBB7_15:                               # %for.cond32
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.LBB7_16
# BB#17:                                # %for.end39
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp49:
	.size	main, .Ltmp49-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "true"
	.size	.L.str, 5

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "false"
	.size	.L.str1, 6

	.type	.L.str2,@object         # @.str2
.L.str2:
	.zero	1
	.size	.L.str2, 1


	.section	".note.GNU-stack","",@progbits
