	.text
	.file	"linpackm.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	-4616189618054758400    # double -1
.LCPI1_1:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI1_2:
	.quad	4738892391094681600     # double 668666688
.LCPI1_3:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_4:
	.long	1030053954              # float 0.0560000017
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	callq	_Z9timestampv
	movl	$1001, %edi             # imm = 0x3E9
	movl	$1000, %esi             # imm = 0x3E8
	callq	_Z9r4mat_genii
	movq	%rax, %r12
	movl	$4000, %edi             # imm = 0xFA0
	callq	_Znam
	movq	%rax, %r15
	movl	$4000, %edi             # imm = 0xFA0
	callq	_Znam
	movq	%rax, %r14
	movl	$4000, %edi             # imm = 0xFA0
	callq	_Znam
	movq	%rax, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movl	$1000, %ecx             # imm = 0x3E8
	.p2align	4, 0x90
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rcx
	jne	.LBB1_2
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	jne	.LBB1_1
# %bb.4:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movl	$1065353216, (%rbx,%rax,4) # imm = 0x3F800000
	addq	$1, %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	jne	.LBB1_5
# %bb.6:
	xorl	%eax, %eax
	movq	%r12, %rcx
	.p2align	4, 0x90
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	movl	$0, (%r15,%rax,4)
	xorps	%xmm0, %xmm0
	movq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	(%rbx,%rsi,4), %xmm1
	addss	%xmm1, %xmm0
	addq	$1, %rsi
	addq	$4004, %rdx             # imm = 0xFA4
	cmpq	$1000, %rsi             # imm = 0x3E8
	jne	.LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	movss	%xmm0, (%r15,%rax,4)
	addq	$1, %rax
	addq	$4, %rcx
	cmpq	$1000, %rax             # imm = 0x3E8
	jne	.LBB1_7
# %bb.10:
	callq	_Z8cpu_timev
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	$1001, %esi             # imm = 0x3E9
	movl	$1000, %edx             # imm = 0x3E8
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	_Z5sgefaPfiiPi
	testl	%eax, %eax
	je	.LBB1_12
# %bb.11:
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %eax
	jmp	.LBB1_26
.LBB1_12:
	callq	_Z8cpu_timev
	subsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	_Z8cpu_timev
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$1001, %esi             # imm = 0x3E9
	movl	$1000, %edx             # imm = 0x3E8
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	_Z5sgeslPfiiPiS_i
	callq	_Z8cpu_timev
	subsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	callq	_ZdaPv
	movl	$1001, %edi             # imm = 0x3E9
	movl	$1000, %esi             # imm = 0x3E8
	callq	_Z9r4mat_genii
	movq	%rax, %r12
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movl	$1065353216, (%rbx,%r13,4) # imm = 0x3F800000
	addq	$1, %r13
	cmpq	$1000, %r13             # imm = 0x3E8
	jne	.LBB1_13
# %bb.14:
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
	movl	$1000, %ecx             # imm = 0x3E8
	.p2align	4, 0x90
.LBB1_16:                               #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rcx
	jne	.LBB1_16
# %bb.17:                               #   in Loop: Header=BB1_15 Depth=1
	addq	$1, %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	jne	.LBB1_15
# %bb.18:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
	movl	$1000, %ecx             # imm = 0x3E8
	.p2align	4, 0x90
.LBB1_20:                               #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rcx
	jne	.LBB1_20
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=1
	addq	$1, %rax
	cmpq	$1000, %rax             # imm = 0x3E8
	jne	.LBB1_19
