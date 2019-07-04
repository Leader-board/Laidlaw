	.file	"linpackm.cpp"
	.text
	.globl	_Z8cpu_timev
	.type	_Z8cpu_timev, @function
_Z8cpu_timev:
.LFB2356:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	clock
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2356:
	.size	_Z8cpu_timev, .-_Z8cpu_timev
	.globl	_Z5saxpyifPfiS_i
	.type	_Z5saxpyifPfiS_i, @function
_Z5saxpyifPfiS_i:
.LFB2357:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L3
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%al
	movl	$0, %r9d
	cmovne	%r9d, %eax
	testb	%al, %al
	jne	.L3
	cmpl	$1, %edx
	jne	.L17
	cmpl	$1, %r8d
	jne	.L17
	movl	%edi, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rdi,%rax), %r8d
	andl	$3, %r8d
	subl	%eax, %r8d
	movl	%r8d, %edx
	movl	$0, %eax
	testl	%r8d, %r8d
	jle	.L12
.L10:
	movaps	%xmm0, %xmm1
	mulss	(%rsi,%rax,4), %xmm1
	addss	(%rcx,%rax,4), %xmm1
	movss	%xmm1, (%rcx,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %edx
	jg	.L10
.L12:
	cmpl	%r8d, %edi
	jle	.L21
	movslq	%r8d, %r9
	leaq	0(,%r9,4), %rdx
	leaq	(%rcx,%rdx), %rax
	addq	%rdx, %rsi
	leal	-1(%rdi), %edx
	subl	%r8d, %edx
	shrl	$2, %edx
	movl	%edx, %edx
	leaq	(%r9,%rdx,4), %rdx
	leaq	16(%rcx,%rdx,4), %rdx
.L13:
	movaps	%xmm0, %xmm1
	mulss	(%rsi), %xmm1
	addss	(%rax), %xmm1
	movss	%xmm1, (%rax)
	movaps	%xmm0, %xmm1
	mulss	4(%rsi), %xmm1
	addss	4(%rax), %xmm1
	movss	%xmm1, 4(%rax)
	movaps	%xmm0, %xmm1
	mulss	8(%rsi), %xmm1
	addss	8(%rax), %xmm1
	movss	%xmm1, 8(%rax)
	movaps	%xmm0, %xmm1
	mulss	12(%rsi), %xmm1
	addss	12(%rax), %xmm1
	movss	%xmm1, 12(%rax)
	addq	$16, %rax
	addq	$16, %rsi
	cmpq	%rdx, %rax
	jne	.L13
.L3:
	ret
.L17:
	movl	$0, %r10d
	testl	%edx, %edx
	js	.L22
.L7:
	movl	$0, %eax
	testl	%r8d, %r8d
	js	.L23
.L8:
	movslq	%r8d, %r8
	leaq	0(,%r8,4), %r9
	cltq
	leaq	(%rcx,%rax,4), %rax
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %r8
	movslq	%r10d, %r10
	leaq	(%rsi,%r10,4), %rcx
	movl	$0, %edx
.L9:
	movaps	%xmm0, %xmm1
	mulss	(%rcx), %xmm1
	addss	(%rax), %xmm1
	movss	%xmm1, (%rax)
	addl	$1, %edx
	addq	%r9, %rax
	addq	%r8, %rcx
	cmpl	%edx, %edi
	jg	.L9
	ret
.L22:
	movl	$1, %r10d
	subl	%edi, %r10d
	imull	%edx, %r10d
	jmp	.L7
.L23:
	movl	$1, %eax
	subl	%edi, %eax
	imull	%r8d, %eax
	jmp	.L8
.L21:
	ret
	.cfi_endproc
.LFE2357:
	.size	_Z5saxpyifPfiS_i, .-_Z5saxpyifPfiS_i
	.globl	_Z4sdotiPfiS_i
	.type	_Z4sdotiPfiS_i, @function
_Z4sdotiPfiS_i:
.LFB2358:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	testl	%edi, %edi
	jle	.L24
	cmpl	$1, %edx
	jne	.L39
	cmpl	$1, %r8d
	jne	.L39
	movl	$1717986919, %edx
	movl	%edi, %eax
	imull	%edx
	movl	%edx, %eax
	sarl	%eax
	movl	%edi, %edx
	sarl	$31, %edx
	subl	%edx, %eax
	leal	(%rax,%rax,4), %eax
	movl	%edi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$0, %edx
	pxor	%xmm0, %xmm0
	testl	%eax, %eax
	jle	.L33
.L31:
	movss	(%rsi,%rdx,4), %xmm1
	mulss	(%rcx,%rdx,4), %xmm1
	addss	%xmm1, %xmm0
	addq	$1, %rdx
	cmpl	%edx, %eax
	jg	.L31
.L33:
	cmpl	%eax, %edi
	jle	.L43
	cltq
.L34:
	movss	(%rsi,%rax,4), %xmm1
	mulss	(%rcx,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	movss	4(%rsi,%rax,4), %xmm1
	mulss	4(%rcx,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	movss	8(%rsi,%rax,4), %xmm1
	mulss	8(%rcx,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	movss	12(%rsi,%rax,4), %xmm1
	mulss	12(%rcx,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	movss	16(%rsi,%rax,4), %xmm1
	mulss	16(%rcx,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	addq	$5, %rax
	cmpl	%eax, %edi
	jg	.L34
.L24:
	ret
.L39:
	movl	$0, %r10d
	testl	%edx, %edx
	js	.L44
.L28:
	movl	$0, %eax
	testl	%r8d, %r8d
	js	.L45
.L29:
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %r9
	movslq	%r10d, %r10
	leaq	(%rsi,%r10,4), %rsi
	movslq	%r8d, %r8
	salq	$2, %r8
	cltq
	leaq	(%rcx,%rax,4), %rdx
	movl	$0, %eax
	pxor	%xmm0, %xmm0
.L30:
	movss	(%rsi), %xmm1
	mulss	(%rdx), %xmm1
	addss	%xmm1, %xmm0
	addl	$1, %eax
	addq	%r9, %rsi
	addq	%r8, %rdx
	cmpl	%eax, %edi
	jne	.L30
	ret
.L44:
	movl	$1, %r10d
	subl	%edi, %r10d
	imull	%edx, %r10d
	jmp	.L28
.L45:
	movl	$1, %eax
	subl	%edi, %eax
	imull	%r8d, %eax
	jmp	.L29
.L43:
	ret
	.cfi_endproc
.LFE2358:
	.size	_Z4sdotiPfiS_i, .-_Z4sdotiPfiS_i
	.globl	_Z5sgeslPfiiPiS_i
	.type	_Z5sgeslPfiiPiS_i, @function
_Z5sgeslPfiiPiS_i:
.LFB2360:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	movq	%rdi, 8(%rsp)
	movl	%esi, 16(%rsp)
	movl	%edx, %r14d
	movq	%rcx, %r15
	movq	%r8, %rbx
	testl	%r9d, %r9d
	jne	.L47
	cmpl	$1, %edx
	jle	.L61
	movslq	16(%rsp), %rax
	leaq	4(,%rax,4), %r13
	movq	8(%rsp), %rax
	leaq	4(%rax), %r12
	movl	%edx, (%rsp)
	leal	-2(%rdx), %eax
	addq	$2, %rax
	movl	$1, %ebp
	movl	%edx, 20(%rsp)
	movq	%rax, %r14
	jmp	.L52
.L61:
	testl	%edx, %edx
	jle	.L46
	jmp	.L50
.L63:
	movss	-4(%rbx,%rbp,4), %xmm1
	movss	%xmm1, (%rdx)
	movss	%xmm0, -4(%rbx,%rbp,4)
.L51:
	leaq	(%rbx,%rbp,4), %rcx
	movl	(%rsp), %edi
	subl	%ebp, %edi
	movl	$1, %r8d
	movl	$1, %edx
	movq	%r12, %rsi
	call	_Z5saxpyifPfiS_i
	addq	$1, %rbp
	addq	%r13, %r12
	cmpq	%r14, %rbp
	je	.L62
.L52:
	movl	-4(%r15,%rbp,4), %eax
	movslq	%eax, %rdx
	leaq	-4(%rbx,%rdx,4), %rdx
	movss	(%rdx), %xmm0
	cmpl	%ebp, %eax
	jne	.L63
	jmp	.L51
.L62:
	movl	20(%rsp), %r14d
.L50:
	leal	-1(%r14), %eax
	movslq	%eax, %rbp
	movl	16(%rsp), %esi
	movl	%esi, %r12d
	notl	%r12d
	movslq	%r12d, %r12
	salq	$2, %r12
	imull	%esi, %eax
	cltq
	movslq	%r14d, %r14
	addq	%rax, %r14
	movq	8(%rsp), %rdx
	leaq	(%rdx,%r14,4), %r13
	negl	%esi
	movslq	%esi, %r14
	salq	$2, %r14
	leaq	(%rdx,%rax,4), %r15
.L53:
	movss	(%rbx,%rbp,4), %xmm0
	divss	-4(%r13), %xmm0
	movss	%xmm0, (%rbx,%rbp,4)
	xorps	.LC2(%rip), %xmm0
	movl	$1, %r8d
	movq	%rbx, %rcx
	movl	$1, %edx
	movq	%r15, %rsi
	movl	%ebp, %edi
	call	_Z5saxpyifPfiS_i
	subq	$1, %rbp
	addq	%r12, %r13
	addq	%r14, %r15
	leal	1(%rbp), %eax
	testl	%eax, %eax
	jg	.L53
.L46:
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L47:
	.cfi_restore_state
	testl	%edx, %edx
	jle	.L54
	movslq	16(%rsp), %rax
	salq	$2, %rax
	movq	%rax, (%rsp)
	movq	8(%rsp), %r12
	movq	%r12, %r13
	addq	$4, %rax
	leal	-1(%rdx), %esi
	movl	$0, %ebp
	movl	%edx, 20(%rsp)
	movq	%rax, %r14
	movq	%rcx, 24(%rsp)
	movq	%rsi, %r15
	jmp	.L55
.L58:
	movq	%rax, %rbp
.L55:
	movl	$1, %r8d
	movq	%rbx, %rcx
	movl	$1, %edx
	movq	%r13, %rsi
	movl	%ebp, %edi
	call	_Z4sdotiPfiS_i
	movss	(%rbx,%rbp,4), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	divss	(%r12), %xmm0
	movss	%xmm0, (%rbx,%rbp,4)
	leaq	1(%rbp), %rax
	addq	(%rsp), %r13
	addq	%r14, %r12
	cmpq	%r15, %rbp
	jne	.L58
	movl	20(%rsp), %r14d
	movq	24(%rsp), %r15
.L54:
	leal	-1(%r14), %ebp
	testl	%ebp, %ebp
	jle	.L46
	movslq	%ebp, %rbp
	movl	16(%rsp), %esi
	movl	%esi, %eax
	negl	%eax
	cltq
	leaq	-4(,%rax,4), %r12
	leal	-2(%r14), %eax
	imull	%esi, %eax
	cltq
	addq	%rbp, %rax
	movq	8(%rsp), %rsi
	leaq	(%rsi,%rax,4), %r13
	jmp	.L56
.L64:
	cltq
	leaq	-4(%rbx,%rax,4), %rax
	movss	(%rax), %xmm1
	movss	%xmm0, (%rax)
	movss	%xmm1, -4(%rbx,%rbp,4)
.L57:
	subq	$1, %rbp
	addq	%r12, %r13
	testl	%ebp, %ebp
	jle	.L46
.L56:
	movss	-4(%rbx,%rbp,4), %xmm2
	movss	%xmm2, (%rsp)
	leaq	(%rbx,%rbp,4), %rcx
	movl	%r14d, %edi
	subl	%ebp, %edi
	movl	$1, %r8d
	movl	$1, %edx
	movq	%r13, %rsi
	call	_Z4sdotiPfiS_i
	addss	(%rsp), %xmm0
	movss	%xmm0, -4(%rbx,%rbp,4)
	movl	-4(%r15,%rbp,4), %eax
	cmpl	%ebp, %eax
	jne	.L64
	jmp	.L57
	.cfi_endproc
.LFE2360:
	.size	_Z5sgeslPfiiPiS_i, .-_Z5sgeslPfiiPiS_i
	.globl	_Z5sscalifPfi
	.type	_Z5sscalifPfi, @function
_Z5sscalifPfi:
.LFB2361:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L65
	cmpl	$1, %edx
	je	.L78
	movl	$0, %eax
	testl	%edx, %edx
	js	.L79
.L73:
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	cltq
	leaq	(%rsi,%rax,4), %rax
	movl	$0, %edx
.L74:
	movaps	%xmm0, %xmm1
	mulss	(%rax), %xmm1
	movss	%xmm1, (%rax)
	addl	$1, %edx
	addq	%rcx, %rax
	cmpl	%edx, %edi
	jne	.L74
.L65:
	ret
.L78:
	movl	$1717986919, %edx
	movl	%edi, %eax
	imull	%edx
	sarl	%edx
	movl	%edi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edi, %edx
	subl	%eax, %edx
	testl	%edx, %edx
	jle	.L70
	movq	%rsi, %rax
	leal	-1(%rdx), %ecx
	leaq	4(%rsi,%rcx,4), %rcx
.L71:
	movaps	%xmm0, %xmm1
	mulss	(%rax), %xmm1
	movss	%xmm1, (%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L71
.L70:
	movslq	%edx, %rax
	leaq	(%rsi,%rax,4), %rax
	cmpl	%edx, %edi
	jle	.L80
.L72:
	movaps	%xmm0, %xmm1
	mulss	(%rax), %xmm1
	movss	%xmm1, (%rax)
	movaps	%xmm0, %xmm1
	mulss	4(%rax), %xmm1
	movss	%xmm1, 4(%rax)
	movaps	%xmm0, %xmm1
	mulss	8(%rax), %xmm1
	movss	%xmm1, 8(%rax)
	movaps	%xmm0, %xmm1
	mulss	12(%rax), %xmm1
	movss	%xmm1, 12(%rax)
	movaps	%xmm0, %xmm1
	mulss	16(%rax), %xmm1
	movss	%xmm1, 16(%rax)
	addl	$5, %edx
	addq	$20, %rax
	cmpl	%edx, %edi
	jg	.L72
	ret
.L80:
	ret
.L79:
	movl	$1, %eax
	subl	%edi, %eax
	imull	%edx, %eax
	jmp	.L73
	.cfi_endproc
.LFE2361:
	.size	_Z5sscalifPfi, .-_Z5sscalifPfi
	.globl	_Z6isamaxiPfi
	.type	_Z6isamaxiPfi, @function
_Z6isamaxiPfi:
.LFB2362:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L94
	testl	%edx, %edx
	jle	.L94
	movl	%edi, %eax
	cmpl	$1, %edi
	je	.L81
	cmpl	$1, %edx
	je	.L99
	movss	(%rsi), %xmm1
	comiss	.LC1(%rip), %xmm1
	jb	.L100
.L89:
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	addq	%rcx, %rsi
	movl	$1, %eax
	movl	$1, %edx
	pxor	%xmm2, %xmm2
	movss	.LC2(%rip), %xmm3
	jmp	.L93
.L99:
	movss	(%rsi), %xmm1
	comiss	.LC1(%rip), %xmm1
	jb	.L101
.L84:
	movl	%edx, %eax
	movl	$1, %edx
	pxor	%xmm2, %xmm2
	movss	.LC2(%rip), %xmm3
	jmp	.L88
.L101:
	xorps	.LC2(%rip), %xmm1
	jmp	.L84
.L103:
	xorps	%xmm3, %xmm0
	jmp	.L85
.L86:
	addq	$1, %rdx
	cmpl	%edx, %edi
	jle	.L102
.L88:
	movss	(%rsi,%rdx,4), %xmm0
	comiss	%xmm2, %xmm0
	jb	.L103
.L85:
	comiss	%xmm1, %xmm0
	jbe	.L86
	leal	1(%rdx), %eax
	movaps	%xmm0, %xmm1
	jmp	.L86
.L102:
	ret
.L100:
	xorps	.LC2(%rip), %xmm1
	jmp	.L89
.L105:
	xorps	%xmm3, %xmm0
	jmp	.L90
.L91:
	addl	$1, %edx
	addq	%rcx, %rsi
	cmpl	%edx, %edi
	jle	.L104
.L93:
	movss	(%rsi), %xmm0
	comiss	%xmm2, %xmm0
	jb	.L105
.L90:
	comiss	%xmm1, %xmm0
	jbe	.L91
	leal	1(%rdx), %eax
	movaps	%xmm0, %xmm1
	jmp	.L91
.L104:
	ret
.L94:
	movl	$0, %eax
.L81:
	ret
	.cfi_endproc
.LFE2362:
	.size	_Z6isamaxiPfi, .-_Z6isamaxiPfi
	.globl	_Z5sgefaPfiiPi
	.type	_Z5sgefaPfiiPi, @function
_Z5sgefaPfiiPi:
.LFB2359:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$112, %rsp
	.cfi_def_cfa_offset 168
	movq	%rdi, 8(%rsp)
	movl	%esi, 108(%rsp)
	movl	%edx, 104(%rsp)
	movq	%rcx, 56(%rsp)
	cmpl	$1, %edx
	jle	.L116
	movl	%esi, %ecx
	movslq	%esi, %rax
	leaq	4(,%rax,4), %rsi
	movq	%rsi, 64(%rsp)
	movq	%rdi, 32(%rsp)
	movl	%ecx, (%rsp)
	leal	1(%rcx), %eax
	movl	%eax, 76(%rsp)
	movl	%edx, 72(%rsp)
	leal	-2(%rdx), %eax
	addq	$2, %rax
	movq	%rax, 80(%rsp)
	leaq	-4(%rsi), %rax
	movq	%rax, 24(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 44(%rsp)
	movl	$1, %r15d
	movl	$0, 88(%rsp)
	leal	1(%rdx), %eax
	movl	%eax, 52(%rsp)
	jmp	.L113
.L118:
	movl	%r15d, 92(%rsp)
	cmpl	%r15d, %r14d
	je	.L110
	movslq	48(%rsp), %rdx
	movq	8(%rsp), %rsi
	leaq	(%rsi,%rdx,4), %rdx
	movss	(%rdx), %xmm1
	movss	%xmm1, (%rax)
	movss	%xmm0, (%rdx)
.L110:
	movq	32(%rsp), %rax
	leaq	4(%rax), %rsi
	movq	%rsi, 16(%rsp)
	movl	48(%rsp), %r13d
	movslq	%r13d, %rax
	movss	.LC3(%rip), %xmm0
	movq	8(%rsp), %rbx
	divss	(%rbx,%rax,4), %xmm0
	movl	$1, %edx
	movl	4(%rsp), %edi
	call	_Z5sscalifPfi
	addl	$1, %ebp
	cmpl	%ebp, 104(%rsp)
	jl	.L107
	movl	44(%rsp), %eax
	movl	(%rsp), %ecx
	addl	%ecx, %eax
	cltq
	addq	%r15, %rax
	leaq	(%rbx,%rax,4), %rbx
	addl	%r13d, %ecx
	movl	%ecx, %r13d
	movl	52(%rsp), %eax
	movl	%eax, 40(%rsp)
	movslq	%r12d, %r12
	subq	%r15, %r12
	movq	%r15, 96(%rsp)
	movl	92(%rsp), %r15d
	jmp	.L112
.L124:
	movslq	%r13d, %rax
	movq	8(%rsp), %rsi
	leaq	(%rsi,%rax,4), %rax
	movss	(%rax), %xmm1
	movss	%xmm1, -8(%rbx,%r12,4)
	movss	%xmm0, (%rax)
.L111:
	movl	$1, %r8d
	movl	$1, %edx
	movq	16(%rsp), %rsi
	movl	4(%rsp), %edi
	call	_Z5saxpyifPfiS_i
	addl	$1, %ebp
	addq	24(%rsp), %rbx
	addl	(%rsp), %r13d
	cmpl	40(%rsp), %ebp
	je	.L123
.L112:
	movq	%rbx, %rcx
	movss	-8(%rbx,%r12,4), %xmm0
	cmpl	%r15d, %r14d
	jne	.L124
	jmp	.L111
.L123:
	movq	96(%rsp), %r15
.L108:
	addq	$1, %r15
	movq	64(%rsp), %rdx
	addq	%rdx, 32(%rsp)
	movl	(%rsp), %esi
	addl	%esi, 44(%rsp)
	movl	76(%rsp), %edi
	addl	%edi, 48(%rsp)
	cmpq	80(%rsp), %r15
	je	.L107
.L113:
	movl	%r15d, %ebp
	movl	72(%rsp), %eax
	subl	%r15d, %eax
	movl	%eax, 4(%rsp)
	movl	52(%rsp), %edi
	subl	%r15d, %edi
	movl	$1, %edx
	movq	32(%rsp), %rsi
	call	_Z6isamaxiPfi
	leal	(%rax,%r15), %r12d
	leal	-1(%r12), %r14d
	movq	56(%rsp), %rax
	movl	%r14d, -4(%rax,%r15,4)
	movl	44(%rsp), %eax
	leal	-2(%r12,%rax), %eax
	cltq
	movq	8(%rsp), %rdx
	leaq	(%rdx,%rax,4), %rax
	movss	(%rax), %xmm0
	ucomiss	.LC1(%rip), %xmm0
	jp	.L118
	jne	.L118
	movl	%r15d, 88(%rsp)
	jmp	.L108
.L116:
	movl	$0, 88(%rsp)
.L107:
	movl	104(%rsp), %edi
	movslq	%edi, %rax
	movq	56(%rsp), %rdx
	movl	%edi, -4(%rdx,%rax,4)
	leal	-1(%rdi), %edx
	movl	108(%rsp), %eax
	imull	%edx, %eax
	addl	%edx, %eax
	cltq
	pxor	%xmm0, %xmm0
	movq	8(%rsp), %rdx
	ucomiss	(%rdx,%rax,4), %xmm0
	jp	.L106
	cmovne	88(%rsp), %edi
	movl	%edi, 88(%rsp)
.L106:
	movl	88(%rsp), %eax
	addq	$112, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2359:
	.size	_Z5sgefaPfiiPi, .-_Z5sgefaPfiiPi
	.globl	_Z6r4_absf
	.type	_Z6r4_absf, @function
_Z6r4_absf:
.LFB2363:
	.cfi_startproc
	comiss	.LC1(%rip), %xmm0
	jb	.L127
.L126:
	ret
.L127:
	xorps	.LC2(%rip), %xmm0
	jmp	.L126
	.cfi_endproc
.LFE2363:
	.size	_Z6r4_absf, .-_Z6r4_absf
	.globl	_Z10r4_epsilonv
	.type	_Z10r4_epsilonv, @function
_Z10r4_epsilonv:
.LFB2364:
	.cfi_startproc
	movl	$24, %eax
	movss	.LC4(%rip), %xmm0
	movss	.LC5(%rip), %xmm1
.L129:
	mulss	%xmm1, %xmm0
	subl	$1, %eax
	jne	.L129
	addss	%xmm0, %xmm0
	ret
	.cfi_endproc
.LFE2364:
	.size	_Z10r4_epsilonv, .-_Z10r4_epsilonv
	.globl	_Z6r4_maxff
	.type	_Z6r4_maxff, @function
_Z6r4_maxff:
.LFB2365:
	.cfi_startproc
	maxss	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE2365:
	.size	_Z6r4_maxff, .-_Z6r4_maxff
	.globl	_Z9r4_randomPi
	.type	_Z9r4_randomPi, @function
_Z9r4_randomPi:
.LFB2366:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	12(%rdi), %r10d
	imull	$2549, %r10d, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$20, %ecx
	leal	(%rdx,%rcx), %eax
	andl	$4095, %eax
	subl	%ecx, %eax
	movl	8(%rdi), %r11d
	leal	4095(%rdx), %esi
	testl	%edx, %edx
	cmovns	%edx, %esi
	sarl	$12, %esi
	imull	$2549, %r11d, %edx
	addl	%edx, %esi
	imull	$2508, %r10d, %edx
	addl	%esi, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$20, %ecx
	leal	(%rdx,%rcx), %r8d
	andl	$4095, %r8d
	subl	%ecx, %r8d
	movl	4(%rdi), %ebx
	leal	4095(%rdx), %esi
	testl	%edx, %edx
	cmovns	%edx, %esi
	sarl	$12, %esi
	imull	$2549, %ebx, %edx
	addl	%edx, %esi
	imull	$2508, %r11d, %edx
	addl	%edx, %esi
	imull	$322, %r10d, %edx
	addl	%edx, %esi
	movl	%esi, %edx
	sarl	$31, %edx
	shrl	$20, %edx
	leal	(%rsi,%rdx), %r9d
	andl	$4095, %r9d
	subl	%edx, %r9d
	imull	$2549, (%rdi), %ecx
	leal	4095(%rsi), %edx
	testl	%esi, %esi
	cmovns	%esi, %edx
	sarl	$12, %edx
	addl	%ecx, %edx
	imull	$2508, %ebx, %ebx
	addl	%ebx, %edx
	imull	$322, %r11d, %r11d
	addl	%r11d, %edx
	imull	$494, %r10d, %r10d
	addl	%r10d, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	shrl	$20, %ecx
	addl	%ecx, %edx
	andl	$4095, %edx
	subl	%ecx, %edx
	movl	%edx, (%rdi)
	movl	%r9d, 4(%rdi)
	movl	%r8d, 8(%rdi)
	movl	%eax, 12(%rdi)
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	.LC6(%rip), %xmm2
	mulss	%xmm2, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r8d, %xmm0
	addss	%xmm0, %xmm1
	mulss	%xmm2, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ss	%r9d, %xmm0
	addss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm1
	addss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2366:
	.size	_Z9r4_randomPi, .-_Z9r4_randomPi
	.globl	_Z9r4mat_genii
	.type	_Z9r4mat_genii, @function
_Z9r4mat_genii:
.LFB2367:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	$1, 16(%rsp)
	movl	$2, 20(%rsp)
	movl	$3, 24(%rsp)
	movl	$1325, 28(%rsp)
	movl	%edi, %eax
	imull	%esi, %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L136
	movl	%edi, %ebx
	movl	%esi, %r13d
	leaq	0(,%rax,4), %rdi
	call	_Znam
	movq	%rax, 8(%rsp)
	testl	%r13d, %r13d
	jle	.L135
	movslq	%ebx, %rbx
	leaq	0(,%rbx,4), %r14
	leal	-1(%r13), %r15d
	movq	8(%rsp), %rax
	leaq	4(%rax,%r15,4), %rbp
	addl	$1, %r13d
	movl	$1, %r12d
	notq	%r15
	salq	$2, %r15
	jmp	.L140
.L136:
	call	__cxa_throw_bad_array_new_length
.L145:
	addl	$1, %r12d
	addq	%r14, %rbp
	cmpl	%r13d, %r12d
	je	.L135
.L140:
	leaq	(%r15,%rbp), %rbx
.L139:
	leaq	16(%rsp), %rdi
	call	_Z9r4_randomPi
	subss	.LC5(%rip), %xmm0
	movss	%xmm0, (%rbx)
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jne	.L139
	jmp	.L145
.L135:
	movq	8(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2367:
	.size	_Z9r4mat_genii, .-_Z9r4mat_genii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.globl	_Z9timestampv
	.type	_Z9timestampv, @function
_Z9timestampv:
.LFB2368:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, %edi
	call	time
	movq	%rax, 8(%rsp)
	leaq	8(%rsp), %rdi
	call	localtime
	movq	%rax, %rcx
	movl	$.LC7, %edx
	movl	$40, %esi
	movl	$_ZZ9timestampvE11time_buffer, %edi
	call	strftime
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2368:
	.size	_Z9timestampv, .-_Z9timestampv
	.section	.rodata.str1.1
.LC9:
	.string	"\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"LINPACK_BENCH_S - Fatal error!\n"
	.align 8
.LC11:
	.string	"  The matrix A is apparently singular.\n"
	.section	.rodata.str1.1
.LC12:
	.string	"  Abnormal end of execution.\n"
.LC14:
	.string	"  "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2355:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	call	_Z9timestampv
	movl	$1000, %esi
	movl	$1001, %edi
	call	_Z9r4mat_genii
	movq	%rax, %r13
	movl	$4000, %edi
	call	_Znam
	movq	%rax, %r15
	movl	$4000, %edi
	call	_Znam
	movq	%rax, 8(%rsp)
	movl	$4000, %edi
	call	_Znam
	movq	%rax, 32(%rsp)
	movl	$4000, %edi
	call	_Znam
	movq	%rax, 16(%rsp)
	movl	$4000, %edi
	call	_Znam
	movq	%rax, %r14
	movl	$1000, %edx
	jmp	.L150
.L184:
	subl	$1, %edx
	je	.L183
.L150:
	movl	$1000, %eax
.L149:
	subl	$1, %eax
	jne	.L149
	jmp	.L184
.L183:
	movq	%r14, %rbx
	leaq	4000(%r14), %rbp
	movq	%r14, %rax
	movss	.LC4(%rip), %xmm0
.L151:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rbp, %rax
	jne	.L151
	movq	%r15, %r12
	leaq	4004000(%r13), %rsi
	leaq	4008000(%r13), %r8
	movq	%r15, %rdi
	jmp	.L153
.L186:
	addq	$4, %rdi
	addq	$4, %rsi
	cmpq	%r8, %rsi
	je	.L185
.L153:
	movq	%rdi, %rcx
	movl	$0x00000000, (%rdi)
	leaq	-4004000(%rsi), %rax
	movq	%rbx, %rdx
.L152:
	movss	(%rax), %xmm0
	mulss	(%rdx), %xmm0
	addss	(%rcx), %xmm0
	movss	%xmm0, (%rcx)
	addq	$4004, %rax
	addq	$4, %rdx
	cmpq	%rsi, %rax
	jne	.L152
	jmp	.L186
.L185:
	call	_Z8cpu_timev
	movsd	%xmm0, (%rsp)
	movq	8(%rsp), %rcx
	movl	$1000, %edx
	movl	$1001, %esi
	movq	%r13, %rdi
	call	_Z5sgefaPfiiPi
	movl	%eax, 44(%rsp)
	testl	%eax, %eax
	jne	.L187
	call	_Z8cpu_timev
	subsd	(%rsp), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_Z8cpu_timev
	movsd	%xmm0, (%rsp)
	movl	$0, %r9d
	movq	%r15, %r8
	movq	8(%rsp), %rcx
	movl	$1000, %edx
	movl	$1001, %esi
	movq	%r13, %rdi
	call	_Z5sgeslPfiiPiS_i
	call	_Z8cpu_timev
	movapd	%xmm0, %xmm2
	subsd	(%rsp), %xmm2
	movsd	%xmm2, 48(%rsp)
	movsd	24(%rsp), %xmm0
	addsd	%xmm2, %xmm0
	pxor	%xmm5, %xmm5
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, 40(%rsp)
	testq	%r13, %r13
	je	.L156
	movq	%r13, %rdi
	call	_ZdaPv
.L156:
	movl	$1000, %esi
	movl	$1001, %edi
	call	_Z9r4mat_genii
	movq	%rax, %r13
	movq	%r14, %rax
	movss	.LC4(%rip), %xmm0
.L157:
	movss	%xmm0, (%rax)
	addq	$4, %rax
	cmpq	%rbp, %rax
	jne	.L157
	movq	16(%rsp), %r10
	movq	%r13, %r9
	leaq	4004000(%r13), %rsi
	leaq	4008000(%r13), %rdi
	movq	%rsi, %r8
	jmp	.L159
.L187:
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC10, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC12, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, 44(%rsp)
	jmp	.L148
.L189:
	addq	$4, %r10
	addq	$4, %r8
	cmpq	%rdi, %r8
	je	.L188
.L159:
	movq	%r10, %rcx
	movl	$0x00000000, (%r10)
	leaq	-4004000(%r8), %rax
	movq	%rbx, %rdx
.L158:
	movss	(%rax), %xmm0
	mulss	(%rdx), %xmm0
	addss	(%rcx), %xmm0
	movss	%xmm0, (%rcx)
	addq	$4004, %rax
	addq	$4, %rdx
	cmpq	%r8, %rax
	jne	.L158
	jmp	.L189
.L188:
	movq	32(%rsp), %r8
	movq	16(%rsp), %rax
	subq	%r9, %rax
	movq	%rax, %r9
	movss	.LC2(%rip), %xmm1
	jmp	.L161
.L191:
	addq	$4, %r8
	addq	$4, %rsi
	cmpq	%rdi, %rsi
	je	.L190
.L161:
	movq	%r8, %rcx
	movss	-4004000(%r9,%rsi), %xmm0
	xorps	%xmm1, %xmm0
	movss	%xmm0, (%r8)
	leaq	-4004000(%rsi), %rax
	movq	%r12, %rdx
.L160:
	movss	(%rax), %xmm0
	mulss	(%rdx), %xmm0
	addss	(%rcx), %xmm0
	movss	%xmm0, (%rcx)
	addq	$4004, %rax
	addq	$4, %rdx
	cmpq	%rax, %rsi
	jne	.L160
	jmp	.L191
.L190:
	movl	$1000, %eax
.L162:
	subl	$1, %eax
	jne	.L162
	movl	$1000, %eax
.L163:
	subl	$1, %eax
	jne	.L163
	movss	40(%rsp), %xmm4
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm3
	movsd	%xmm3, 56(%rsp)
	comiss	.LC1(%rip), %xmm4
	jbe	.L181
	movsd	.LC13(%rip), %xmm1
	mulsd	.LC0(%rip), %xmm3
	divsd	%xmm3, %xmm1
	movsd	%xmm1, (%rsp)
.L164:
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	$9, _ZSt4cout+16(%rax)
	movsd	24(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movl	$2, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$9, 16(%rbx,%rax)
	movsd	48(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movl	$2, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$9, 16(%rbx,%rax)
	movsd	56(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movl	$2, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$9, 16(%rbx,%rax)
	movsd	(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movl	$2, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$9, 16(%rbx,%rax)
	movsd	.LC15(%rip), %xmm0
	divsd	(%rsp), %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movl	$2, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	$9, 16(%rbx,%rax)
	movss	40(%rsp), %xmm0
	divss	.LC16(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	testq	%r13, %r13
	je	.L166
	movq	%r13, %rdi
	call	_ZdaPv
.L166:
	movq	%r15, %rdi
	call	_ZdaPv
	movq	8(%rsp), %rdi
	call	_ZdaPv
	movq	32(%rsp), %rdi
	call	_ZdaPv
	movq	16(%rsp), %rdi
	call	_ZdaPv
	movq	%r14, %rdi
	call	_ZdaPv
	call	_Z9timestampv
.L148:
	movl	44(%rsp), %eax
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L181:
	.cfi_restore_state
	movsd	.LC8(%rip), %xmm6
	movsd	%xmm6, (%rsp)
	jmp	.L164
	.cfi_endproc
.LFE2355:
	.size	main, .-main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2868:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2868:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZZ9timestampvE11time_buffer
	.comm	_ZZ9timestampvE11time_buffer,40,32
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	0
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC3:
	.long	3212836864
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC5:
	.long	1056964608
	.align 4
.LC6:
	.long	964689920
	.section	.rodata.cst8
	.align 8
.LC8:
	.long	0
	.long	-1074790400
	.align 8
.LC13:
	.long	2684354560
	.long	1103359365
	.align 8
.LC15:
	.long	0
	.long	1073741824
	.section	.rodata.cst4
	.align 4
.LC16:
	.long	1030053954
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
