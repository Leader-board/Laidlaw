	.file	"benchmark.cpp"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2376:
	.cfi_startproc
	cmpl	$65535, %esi
	jne	.L4
	cmpl	$1, %edi
	je	.L7
.L4:
	ret
.L7:
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
.LFE2376:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.type	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, @function
_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_:
.LFB1867:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pxor	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	call	pow
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1867:
	.size	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, .-_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC17:
	.string	" % complete!"
.LC18:
	.string	"Time taken for that stage:- "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC19:
	.string	"Score obtained for that stage:- "
	.text
	.globl	_Z8mainbasev
	.type	_Z8mainbasev, @function
_Z8mainbasev:
.LFB1866:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movl	$4, %r12d
	jmp	.L34
.L59:
	movq	.LC6(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L29
.L60:
	movq	.LC7(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L29
.L61:
	movq	.LC8(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L29
.L62:
	movq	.LC9(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L29
.L63:
	movq	.LC10(%rip), %rax
	movq	%rax, k(%rip)
	jmp	.L29
.L25:
	movsd	k(%rip), %xmm0
	addsd	%xmm0, %xmm0
	addsd	.LC5(%rip), %xmm0
	movsd	%xmm0, powcheck(%rip)
.L19:
	movsd	k(%rip), %xmm3
	movapd	%xmm3, %xmm0
	mulsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC21(%rip), %xmm2
	andpd	%xmm0, %xmm2
	movsd	.LC12(%rip), %xmm4
	ucomisd	%xmm2, %xmm4
	jbe	.L20
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	cmpnlesd	%xmm2, %xmm1
	movsd	.LC5(%rip), %xmm4
	andpd	%xmm4, %xmm1
	addsd	%xmm2, %xmm1
	movsd	.LC21(%rip), %xmm5
	andnpd	%xmm0, %xmm5
	orpd	%xmm5, %xmm1
.L20:
	movsd	powcheck(%rip), %xmm0
	comisd	%xmm0, %xmm1
	jb	.L50
	movl	$2, %edi
	call	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	movsd	c(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L23
	jne	.L23
	comisd	d(%rip), %xmm1
	jb	.L25
	movsd	%xmm1, d(%rip)
	jmp	.L25
.L23:
	movsd	.LC5(%rip), %xmm0
	addsd	powcheck(%rip), %xmm0
	movsd	%xmm0, powcheck(%rip)
	jmp	.L19
.L50:
	movsd	.LC5(%rip), %xmm0
	addsd	a(%rip), %xmm0
	movsd	%xmm0, a(%rip)
	comisd	%xmm0, %xmm3
	jb	.L17
.L28:
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, x(%rip)
	movsd	b(%rip), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, y(%rip)
	addsd	%xmm2, %xmm0
	movsd	%xmm0, c(%rip)
	movsd	%xmm1, powcheck(%rip)
	jmp	.L19
.L17:
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, a(%rip)
	addsd	b(%rip), %xmm0
	movsd	%xmm0, b(%rip)
	movsd	k(%rip), %xmm1
	comisd	%xmm0, %xmm1
	jb	.L54
.L29:
	movsd	a(%rip), %xmm0
	movsd	k(%rip), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L28
	jmp	.L17
.L54:
	call	clock
	subq	%r14, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC14(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	leal	-1(%rbx), %r14d
	cmpl	$1, %ebx
	je	.L38
	cmpl	$2, %ebx
	je	.L39
.L36:
	cmpl	$3, %ebx
	je	.L55
.L30:
	cmpl	$4, %ebx
	je	.L56
.L31:
	cmpl	$5, %ebx
	je	.L57
.L32:
	movl	%ebp, 12(%rsp)
	movss	12(%rsp), %xmm7
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm7, %xmm0
	movsd	(%rsp), %xmm6
	divsd	%xmm6, %xmm0
	mulsd	.LC15(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	%r14d, %r14
	movss	%xmm0, score(,%r14,4)
	pxor	%xmm2, %xmm2
	cvtss2sd	totalscore(%rip), %xmm2
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC16(%rip), %xmm1
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
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	$.LC18, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	(%rsp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	$.LC19, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	.LC20(%rip), %xmm0
	mulss	score(,%r14,4), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEf
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	addl	$1, %ebx
	addl	$4, %r13d
	cmpl	$6, %ebx
	je	.L58
.L33:
	call	clock
	movq	%rax, %r14
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, a(%rip)
	movsd	%xmm0, b(%rip)
	movsd	%xmm0, c(%rip)
	movsd	%xmm0, d(%rip)
	cmpl	$1, %ebx
	je	.L59
	cmpl	$2, %ebx
	je	.L60
	cmpl	$3, %ebx
	je	.L61
	cmpl	$4, %ebx
	je	.L62
	cmpl	$5, %ebx
	je	.L63
	movsd	k(%rip), %xmm0
	comisd	.LC5(%rip), %xmm0
	jnb	.L29
	call	clock
	subq	%r14, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC14(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	leal	-1(%rbx), %r14d
	jmp	.L36
.L38:
	movl	.LC0(%rip), %ebp
	jmp	.L30
.L39:
	movl	.LC1(%rip), %ebp
	jmp	.L31
.L57:
	movl	.LC4(%rip), %ebp
	jmp	.L32
.L55:
	movl	.LC2(%rip), %ebp
	jmp	.L32
.L56:
	movl	.LC3(%rip), %ebp
	jmp	.L32
.L58:
	addl	$20, %r12d
	cmpl	$104, %r12d
	je	.L64
.L34:
	movl	%r12d, %r13d
	movl	$1, %ebx
	jmp	.L33
.L64:
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1866:
	.size	_Z8mainbasev, .-_Z8mainbasev
	.section	.text._ZNSt9exceptionC2ERKS_,"axG",@progbits,_ZNSt9exceptionC5ERKS_,comdat
	.align 2
	.weak	_ZNSt9exceptionC2ERKS_
	.type	_ZNSt9exceptionC2ERKS_, @function
_ZNSt9exceptionC2ERKS_:
.LFB1870:
	.cfi_startproc
	movq	$_ZTVSt9exception+16, (%rdi)
	ret
	.cfi_endproc
.LFE1870:
	.size	_ZNSt9exceptionC2ERKS_, .-_ZNSt9exceptionC2ERKS_
	.weak	_ZNSt9exceptionC1ERKS_
	.set	_ZNSt9exceptionC1ERKS_,_ZNSt9exceptionC2ERKS_
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Arguments: filename optimisationflag"
	.section	.rodata.str1.1
.LC23:
	.string	"a"
.LC24:
	.string	"%s %lf\n"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"Your system has scored a total of "
	.section	.rodata.str1.1
.LC26:
	.string	" points!"
.LC27:
	.string	"File error! \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1868:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1868
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpl	$3, %edi
	jne	.L76
	movq	%rsi, %rbx
.LEHB0:
	call	_Z8mainbasev
.LEHE0:
	movq	8(%rbx), %rdi
	movl	$.LC23, %esi
.LEHB1:
	call	fopen
.LEHE1:
	jmp	.L77
.L76:
	movl	$.LC22, %edi
.LEHB2:
	call	puts
.LEHE2:
	movl	$-1, %edi
	call	exit
.L77:
	movq	%rax, %rbp
	pxor	%xmm0, %xmm0
	cvtss2sd	totalscore(%rip), %xmm0
	movq	16(%rbx), %rdx
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movl	$1, %eax
.LEHB3:
	call	fprintf
	movq	%rbp, %rdi
	call	fclose
.LEHE3:
	jmp	.L70
.L72:
	movq	%rax, %rbx
	cmpq	$1, %rdx
	je	.L69
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L69:
	movq	%rax, %rdi
	call	__cxa_get_exception_ptr
	movq	%rax, %rsi
	leaq	8(%rsp), %rdi
	call	_ZNSt9exceptionC1ERKS_
	movq	%rbx, %rdi
	call	__cxa_begin_catch
	movl	$.LC27, %esi
	movl	$_ZSt4cerr, %edi
.LEHB5:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE5:
	leaq	8(%rsp), %rdi
	call	_ZNSt9exceptionD1Ev
	call	__cxa_end_catch
.L70:
	movl	$.LC25, %esi
	movl	$_ZSt4cout, %edi
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	totalscore(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEf
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L73:
	.cfi_restore_state
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	call	_ZNSt9exceptionD1Ev
	call	__cxa_end_catch
	movq	%rbx, %rdi
	call	_Unwind_Resume
.LEHE6:
	.cfi_endproc
.LFE1868:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA1868:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1868-.LLSDATTD1868
.LLSDATTD1868:
	.byte	0x1
	.uleb128 .LLSDACSE1868-.LLSDACSB1868
.LLSDACSB1868:
	.uleb128 .LEHB0-.LFB1868
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1868
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L72-.LFB1868
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB1868
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1868
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L72-.LFB1868
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB1868
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1868
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L73-.LFB1868
	.uleb128 0
	.uleb128 .LEHB6-.LFB1868
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1868:
	.byte	0x1
	.byte	0
	.align 4
	.long	_ZTISt9exception
.LLSDATT1868:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I_check, @function
_GLOBAL__sub_I_check:
.LFB2377:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2377:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	994352038
	.align 4
.LC1:
	.long	1024416809
	.align 4
.LC2:
	.long	1049347752
	.align 4
.LC3:
	.long	1074685542
	.align 4
.LC4:
	.long	1089545961
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1079574528
	.align 8
.LC7:
	.long	0
	.long	1081032704
	.align 8
.LC8:
	.long	0
	.long	1082081280
	.align 8
.LC9:
	.long	0
	.long	1083129856
	.align 8
.LC10:
	.long	0
	.long	1083666432
	.align 8
.LC11:
	.long	3951369912
	.long	1073133649
	.align 8
.LC12:
	.long	0
	.long	1127219200
	.align 8
.LC14:
	.long	0
	.long	1093567616
	.align 8
.LC15:
	.long	0
	.long	1080623104
	.align 8
.LC16:
	.long	2576980378
	.long	1070176665
	.section	.rodata.cst4
	.align 4
.LC20:
	.long	1084227584
	.section	.rodata.cst8
	.align 8
.LC21:
	.long	4294967295
	.long	2147483647
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