# %bb.22:
	cvtss2sd	%xmm0, %xmm3
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB1_23
# %bb.24:
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm1
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	jmp	.LBB1_25
.LBB1_23:
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB1_25:
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movsd	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	divss	.LCPI1_4(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$9, %edi
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	callq	_ZSt4setwi
	movl	$_ZSt4cout, %edi
	movl	%eax, %esi
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movl	$.L.str.4, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r13
	movl	$9, %edi
	callq	_ZSt4setwi
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movl	$.L.str.4, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r13
	movl	$9, %edi
	callq	_ZSt4setwi
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rdi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movl	$.L.str.4, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r13
	movl	$9, %edi
	callq	_ZSt4setwi
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rdi
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movl	$.L.str.4, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r13
	movl	$9, %edi
	callq	_ZSt4setwi
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movl	$.L.str.4, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r13
	movl	$9, %edi
	callq	_ZSt4setwi
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSolsEd
	movl	$.L.str, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%r12, %rdi
	callq	_ZdaPv
	movq	%r15, %rdi
	callq	_ZdaPv
	movq	%r14, %rdi
	callq	_ZdaPv
	movq	%rbx, %rdi
	callq	_ZdaPv
	callq	_Z9timestampv
	xorl	%eax, %eax
.LBB1_26:
	addq	$48, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.globl	_Z9timestampv           # -- Begin function _Z9timestampv
	.p2align	4, 0x90
	.type	_Z9timestampv,@function
_Z9timestampv:                          # @_Z9timestampv
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	time
	movq	%rax, (%rsp)
	movq	%rsp, %rdi
	callq	localtime
	movl	$_ZZ9timestampvE11time_buffer, %edi
	movl	$40, %esi
	movl	$.L.str.5, %edx
	movq	%rax, %rcx
	callq	strftime
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_Z9timestampv, .Lfunc_end2-_Z9timestampv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z9r4mat_genii
.LCPI3_0:
	.long	3204448256              # float -0.5
	.text
	.globl	_Z9r4mat_genii
	.p2align	4, 0x90
	.type	_Z9r4mat_genii,@function
_Z9r4mat_genii:                         # @_Z9r4mat_genii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movaps	.L_ZZ9r4mat_geniiE4init(%rip), %xmm0
	movl	%esi, %eax
	movl	%edi, 12(%rsp)          # 4-byte Spill
	imull	%edi, %eax
	cltq
	movl	$4, %ecx
	mulq	%rcx
	movaps	%xmm0, 32(%rsp)
	movq	$-1, %rdi
	cmovnoq	%rax, %rdi
	callq	_Znam
	movq	%rax, %rbp
	testl	%ebx, %ebx
	jle	.LBB3_5
# %bb.1:
	movq	%rbx, %rax
	addl	$1, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	-1(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %r13d
	xorl	%r14d, %r14d
	leaq	32(%rsp), %rbx
	.p2align	4, 0x90
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movq	16(%rsp), %r12          # 8-byte Reload
	movl	%r14d, %r15d
	.p2align	4, 0x90
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	_Z9r4_randomPi
	movss	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movslq	%r15d, %r15
	movss	%xmm0, (%rbp,%r15,4)
	addl	$1, %r15d
	addq	$-1, %r12
	jne	.LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	addl	$1, %r13d
	addl	12(%rsp), %r14d         # 4-byte Folded Reload
	cmpl	24(%rsp), %r13d         # 4-byte Folded Reload
	jne	.LBB3_2
.LBB3_5:
	movq	%rbp, %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_Z9r4mat_genii, .Lfunc_end3-_Z9r4mat_genii
	.cfi_endproc
                                        # -- End function
	.globl	_Z6r4_maxff             # -- Begin function _Z6r4_maxff
	.p2align	4, 0x90
	.type	_Z6r4_maxff,@function
_Z6r4_maxff:                            # @_Z6r4_maxff
	.cfi_startproc
# %bb.0:
	maxss	%xmm1, %xmm0
	retq
.Lfunc_end4:
	.size	_Z6r4_maxff, .Lfunc_end4-_Z6r4_maxff
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z8cpu_timev
.LCPI5_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	_Z8cpu_timev
	.p2align	4, 0x90
	.type	_Z8cpu_timev,@function
_Z8cpu_timev:                           # @_Z8cpu_timev
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	clock
	cvtsi2sdq	%rax, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_Z8cpu_timev, .Lfunc_end5-_Z8cpu_timev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z5sgefaPfiiPi
.LCPI6_0:
	.long	3212836864              # float -1
.LCPI6_1:
	.long	0                       # float 0
	.text
	.globl	_Z5sgefaPfiiPi
	.p2align	4, 0x90
	.type	_Z5sgefaPfiiPi,@function
_Z5sgefaPfiiPi:                         # @_Z5sgefaPfiiPi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	%edx, %r12d
	movl	%esi, 8(%rsp)           # 4-byte Spill
	movq	%rdi, %rbp
	leal	-1(%r12), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	cmpl	$2, %edx
	jl	.LBB6_12
# %bb.1:
	movslq	8(%rsp), %rcx           # 4-byte Folded Reload
	movl	%r12d, %eax
	leaq	4(,%rcx,4), %rdx
	addq	%rbp, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leaq	(,%rcx,4), %rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	leaq	4(,%rcx,4), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	-1(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	movl	$-1, 16(%rsp)           # 4-byte Folded Spill
	movl	$1, %r13d
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	movl	%r12d, %r14d
	subl	%r13d, %r14d
	leal	1(%r14), %edi
	leaq	-1(%r13), %r15
	leaq	-4(,%r13,4), %rax
	addq	%rbp, %rax
	movq	%r15, %rbx
	imulq	%rcx, %rbx
	leaq	(%rax,%rbx,4), %rsi
	movl	$1, %edx
	callq	_Z6isamaxiPfi
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%r13), %esi
	leal	(%rax,%r13), %edx
	addl	$-1, %edx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%edx, -4(%rcx,%r13,4)
	leal	(%rbx,%rsi), %ecx
	addl	$-2, %ecx
	movslq	%ecx, %rdi
	movss	(%rbp,%rdi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_1, %xmm0
	jne	.LBB6_4
	jp	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movl	%r13d, %eax
	movl	%r13d, 12(%rsp)         # 4-byte Spill
	jmp	.LBB6_11
	.p2align	4, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%r14, 64(%rsp)          # 8-byte Spill
	leal	-1(%r13), %ecx
	imull	8(%rsp), %ecx           # 4-byte Folded Reload
	movl	%edx, %r14d
	cmpq	%r14, %r13
	je	.LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_2 Depth=1
	movslq	%ecx, %rdx
	addq	%r15, %rdx
	movl	(%rbp,%rdx,4), %esi
	movl	%esi, (%rbp,%rdi,4)
	movss	%xmm0, (%rbp,%rdx,4)
.LBB6_6:                                #   in Loop: Header=BB6_2 Depth=1
	movslq	%ecx, %rax
	addq	%rax, %r15
	movss	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	(%rbp,%r15,4), %xmm0
	leaq	(,%r13,4), %rax
	addq	%rbp, %rax
	leaq	(%rax,%rbx,4), %r15
	movl	$1, %edx
	movq	64(%rsp), %rdi          # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%r15, %rsi
	callq	_Z5sscalifPfi
	movq	88(%rsp), %rax          # 8-byte Reload
	addl	16(%rsp), %eax          # 4-byte Folded Reload
	cltq
	addq	40(%rsp), %rax          # 8-byte Folded Reload
	leaq	(%rbp,%rax,4), %rbp
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	56(%rsp), %rbx          # 8-byte Reload
	.p2align	4, 0x90
.LBB6_7:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cmpq	%r14, %r13
	je	.LBB6_9
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=2
	movl	-4(%rbx), %eax
	movl	%eax, (%rbp)
	movss	%xmm0, -4(%rbx)
.LBB6_9:                                #   in Loop: Header=BB6_7 Depth=2
	movl	$1, %edx
	movl	$1, %r8d
	movq	64(%rsp), %rdi          # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%r15, %rsi
	movq	%rbx, %rcx
	callq	_Z5saxpyifPfiS_i
	movq	112(%rsp), %rax         # 8-byte Reload
	addq	%rax, %rbx
	addq	%rax, %rbp
	addq	$-1, %r12
	jne	.LBB6_7
# %bb.10:                               #   in Loop: Header=BB6_2 Depth=1
	movq	80(%rsp), %r12          # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	addq	$1, %r13
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	%rax, 56(%rsp)          # 8-byte Folded Spill
	addq	%rcx, 40(%rsp)          # 8-byte Folded Spill
	addl	$1, 16(%rsp)            # 4-byte Folded Spill
	addq	$-1, 48(%rsp)           # 8-byte Folded Spill
	cmpq	104(%rsp), %r13         # 8-byte Folded Reload
	jne	.LBB6_2
.LBB6_12:
	movslq	20(%rsp), %rax          # 4-byte Folded Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%r12d, (%rcx,%rax,4)
	movl	8(%rsp), %ecx           # 4-byte Reload
	imull	%eax, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	xorps	%xmm0, %xmm0
	ucomiss	(%rbp,%rax,4), %xmm0
	movl	12(%rsp), %eax          # 4-byte Reload
	cmovnel	%eax, %r12d
	cmovpl	%eax, %r12d
	movl	%r12d, %eax
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_Z5sgefaPfiiPi, .Lfunc_end6-_Z5sgefaPfiiPi
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _Z5sgeslPfiiPiS_i
.LCPI7_0:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	_Z5sgeslPfiiPiS_i
	.p2align	4, 0x90
	.type	_Z5sgeslPfiiPiS_i,@function
_Z5sgeslPfiiPiS_i:                      # @_Z5sgeslPfiiPiS_i
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 48(%rsp)          # 8-byte Spill
                                        # kill: def $edx killed $edx def $rdx
	testl	%r9d, %r9d
	movq	%r8, 40(%rsp)           # 8-byte Spill
	je	.LBB7_9
# %bb.1:
	testl	%edx, %edx
	jle	.LBB7_17
# %bb.2:
	movslq	%esi, %rax
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leal	1(%rdx), %r12d
	leaq	(,%rax,4), %rdx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	4(,%rax,4), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	addq	$-1, %r12
	xorl	%ebx, %ebx
	movq	%rdi, %rbp
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	movq	40(%rsp), %r14          # 8-byte Reload
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, %r13
	movl	$1, %edx
	movl	$1, %r8d
	movl	%ebx, %edi
	movq	%rbp, %rsi
	movq	%r14, %rcx
	callq	_Z4sdotiPfiS_i
	movq	%r13, %rdx
	movss	(%r14,%rbx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	divss	(%r15), %xmm1
	movss	%xmm1, (%r14,%rbx,4)
	addq	16(%rsp), %r15          # 8-byte Folded Reload
	addq	%r13, %rbp
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jne	.LBB7_3
# %bb.4:
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	jl	.LBB7_17
# %bb.5:
	movslq	%eax, %rbx
	leaq	-2(%rbx), %rax
	imulq	24(%rsp), %rax          # 8-byte Folded Reload
	leaq	(%rcx,%rax,4), %r12
	addq	$-4, %r12
	xorq	$-4, %rdx
	addq	$-8, %r14
	leaq	(,%rbx,4), %r15
	addq	$1, %rbx
	movl	$1, %ebp
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	.p2align	4, 0x90
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	leaq	-2(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movss	-8(%r13,%r15), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	leaq	(%r12,%r15), %rsi
	leaq	-4(%r13,%r15), %rcx
	movl	$1, %edx
	movl	$1, %r8d
	movl	%ebp, %edi
	callq	_Z4sdotiPfiS_i
	addss	48(%rsp), %xmm0         # 4-byte Folded Reload
	movss	%xmm0, -8(%r13,%r15)
	movl	(%r14,%r15), %eax
	cmpq	%rax, 16(%rsp)          # 8-byte Folded Reload
	je	.LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	cltq
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rax,4), %ecx
	movss	%xmm0, -4(%rdx,%rax,4)
	movl	%ecx, -8(%r13,%r15)
.LBB7_8:                                #   in Loop: Header=BB7_6 Depth=1
	movq	8(%rsp), %rdx           # 8-byte Reload
	addq	%rdx, %r12
	addq	$-4, %r13
	addq	$-4, %r14
	addq	$-1, %rbx
	addl	$1, %ebp
	cmpq	$2, %rbx
	jg	.LBB7_6
	jmp	.LBB7_17
.LBB7_9:
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	cmpl	$2, %edx
	jl	.LBB7_14
# %bb.10:
	movq	%r8, %rbx
	movslq	24(%rsp), %rax          # 4-byte Folded Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %ebp
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	4(%rcx), %r15
	leaq	4(,%rax,4), %r14
	movl	$1, %r12d
	movl	$4, %r13d
	.p2align	4, 0x90
.LBB7_11:                               # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	-4(%rax,%r12,4), %ecx
	movslq	%ecx, %rax
	movss	-4(%rbx,%rax,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cmpq	%rcx, %r12
	je	.LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	movl	-4(%rbx,%r12,4), %ecx
	movl	%ecx, -4(%rbx,%rax,4)
	movss	%xmm0, -4(%rbx,%r12,4)
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=1
	leaq	(%rbx,%r13), %rcx
	movl	$1, %edx
	movl	$1, %r8d
	movl	%ebp, %edi
	movq	%r15, %rsi
	callq	_Z5saxpyifPfiS_i
	addq	$1, %r12
	addl	$-1, %ebp
	addq	%r14, %r15
	addq	$4, %r13
	cmpq	%r12, 16(%rsp)          # 8-byte Folded Reload
	jne	.LBB7_11
.LBB7_14:
	movq	32(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	24(%rsp), %esi          # 4-byte Reload
	jle	.LBB7_17
# %bb.15:
	movslq	%ecx, %rax
	movslq	%esi, %r15
	addl	$-1, %ecx
	imull	%esi, %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	leaq	-1(%rax), %rbp
	leaq	(%rdx,%rcx,4), %r12
	addq	$-4, %r12
	negl	%esi
	movslq	%esi, %rax
	leaq	-4(,%rax,4), %r13
	movq	%rbp, %rax
	imulq	%r15, %rax
	leaq	(%rdx,%rax,4), %rbx
	shlq	$2, %r15
	negq	%r15
	.p2align	4, 0x90
.LBB7_16:                               # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movss	(%rcx,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	divss	(%r12), %xmm0
	movss	%xmm0, (%rcx,%rbp,4)
	xorps	.LCPI7_0(%rip), %xmm0
	movl	$1, %edx
	movl	$1, %r8d
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	_Z5saxpyifPfiS_i
	leaq	-1(%rbp), %rax
	addq	$1, %rbp
	addq	%r13, %r12
	addq	%r15, %rbx
	cmpq	$1, %rbp
	movq	%rax, %rbp
	jg	.LBB7_16
.LBB7_17:
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_Z5sgeslPfiiPiS_i, .Lfunc_end7-_Z5sgeslPfiiPiS_i
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _Z6r4_absf
.LCPI8_0:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	_Z6r4_absf
	.p2align	4, 0x90
	.type	_Z6r4_absf,@function
_Z6r4_absf:                             # @_Z6r4_absf
	.cfi_startproc
# %bb.0:
	movaps	.LCPI8_0(%rip), %xmm2   # xmm2 = [-0.000000e+00,-0.000000e+00,-0.000000e+00,-0.000000e+00]
	xorps	%xmm0, %xmm2
	xorps	%xmm1, %xmm1
	cmpnless	%xmm0, %xmm1
	movaps	%xmm1, %xmm3
	andnps	%xmm0, %xmm3
	andps	%xmm2, %xmm1
	orps	%xmm3, %xmm1
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end8:
	.size	_Z6r4_absf, .Lfunc_end8-_Z6r4_absf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z10r4_epsilonv
.LCPI9_0:
	.long	1065353216              # float 1
.LCPI9_1:
	.long	1056964608              # float 0.5
	.text
	.globl	_Z10r4_epsilonv
	.p2align	4, 0x90
	.type	_Z10r4_epsilonv,@function
_Z10r4_epsilonv:                        # @_Z10r4_epsilonv
	.cfi_startproc
# %bb.0:
	movss	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI9_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm0
	.p2align	4, 0x90
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	mulss	%xmm2, %xmm0
	movaps	%xmm0, %xmm3
	addss	%xmm1, %xmm3
	ucomiss	%xmm1, %xmm3
	ja	.LBB9_1
# %bb.2:
	addss	%xmm0, %xmm0
	retq
.Lfunc_end9:
	.size	_Z10r4_epsilonv, .Lfunc_end9-_Z10r4_epsilonv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4setwi,"axG",@progbits,_ZSt4setwi,comdat
	.weak	_ZSt4setwi              # -- Begin function _ZSt4setwi
	.p2align	4, 0x90
	.type	_ZSt4setwi,@function
_ZSt4setwi:                             # @_ZSt4setwi
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	retq
.Lfunc_end10:
	.size	_ZSt4setwi, .Lfunc_end10-_ZSt4setwi
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z5saxpyifPfiS_i        # -- Begin function _Z5saxpyifPfiS_i
	.p2align	4, 0x90
	.type	_Z5saxpyifPfiS_i,@function
_Z5saxpyifPfiS_i:                       # @_Z5saxpyifPfiS_i
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jle	.LBB11_12
# %bb.1:
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB11_2
	jnp	.LBB11_12
.LBB11_2:
	cmpl	$1, %edx
	jne	.LBB11_4
# %bb.3:
	cmpl	$1, %r8d
	jne	.LBB11_4
# %bb.6:
	movl	%edi, %eax
	andl	$3, %eax
	je	.LBB11_9
# %bb.7:
	movl	%eax, %r8d
	shlq	$2, %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	movss	(%rsi,%rdx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	(%rcx,%rdx), %xmm1
	movss	%xmm1, (%rcx,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %r8
	jne	.LBB11_8
.LBB11_9:
	cmpl	$4, %edi
	jl	.LBB11_12
# %bb.10:
	movslq	%edi, %rdx
	.p2align	4, 0x90
.LBB11_11:                              # =>This Inner Loop Header: Depth=1
	movss	(%rsi,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	(%rcx,%rax,4), %xmm1
	movss	%xmm1, (%rcx,%rax,4)
	movss	4(%rsi,%rax,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	4(%rcx,%rax,4), %xmm1
	movss	%xmm1, 4(%rcx,%rax,4)
	movss	8(%rsi,%rax,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	8(%rcx,%rax,4), %xmm1
	movss	%xmm1, 8(%rcx,%rax,4)
	movss	12(%rsi,%rax,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	12(%rcx,%rax,4), %xmm1
	movss	%xmm1, 12(%rcx,%rax,4)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jl	.LBB11_11
	jmp	.LBB11_12
.LBB11_4:
	movl	$1, %r9d
	subl	%edi, %r9d
	movl	%r9d, %eax
	imull	%r8d, %eax
	xorl	%r10d, %r10d
	testl	%r8d, %r8d
	cmovnsl	%r10d, %eax
	imull	%edx, %r9d
	testl	%edx, %edx
	cmovnsl	%r10d, %r9d
	movslq	%eax, %r10
	movslq	%r8d, %rax
	movslq	%r9d, %r8
	movslq	%edx, %rdx
	leaq	(%rsi,%r8,4), %rsi
	shlq	$2, %rdx
	leaq	(%rcx,%r10,4), %rcx
	shlq	$2, %rax
	.p2align	4, 0x90
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	(%rcx), %xmm1
	movss	%xmm1, (%rcx)
	addq	%rdx, %rsi
	addq	%rax, %rcx
	addl	$-1, %edi
	jne	.LBB11_5
.LBB11_12:
	retq
.Lfunc_end11:
	.size	_Z5saxpyifPfiS_i, .Lfunc_end11-_Z5saxpyifPfiS_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z4sdotiPfiS_i          # -- Begin function _Z4sdotiPfiS_i
	.p2align	4, 0x90
	.type	_Z4sdotiPfiS_i,@function
_Z4sdotiPfiS_i:                         # @_Z4sdotiPfiS_i
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jle	.LBB12_1
# %bb.2:
	cmpl	$1, %edx
	jne	.LBB12_4
# %bb.3:
	cmpl	$1, %r8d
	jne	.LBB12_4
# %bb.6:
	movl	%edi, %r8d
	movl	$3435973837, %eax       # imm = 0xCCCCCCCD
	imulq	%r8, %rax
	shrq	$34, %rax
	leal	(%rax,%rax,4), %eax
	movl	%edi, %r9d
	subl	%eax, %r9d
	je	.LBB12_7
# %bb.12:
	movl	%r9d, %edx
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB12_13:                              # =>This Inner Loop Header: Depth=1
	movss	(%rsi,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	(%rcx,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB12_13
# %bb.8:
	cmpl	%edi, %r9d
	jl	.LBB12_9
	jmp	.LBB12_11
.LBB12_1:
	xorps	%xmm0, %xmm0
	retq
.LBB12_4:
	movl	$1, %r9d
	subl	%edi, %r9d
	movl	%r9d, %eax
	imull	%r8d, %eax
	xorl	%r10d, %r10d
	testl	%r8d, %r8d
	cmovnsl	%r10d, %eax
	imull	%edx, %r9d
	testl	%edx, %edx
	cmovnsl	%r10d, %r9d
	movslq	%eax, %r10
	movslq	%r8d, %rax
	movslq	%r9d, %r8
	movslq	%edx, %rdx
	leaq	(%rsi,%r8,4), %rsi
	shlq	$2, %rdx
	leaq	(%rcx,%r10,4), %rcx
	shlq	$2, %rax
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	(%rcx), %xmm1
	addss	%xmm1, %xmm0
	addq	%rdx, %rsi
	addq	%rax, %rcx
	addl	$-1, %edi
	jne	.LBB12_5
	jmp	.LBB12_11
.LBB12_7:
	xorps	%xmm0, %xmm0
	cmpl	%edi, %r9d
	jge	.LBB12_11
.LBB12_9:
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%r8, %rax
	mulq	%rdx
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	negq	%rax
	addq	%rax, %r8
	addq	$4, %r8
	leaq	(%rcx,%r8,4), %rax
	leaq	(%rsi,%r8,4), %rcx
	leal	(%rdx,%rdx,4), %esi
	movl	%edi, %r8d
	subl	%esi, %r8d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB12_10:                              # =>This Inner Loop Header: Depth=1
	movss	-16(%rcx,%rsi,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	mulss	-16(%rax,%rsi,4), %xmm1
	movss	-12(%rcx,%rsi,4), %xmm2 # xmm2 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	mulss	-12(%rax,%rsi,4), %xmm2
	addss	%xmm1, %xmm2
	movss	-8(%rcx,%rsi,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rax,%rsi,4), %xmm0
	addss	%xmm2, %xmm0
	movss	-4(%rcx,%rsi,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	-4(%rax,%rsi,4), %xmm1
	addss	%xmm0, %xmm1
	movss	(%rcx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	mulss	(%rax,%rsi,4), %xmm0
	addss	%xmm1, %xmm0
	addq	$5, %rsi
	leal	(%r8,%rsi), %edx
	cmpl	%edi, %edx
	jl	.LBB12_10
.LBB12_11:
	retq
.Lfunc_end12:
	.size	_Z4sdotiPfiS_i, .Lfunc_end12-_Z4sdotiPfiS_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z6isamaxiPfi           # -- Begin function _Z6isamaxiPfi
	.p2align	4, 0x90
	.type	_Z6isamaxiPfi,@function
_Z6isamaxiPfi:                          # @_Z6isamaxiPfi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%ebx, %ebx
	testl	%edi, %edi
	jle	.LBB13_8
# %bb.1:
	movl	%edx, %ebp
	testl	%edx, %edx
	jle	.LBB13_8
# %bb.2:
	movl	%edi, %r14d
	movl	$1, %ebx
	cmpl	$1, %edi
	je	.LBB13_8
# %bb.3:
	movq	%rsi, %r15
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	_Z6r4_absf
	cmpl	$1, %ebp
	jne	.LBB13_4
# %bb.6:
	movl	%r14d, %r14d
	movl	$1, %ebx
	movl	$1, %ebp
	.p2align	4, 0x90
.LBB13_7:                               # =>This Inner Loop Header: Depth=1
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	(%r15,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	callq	_Z6r4_absf
	addq	$1, %rbp
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	maxss	%xmm1, %xmm0
	cmoval	%ebp, %ebx
	cmpq	%rbp, %r14
	jne	.LBB13_7
	jmp	.LBB13_8
.LBB13_4:
	movslq	%ebp, %r12
	leaq	(%r15,%r12,4), %rbp
	shlq	$2, %r12
	negl	%r14d
	movl	$1, %ebx
	movl	$2, %r15d
	.p2align	4, 0x90
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	_Z6r4_absf
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	maxss	%xmm1, %xmm0
	cmoval	%r15d, %ebx
	addq	%r12, %rbp
	leal	(%r14,%r15), %eax
	addl	$1, %eax
	leal	1(%r15), %ecx
	movl	%ecx, %r15d
	cmpl	$1, %eax
	jne	.LBB13_5
.LBB13_8:
	movl	%ebx, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_Z6isamaxiPfi, .Lfunc_end13-_Z6isamaxiPfi
	.cfi_endproc
                                        # -- End function
	.globl	_Z5sscalifPfi           # -- Begin function _Z5sscalifPfi
	.p2align	4, 0x90
	.type	_Z5sscalifPfi,@function
_Z5sscalifPfi:                          # @_Z5sscalifPfi
	.cfi_startproc
# %bb.0:
	testl	%edi, %edi
	jle	.LBB14_10
# %bb.1:
	cmpl	$1, %edx
	jne	.LBB14_8
# %bb.2:
	movl	%edi, %r8d
	movl	$3435973837, %eax       # imm = 0xCCCCCCCD
	imulq	%r8, %rax
	shrq	$34, %rax
	leal	(%rax,%rax,4), %ecx
	movl	%edi, %eax
	subl	%ecx, %eax
	je	.LBB14_5
# %bb.3:
	movl	%eax, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movss	(%rsi,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rsi,%rcx,4)
	addq	$1, %rcx
	cmpq	%rdx, %rcx
	jb	.LBB14_4
.LBB14_5:
	cmpl	%edi, %eax
	jge	.LBB14_10
# %bb.6:
	movabsq	$-3689348814741910323, %rcx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%r8, %rax
	mulq	%rcx
	shrq	$2, %rdx
	leaq	(%rdx,%rdx,4), %rax
	negq	%rax
	addq	%r8, %rax
	addq	$4, %rax
	leaq	(%rsi,%rax,4), %rax
	leal	(%rdx,%rdx,4), %edx
	movl	%edi, %ecx
	subl	%edx, %ecx
	.p2align	4, 0x90
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	movss	-16(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, -16(%rax)
	movss	-12(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, -12(%rax)
	movss	-8(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, -8(%rax)
	movss	-4(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, -4(%rax)
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rax)
	addq	$20, %rax
	addl	$5, %ecx
	cmpl	%edi, %ecx
	jl	.LBB14_7
	jmp	.LBB14_10
.LBB14_8:
	movl	$1, %eax
	subl	%edi, %eax
	imull	%edx, %eax
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovsl	%eax, %ecx
	movslq	%ecx, %rcx
	movslq	%edx, %rax
	leaq	(%rsi,%rcx,4), %rcx
	shlq	$2, %rax
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rcx)
	addq	%rax, %rcx
	addl	$-1, %edi
	jne	.LBB14_9
.LBB14_10:
	retq
.Lfunc_end14:
	.size	_Z5sscalifPfi, .Lfunc_end14-_Z5sscalifPfi
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z9r4_randomPi
.LCPI15_0:
	.long	964689920               # float 2.44140625E-4
	.text
	.globl	_Z9r4_randomPi
	.p2align	4, 0x90
	.type	_Z9r4_randomPi,@function
_Z9r4_randomPi:                         # @_Z9r4_randomPi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	12(%rdi), %r10d
	imull	$2549, %r10d, %r11d     # imm = 0x9F5
	movl	%r11d, %ecx
	sarl	$31, %ecx
	shrl	$20, %ecx
	addl	%r11d, %ecx
	movl	%ecx, %esi
	sarl	$12, %esi
	andl	$-4096, %ecx            # imm = 0xF000
	subl	%ecx, %r11d
	movl	4(%rdi), %r8d
	movl	8(%rdi), %r9d
	imull	$2549, %r9d, %edx       # imm = 0x9F5
	imull	$2508, %r10d, %ecx      # imm = 0x9CC
	addl	%edx, %ecx
	addl	%esi, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$20, %edx
	addl	%ecx, %edx
	movl	%edx, %eax
	sarl	$12, %eax
	andl	$-4096, %edx            # imm = 0xF000
	subl	%edx, %ecx
	imull	$2549, %r8d, %edx       # imm = 0x9F5
	imull	$2508, %r9d, %ebx       # imm = 0x9CC
	imull	$322, %r10d, %esi       # imm = 0x142
	addl	%ebx, %esi
	addl	%edx, %esi
	addl	%eax, %esi
	movl	%esi, %eax
	sarl	$31, %eax
	shrl	$20, %eax
	addl	%esi, %eax
	movl	%eax, %edx
	sarl	$12, %edx
	andl	$-4096, %eax            # imm = 0xF000
	subl	%eax, %esi
	imull	$2549, (%rdi), %r14d    # imm = 0x9F5
	imull	$2508, %r8d, %ebx       # imm = 0x9CC
	imull	$322, %r9d, %eax        # imm = 0x142
	imull	$494, %r10d, %ebp       # imm = 0x1EE
	addl	%eax, %ebp
	addl	%ebx, %ebp
	addl	%r14d, %ebp
	addl	%edx, %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$20, %eax
	addl	%ebp, %eax
	andl	$-4096, %eax            # imm = 0xF000
	subl	%eax, %ebp
	movl	%ebp, (%rdi)
	cvtsi2ssl	%ebp, %xmm1
	movl	%esi, 4(%rdi)
	cvtsi2ssl	%esi, %xmm2
	movl	%ecx, 8(%rdi)
	cvtsi2ssl	%ecx, %xmm3
	movl	%r11d, 12(%rdi)
	cvtsi2ssl	%r11d, %xmm0
	movss	.LCPI15_0(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm0
	addss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	mulss	%xmm4, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_Z9r4_randomPi, .Lfunc_end15-_Z9r4_randomPi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc # -- Begin function _ZNSt11char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
	.type	_ZNSt11char_traitsIcE6lengthEPKc,@function
_ZNSt11char_traitsIcE6lengthEPKc:       # @_ZNSt11char_traitsIcE6lengthEPKc
	.cfi_startproc
# %bb.0:
	jmp	strlen                  # TAILCALL
.Lfunc_end16:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .Lfunc_end16-_ZNSt11char_traitsIcE6lengthEPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZStorSt12_Ios_IostateS_,"axG",@progbits,_ZStorSt12_Ios_IostateS_,comdat
	.weak	_ZStorSt12_Ios_IostateS_ # -- Begin function _ZStorSt12_Ios_IostateS_
	.p2align	4, 0x90
	.type	_ZStorSt12_Ios_IostateS_,@function
_ZStorSt12_Ios_IostateS_:               # @_ZStorSt12_Ios_IostateS_
	.cfi_startproc
# %bb.0:
	orl	%esi, %edi
	movl	%edi, %eax
	retq
.Lfunc_end17:
	.size	_ZStorSt12_Ios_IostateS_, .Lfunc_end17-_ZStorSt12_Ios_IostateS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8ios_base5widthEl,"axG",@progbits,_ZNSt8ios_base5widthEl,comdat
	.weak	_ZNSt8ios_base5widthEl  # -- Begin function _ZNSt8ios_base5widthEl
	.p2align	4, 0x90
	.type	_ZNSt8ios_base5widthEl,@function
_ZNSt8ios_base5widthEl:                 # @_ZNSt8ios_base5widthEl
	.cfi_startproc
# %bb.0:
	movq	16(%rdi), %rax
	movq	%rsi, 16(%rdi)
	retq
.Lfunc_end18:
	.size	_ZNSt8ios_base5widthEl, .Lfunc_end18-_ZNSt8ios_base5widthEl
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_linpackm.cpp
	.type	_GLOBAL__sub_I_linpackm.cpp,@function
_GLOBAL__sub_I_linpackm.cpp:            # @_GLOBAL__sub_I_linpackm.cpp
	.cfi_startproc
# %bb.0:
	jmp	__cxx_global_var_init   # TAILCALL
.Lfunc_end19:
	.size	_GLOBAL__sub_I_linpackm.cpp, .Lfunc_end19-_GLOBAL__sub_I_linpackm.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LINPACK_BENCH_S - Fatal error!\n"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"  The matrix A is apparently singular.\n"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"  Abnormal end of execution.\n"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"  "
	.size	.L.str.4, 3

	.type	.L_ZZ9r4mat_geniiE4init,@object # @_ZZ9r4mat_geniiE4init
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L_ZZ9r4mat_geniiE4init:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1325                    # 0x52d
	.size	.L_ZZ9r4mat_geniiE4init, 16

	.type	_ZZ9timestampvE11time_buffer,@object # @_ZZ9timestampvE11time_buffer
	.local	_ZZ9timestampvE11time_buffer
	.comm	_ZZ9timestampvE11time_buffer,40,16
	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%d %B %Y %I:%M:%S %p"
	.size	.L.str.5, 21

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_linpackm.cpp

	.ident	"clang version 7.0.1 (Fedora 7.0.1-6.fc29)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_linpackm.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZZ9timestampvE11time_buffer
