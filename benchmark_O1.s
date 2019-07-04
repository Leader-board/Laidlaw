	.file	"benchmark.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Type 1 to start benchmarking."
.LC1:
	.string	"Invalid number, try again \n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Invalid entry. Program will close now. \n"
	.text
	.globl	_Z9selectionv
	.type	_Z9selectionv, @function
_Z9selectionv:
.LFB1769:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1769
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L2:
	movl	$29, %edx
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movb	$10, 11(%rsp)
	movl	$1, %edx
	leaq	11(%rsp), %rsi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE0:
	leaq	12(%rsp), %rsi
	movl	$_ZSt3cin, %edi
.LEHB1:
	call	_ZNSirsERi
	testb	$5, _ZSt3cin+48(%rip)
	jne	.L14
	cmpl	$1, 12(%rsp)
	jne	.L15
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	movl	$4, %edi
	call	__cxa_allocate_exception
	movl	$2, (%rax)
	movl	$0, %edx
	movl	$_ZTIi, %esi
	movq	%rax, %rdi
	call	__cxa_throw
.LEHE1:
.L10:
	movq	%rax, %rdi
	cmpq	$1, %rdx
	je	.L6
	cmpq	$2, %rdx
	je	.L7
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L15:
	movl	$8, %edi
	call	__cxa_allocate_exception
	movq	$.LC1, (%rax)
	movl	$0, %edx
	movl	$_ZTIPKc, %esi
	movq	%rax, %rdi
.LEHB3:
	call	__cxa_throw
