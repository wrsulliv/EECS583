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
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$500000000, %eax        # imm = 0x1DCD6500
	cmpl	$2, -8(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
.LBB7_2:                                # %cond.end
	movl	%eax, -24(%rbp)
	movb	$1, -41(%rbp)
	movl	$1, %edi
	callq	new_Toggle
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB7_3
	.align	16, 0x90
.LBB7_4:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	*16(%rdi)
	movq	-32(%rbp), %rdi
	callq	*8(%rax)
	movb	%al, -41(%rbp)
	incl	-20(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB7_4
# BB#5:                                 # %for.end
	movl	$.L.str, %eax
	movl	$.L.str1, %edi
	movsbl	-41(%rbp), %ecx
	testl	%ecx, %ecx
	cmovneq	%rax, %rdi
	callq	puts
	movq	-32(%rbp), %rdi
	callq	free
	movb	$1, -41(%rbp)
	movsbl	-41(%rbp), %edi
	movl	$3, %esi
	callq	new_NthToggle
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_7:                                # %for.inc18
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	*16(%rdi)
	movq	-40(%rbp), %rdi
	callq	*8(%rax)
	movb	%al, -41(%rbp)
	incl	-20(%rbp)
.LBB7_6:                                # %for.cond9
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB7_7
# BB#8:                                 # %for.end20
	movl	$.L.str, %eax
	movl	$.L.str1, %edi
	movsbl	-41(%rbp), %ecx
	testl	%ecx, %ecx
	cmovneq	%rax, %rdi
	callq	puts
	movq	-40(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp47:
	.size	main, .Ltmp47-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "true\n"
	.size	.L.str, 6

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "false\n"
	.size	.L.str1, 7


	.section	".note.GNU-stack","",@progbits
