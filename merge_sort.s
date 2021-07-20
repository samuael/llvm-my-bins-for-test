	.text
	.file	"merge_sort.c"
	.globl	merge                   # -- Begin function merge
	.p2align	4, 0x90
	.type	merge,@function
merge:                                  # @merge
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	movq	%rsp, -56(%rbp)
	leaq	15(,%rax,4), %rax
	movabsq	$34359738352, %rdx      # imm = 0x7FFFFFFF0
	andq	%rdx, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movl	-16(%rbp), %eax
	leaq	15(,%rax,4), %rsi
	andq	%rdx, %rsi
	movq	%rsp, %rax
	subq	%rsi, %rax
	movq	%rax, %rsp
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	addl	-8(%rbp), %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %edx
	movslq	-8(%rbp), %rsi
	movl	%edx, (%rcx,%rsi,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -4(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %edx
	cmpl	-16(%rbp), %edx
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rdx
	movl	-24(%rbp), %esi
	addl	$1, %esi
	addl	-4(%rbp), %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %edx
	movslq	-4(%rbp), %rsi
	movl	%edx, (%rax,%rsi,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -12(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movl	-8(%rbp), %esi
	cmpl	-20(%rbp), %esi
	jge	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %edx
	cmpl	-16(%rbp), %edx
	setl	%dl
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	testb	$1, %dl
	jne	.LBB0_12
	jmp	.LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	movslq	-8(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movslq	-4(%rbp), %rsi
	cmpl	(%rax,%rsi,4), %edx
	jg	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	movslq	-8(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movq	-40(%rbp), %rsi
	movslq	-12(%rbp), %rdi
	movl	%edx, (%rsi,%rdi,4)
	movl	-8(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	movslq	-4(%rbp), %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-40(%rbp), %rsi
	movslq	-12(%rbp), %rdi
	movl	%edx, (%rsi,%rdi,4)
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -4(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -12(%rbp)
	jmp	.LBB0_9
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jge	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movslq	-8(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movq	-40(%rbp), %rsi
	movslq	-12(%rbp), %rdi
	movl	%edx, (%rsi,%rdi,4)
	movl	-8(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -8(%rbp)
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -12(%rbp)
	jmp	.LBB0_17
.LBB0_19:
	jmp	.LBB0_20
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jge	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-40(%rbp), %rdx
	movslq	-12(%rbp), %rsi
	movl	%ecx, (%rdx,%rsi,4)
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -4(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB0_20
.LBB0_22:
	movq	-56(%rbp), %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	merge, .Lfunc_end0-merge
	.cfi_endproc
                                        # -- End function
	.globl	mergeSort               # -- Begin function mergeSort
	.p2align	4, 0x90
	.type	mergeSort,@function
mergeSort:                              # @mergeSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB1_2
# %bb.1:
	movl	$2, %ecx
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	addl	%eax, %esi
	movl	%esi, -12(%rbp)
	movq	-24(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	mergeSort
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movl	-8(%rbp), %edx
	callq	mergeSort
	movq	-24(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	callq	merge
.LBB1_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mergeSort, .Lfunc_end1-mergeSort
	.cfi_endproc
                                        # -- End function
	.globl	printArray              # -- Begin function printArray
	.p2align	4, 0x90
	.type	printArray,@function
printArray:                             # @printArray
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -4(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movb	$0, %al
	callq	printf
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	printArray, .Lfunc_end2-printArray
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.2, %rdi
	movl	$0, -36(%rbp)
	movq	.Lmain.arr, %rax
	movq	%rax, -32(%rbp)
	movq	.Lmain.arr+8, %rax
	movq	%rax, -24(%rbp)
	movq	.Lmain.arr+16, %rax
	movq	%rax, -16(%rbp)
	movl	$6, -4(%rbp)
	movb	$0, %al
	callq	printf
	leaq	-32(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	printArray
	leaq	-32(%rbp), %rdi
	movl	-4(%rbp), %edx
	subl	$1, %edx
	xorl	%esi, %esi
	callq	mergeSort
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-32(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	printArray
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.Lmain.arr,@object      # @main.arr
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.arr:
	.long	12                      # 0xc
	.long	11                      # 0xb
	.long	13                      # 0xd
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.size	.Lmain.arr, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Given array is \n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\nSorted array is \n"
	.size	.L.str.3, 19


	.ident	"clang version 6.0.1-14 (tags/RELEASE_601/final)"
	.section	".note.GNU-stack","",@progbits