.LEHE3:
.L6:
	call	__cxa_begin_catch
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movb	$10, 11(%rsp)
	movl	$1, %edx
	leaq	11(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE4:
	call	__cxa_end_catch
	jmp	.L2
.L7:
	call	__cxa_begin_catch
	movl	$.LC2, %esi
	movl	$_ZSt4cout, %edi
.LEHB5:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	stdin(%rip), %rdi
	call	getc
.LEHE5:
	movl	$1, %edi
	call	exit
.L11:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume
.L12:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
	call	_Unwind_Resume
.LEHE6:
	.cfi_endproc
.LFE1769:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA1769:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1769-.LLSDATTD1769
.LLSDATTD1769:
	.byte	0x1
	.uleb128 .LLSDACSE1769-.LLSDACSB1769
.LLSDACSB1769:
	.uleb128 .LEHB0-.LFB1769
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1769
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB1769
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB1769
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1769
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L10-.LFB1769
	.uleb128 0x3
	.uleb128 .LEHB4-.LFB1769
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L11-.LFB1769
	.uleb128 0
	.uleb128 .LEHB5-.LFB1769
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L12-.LFB1769
	.uleb128 0
	.uleb128 .LEHB6-.LFB1769
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1769:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	_ZTIi
	.long	_ZTIPc
.LLSDATT1769:
	.text
	.size	_Z9selectionv, .-_Z9selectionv
	.section	.rodata.str1.1
.LC20:
	.string	" % complete!"
.LC21:
	.string	"Time taken for that stage:- "
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Score obtained for that stage:- "
	.text
	.globl	_Z8mainbasev
	.type	_Z8mainbasev, @function
_Z8mainbasev:
.LFB1770:
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
	movl	$4, %r12d
	jmp	.L44
.L70:
	movq	.LC9(%rip), %rax
	movq	%rax, k(%rip)
.L45:
	movsd	k(%rip), %xmm4
	movsd	x(%rip), %xmm9
	movsd	y(%rip), %xmm11
	movsd	powcheck(%rip), %xmm0
	movl	$0, %ecx
	movsd	.LC3(%rip), %xmm10
	movl	$0, %edi
	movl	$0, %eax
	movapd	%xmm10, %xmm5
	movl	$0, %r8d
	movapd	%xmm10, %xmm2
	movl	$0, %r9d
	movapd	%xmm10, %xmm7
	movl	$1, %esi
	movl	%esi, %edx
	jmp	.L34
.L71:
	movq	.LC10(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L45
.L72:
	movq	.LC11(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L45
.L73:
	movq	.LC12(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L45
.L74:
	movq	.LC13(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L45
.L31:
	movapd	%xmm4, %xmm0
	addsd	%xmm4, %xmm0
	addsd	%xmm7, %xmm0
.L26:
	comisd	%xmm0, %xmm3
	jb	.L60
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	jp	.L29
	jne	.L29
	comisd	%xmm5, %xmm2
	jb	.L31
	movapd	%xmm8, %xmm5
	movl	%edx, %eax
	jmp	.L31
.L29:
	addsd	.LC3(%rip), %xmm0
	jmp	.L26
.L60:
	addsd	%xmm12, %xmm6
	movapd	%xmm6, %xmm1
	comisd	%xmm6, %xmm4
	jb	.L64
.L33:
	mulsd	%xmm1, %xmm1
	movapd	%xmm1, %xmm9
	movapd	%xmm1, %xmm2
	addsd	%xmm11, %xmm2
	movapd	%xmm10, %xmm0
	movapd	%xmm2, %xmm8
	jmp	.L26
.L64:
	movl	%esi, %ecx
	movl	%esi, %edi
	movl	%esi, %r8d
	movl	%esi, %r9d
.L23:
	addsd	.LC3(%rip), %xmm10
	comisd	%xmm10, %xmm4
	jb	.L65
.L34:
	comisd	.LC3(%rip), %xmm4
	jb	.L23
	movapd	%xmm10, %xmm11
	mulsd	%xmm10, %xmm11
	movapd	%xmm4, %xmm0
	mulsd	.LC14(%rip), %xmm0
	movapd	%xmm0, %xmm3
	movsd	.LC16(%rip), %xmm2
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	movsd	.LC15(%rip), %xmm6
	ucomisd	%xmm1, %xmm6
	jbe	.L25
	cvttsd2siq	%xmm0, %rcx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rcx, %xmm1
	cmpnlesd	%xmm1, %xmm3
	movsd	.LC3(%rip), %xmm6
	andpd	%xmm6, %xmm3
	addsd	%xmm1, %xmm3
	andnpd	%xmm0, %xmm2
	orpd	%xmm2, %xmm3
.L25:
	movsd	.LC3(%rip), %xmm6
	movapd	%xmm6, %xmm1
	movapd	%xmm6, %xmm12
	jmp	.L33
.L65:
	testb	%r9b, %r9b
	je	.L35
	movsd	%xmm0, powcheck(%rip)
.L35:
	testb	%r8b, %r8b
	je	.L36
	movsd	%xmm2, c(%rip)
.L36:
	testb	%al, %al
	je	.L37
	movsd	%xmm5, d(%rip)
.L37:
	testb	%dil, %dil
	je	.L38
	movsd	%xmm9, x(%rip)
.L38:
	movsd	%xmm10, b(%rip)
	testb	%cl, %cl
	je	.L39
	movsd	%xmm11, y(%rip)
.L39:
	movq	.LC3(%rip), %rax
	movq	%rax, a(%rip)
	call	clock
	subq	%r14, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC17(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	leal	-1(%rbx), %r14d
	cmpl	$1, %ebx
	je	.L49
	cmpl	$2, %ebx
	je	.L50
.L46:
	cmpl	$3, %ebx
	je	.L66
.L40:
	cmpl	$4, %ebx
	je	.L67
.L41:
	cmpl	$5, %ebx
	je	.L68
.L42:
	movl	%ebp, 12(%rsp)
	movss	12(%rsp), %xmm6
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm6, %xmm0
	movsd	(%rsp), %xmm6
	divsd	%xmm6, %xmm0
	mulsd	.LC18(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	%r14d, %r14
	movss	%xmm0, score(,%r14,4)
	pxor	%xmm2, %xmm2
	cvtss2sd	totalscore(%rip), %xmm2
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC19(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	pxor	%xmm7, %xmm7
	cvtsd2ss	%xmm0, %xmm7
	movss	%xmm7, totalscore(%rip)
	mulsd	%xmm6, %xmm1
	addsd	stagetime(,%r14,8), %xmm1
	movsd	%xmm1, stagetime(,%r14,8)
	movl	%r13d, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movq	%rax, %r15
	movl	$12, %edx
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movb	$10, 31(%rsp)
	movl	$1, %edx
	leaq	31(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$28, %edx
	movl	$.LC21, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movb	$10, 31(%rsp)
	movl	$1, %edx
	leaq	31(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$32, %edx
	movl	$.LC22, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movss	.LC23(%rip), %xmm0
	mulss	score(,%r14,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movb	$10, 31(%rsp)
	movl	$1, %edx
	leaq	31(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addl	$1, %ebx
	addl	$4, %r13d
	cmpl	$6, %ebx
	je	.L69
.L43:
	call	clock
	movq	%rax, %r14
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, a(%rip)
	movsd	%xmm0, b(%rip)
	movsd	%xmm0, c(%rip)
	movsd	%xmm0, d(%rip)
	cmpl	$1, %ebx
	je	.L70
	cmpl	$2, %ebx
	je	.L71
	cmpl	$3, %ebx
	je	.L72
	cmpl	$4, %ebx
	je	.L73
	cmpl	$5, %ebx
	je	.L74
	movsd	k(%rip), %xmm0
	comisd	.LC3(%rip), %xmm0
	jnb	.L45
	call	clock
	subq	%r14, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC17(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	leal	-1(%rbx), %r14d
	jmp	.L46
.L49:
	movl	.LC4(%rip), %ebp
	jmp	.L40
.L50:
	movl	.LC5(%rip), %ebp
	jmp	.L41
.L68:
	movl	.LC8(%rip), %ebp
	jmp	.L42
.L66:
	movl	.LC6(%rip), %ebp
	jmp	.L42
.L67:
	movl	.LC7(%rip), %ebp
	jmp	.L42
.L69:
	addl	$20, %r12d
	cmpl	$104, %r12d
	je	.L75
.L44:
	movl	%r12d, %r13d
	movl	$1, %ebx
	jmp	.L43
.L75:
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
.LFE1770:
	.size	_Z8mainbasev, .-_Z8mainbasev
	.section	.rodata.str1.1
.LC24:
	.string	"Average time taken for stage "
.LC25:
	.string	" is "
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"Your system has scored a total of "
	.section	.rodata.str1.1
.LC27:
	.string	" points!"
.LC28:
	.string	"pause"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	call	_Z9selectionv
	call	_Z8mainbasev
	movl	$1, %ebx
.L77:
	movl	$29, %edx
	movl	$.LC24, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movq	%rax, %rbp
	movl	$4, %edx
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	stagetime-8(,%rbx,8), %xmm0
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertIdEERSoT_
	movb	$10, 15(%rsp)
	movl	$1, %edx
	leaq	15(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	addq	$1, %rbx
	cmpq	$6, %rbx
	jne	.L77
	movl	$34, %edx
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	pxor	%xmm0, %xmm0
	cvtss2sd	totalscore(%rip), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movl	$8, %edx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movb	$10, 15(%rsp)
	movl	$1, %edx
	leaq	15(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$.LC28, %edi
	call	system
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1772:
	.size	main, .-main
	.type	_GLOBAL__sub_I_check, @function
_GLOBAL__sub_I_check:
.LFB2260:
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
.LFE2260:
	.size	_GLOBAL__sub_I_check, .-_GLOBAL__sub_I_check
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_check
	.globl	stagetime
	.bss
	.align 32
	.type	stagetime, @object
	.size	stagetime, 40
stagetime:
	.zero	40
	.globl	totalscore
	.align 4
	.type	totalscore, @object
	.size	totalscore, 4
totalscore:
	.zero	4
	.globl	score
	.align 16
	.type	score, @object
	.size	score, 20
score:
	.zero	20
	.globl	c
	.align 8
	.type	c, @object
	.size	c, 8
c:
	.zero	8
	.globl	percentage
	.align 4
	.type	percentage, @object
	.size	percentage, 4
percentage:
	.zero	4
	.globl	verify
	.align 4
	.type	verify, @object
	.size	verify, 4
verify:
	.zero	4
	.globl	y
	.align 8
	.type	y, @object
	.size	y, 8
y:
	.zero	8
	.globl	x
	.align 8
	.type	x, @object
	.size	x, 8
x:
	.zero	8
	.globl	d
	.align 8
	.type	d, @object
	.size	d, 8
d:
	.zero	8
	.globl	k
	.align 8
	.type	k, @object
	.size	k, 8
k:
	.zero	8
	.globl	powcheck
	.align 8
	.type	powcheck, @object
	.size	powcheck, 8
powcheck:
	.zero	8
	.globl	b
	.align 8
	.type	b, @object
	.size	b, 8
b:
	.zero	8
	.globl	a
	.align 8
	.type	a, @object
	.size	a, 8
a:
	.zero	8
	.globl	check
	.data
	.align 4
	.type	check, @object
	.size	check, 4
check:
	.long	2
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	994352038
	.align 4
.LC5:
	.long	1024416809
	.align 4
.LC6:
	.long	1049347752
	.align 4
.LC7:
	.long	1074685542
	.align 4
.LC8:
	.long	1089545961
	.section	.rodata.cst8
	.align 8
.LC9:
	.long	0
	.long	1079574528
	.align 8
.LC10:
	.long	0
	.long	1081032704
	.align 8
.LC11:
	.long	0
	.long	1082081280
	.align 8
.LC12:
	.long	0
	.long	1083129856
	.align 8
.LC13:
	.long	0
	.long	1083666432
	.align 8
.LC14:
	.long	3951369912
	.long	1073133649
	.align 8
.LC15:
	.long	0
	.long	1127219200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC16:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC17:
	.long	0
	.long	1093567616
	.align 8
.LC18:
	.long	0
	.long	1080623104
	.align 8
.LC19:
	.long	2576980378
	.long	1070176665
	.section	.rodata.cst4
	.align 4
.LC23:
	.long	1084227584
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
