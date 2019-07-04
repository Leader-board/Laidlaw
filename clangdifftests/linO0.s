	.text
	.file	"linpackm.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1310682157              # float 668666688
.LCPI1_1:
	.long	1030053954              # float 0.0560000017
.LCPI1_2:
	.long	1148846080              # float 1000
.LCPI1_6:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_3:
	.quad	-4616189618054758400    # double -1
.LCPI1_4:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI1_5:
	.quad	4611686018427387904     # double 2
	.text
	.globl	main
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
	subq	$400, %rsp              # imm = 0x190
	movss	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movss	%xmm0, -40(%rbp)
	callq	_Z9timestampv
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)
	movl	$1001, %edi             # imm = 0x3E9
	movl	$1000, %esi             # imm = 0x3E8
	callq	_Z9r4mat_genii
	movl	$4000, %esi             # imm = 0xFA0
	movl	%esi, %edi
	movq	%rax, -16(%rbp)
	callq	_Znam
	movl	$4000, %esi             # imm = 0xFA0
	movl	%esi, %edi
	movq	%rax, -32(%rbp)
	callq	_Znam
	movl	$4000, %esi             # imm = 0xFA0
	movl	%esi, %edi
	movq	%rax, -64(%rbp)
	callq	_Znam
	movl	$4000, %esi             # imm = 0xFA0
	movl	%esi, %edi
	movq	%rax, -88(%rbp)
	callq	_Znam
	movl	$4000, %esi             # imm = 0xFA0
	movl	%esi, %edi
	movq	%rax, -104(%rbp)
	callq	_Znam
	movq	%rax, -192(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	$0, -68(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpl	$1000, -68(%rbp)        # imm = 0x3E8
	jge	.LBB1_8
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -48(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	$1001, -68(%rbp), %edx  # imm = 0x3E9
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	callq	_Z6r4_maxff
	movss	%xmm0, -20(%rbp)
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_1
.LBB1_8:
	movl	$0, -48(%rbp)
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	movss	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-192(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_9
.LBB1_12:
	movl	$0, -48(%rbp)
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_20
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -68(%rbp)
.LBB1_15:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1000, -68(%rbp)        # imm = 0x3E8
	jge	.LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	imull	$1001, -68(%rbp), %esi  # imm = 0x3E9
	addl	%esi, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-192(%rbp), %rax
	movslq	-68(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.17:                               #   in Loop: Header=BB1_15 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_15
.LBB1_18:                               #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_19
.LBB1_19:                               #   in Loop: Header=BB1_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_13
.LBB1_20:
	callq	_Z8cpu_timev
	movsd	%xmm0, -112(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	$1001, %esi             # imm = 0x3E9
	movl	$1000, %edx             # imm = 0x3E8
	callq	_Z5sgefaPfiiPi
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_22
# %bb.21:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.1, %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.2, %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.3, %rsi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, -4(%rbp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB1_68
.LBB1_22:
	callq	_Z8cpu_timev
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-112(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	callq	_Z8cpu_timev
	movsd	%xmm0, -112(%rbp)
	movl	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %r8
	movl	-72(%rbp), %r9d
	movl	$1001, %esi             # imm = 0x3E9
	movl	$1000, %edx             # imm = 0x3E8
	callq	_Z5sgeslPfiiPiS_i
	callq	_Z8cpu_timev
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-112(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-168(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -180(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	je	.LBB1_24
# %bb.23:
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB1_24:
	movl	$1001, %edi             # imm = 0x3E9
	movl	$1000, %esi             # imm = 0x3E8
	callq	_Z9r4mat_genii
	movq	%rax, -16(%rbp)
	movl	$0, -48(%rbp)
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_28
# %bb.26:                               #   in Loop: Header=BB1_25 Depth=1
	movss	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-192(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.27:                               #   in Loop: Header=BB1_25 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_25
.LBB1_28:
	movl	$0, -48(%rbp)
.LBB1_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_36
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=1
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -68(%rbp)
.LBB1_31:                               #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1000, -68(%rbp)        # imm = 0x3E8
	jge	.LBB1_34
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=2
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	imull	$1001, -68(%rbp), %esi  # imm = 0x3E9
	addl	%esi, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-192(%rbp), %rax
	movslq	-68(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.33:                               #   in Loop: Header=BB1_31 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_31
.LBB1_34:                               #   in Loop: Header=BB1_29 Depth=1
	jmp	.LBB1_35
.LBB1_35:                               #   in Loop: Header=BB1_29 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_29
.LBB1_36:
	movl	$0, -48(%rbp)
.LBB1_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_44
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=1
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %edx
	xorl	$2147483648, %edx       # imm = 0x80000000
	movd	%edx, %xmm0
	movq	-88(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -68(%rbp)
.LBB1_39:                               #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1000, -68(%rbp)        # imm = 0x3E8
	jge	.LBB1_42
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=2
	movq	-88(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	imull	$1001, -68(%rbp), %esi  # imm = 0x3E9
	addl	%esi, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-68(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.41:                               #   in Loop: Header=BB1_39 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_39
.LBB1_42:                               #   in Loop: Header=BB1_37 Depth=1
	jmp	.LBB1_43
.LBB1_43:                               #   in Loop: Header=BB1_37 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_37
.LBB1_44:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	movl	$0, -48(%rbp)
.LBB1_45:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_48
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=1
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -284(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	_Z6r4_absf
	movss	-284(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -288(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-288(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	_Z6r4_maxff
	movss	%xmm0, -92(%rbp)
# %bb.47:                               #   in Loop: Header=BB1_45 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_45
.LBB1_48:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	$0, -48(%rbp)
.LBB1_49:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -48(%rbp)        # imm = 0x3E8
	jge	.LBB1_52
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=1
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -292(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	_Z6r4_absf
	movss	-292(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -296(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-296(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	_Z6r4_maxff
	movss	%xmm0, -36(%rbp)
# %bb.51:                               #   in Loop: Header=BB1_49 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_49
.LBB1_52:
	callq	_Z10r4_epsilonv
	movss	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-20(%rbp), %xmm1
	mulss	-36(%rbp), %xmm1
	mulss	-44(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-180(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)
	movss	-180(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_54
# %bb.53:
	movsd	.LCPI1_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	-76(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-180(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	jmp	.LBB1_55
.LBB1_54:
	movsd	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
.LBB1_55:
	movsd	.LCPI1_5(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	-152(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movss	-180(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	divss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$9, %edi
	callq	_ZSt4setwi
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %esi
	movabsq	$_ZSt4cout, %rdi
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movabsq	$.L.str.4, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$9, %edi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	_ZSt4setwi
	movl	%eax, -208(%rbp)
	movl	-208(%rbp), %esi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movabsq	$.L.str.4, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$9, %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	_ZSt4setwi
	movl	%eax, -216(%rbp)
	movl	-216(%rbp), %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movabsq	$.L.str.4, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$9, %edi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	_ZSt4setwi
	movl	%eax, -224(%rbp)
	movl	-224(%rbp), %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movabsq	$.L.str.4, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$9, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	_ZSt4setwi
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movabsq	$.L.str.4, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$9, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	_ZSt4setwi
	movl	%eax, -240(%rbp)
	movl	-240(%rbp), %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	callq	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movabsq	$.L.str, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-16(%rbp), %rsi
	cmpq	$0, %rsi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	je	.LBB1_57
# %bb.56:
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB1_57:
	movq	-32(%rbp), %rax
	cmpq	$0, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	je	.LBB1_59
# %bb.58:
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB1_59:
	movq	-64(%rbp), %rax
	cmpq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	je	.LBB1_61
# %bb.60:
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB1_61:
	movq	-88(%rbp), %rax
	cmpq	$0, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	je	.LBB1_63
# %bb.62:
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB1_63:
	movq	-104(%rbp), %rax
	cmpq	$0, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	je	.LBB1_65
# %bb.64:
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB1_65:
	movq	-192(%rbp), %rax
	cmpq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	je	.LBB1_67
# %bb.66:
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZdaPv
.LBB1_67:
	callq	_Z9timestampv
	movl	$0, -4(%rbp)
.LBB1_68:
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	localtime
	movl	$40, %ecx
	movl	%ecx, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movabsq	$_ZZ9timestampvE11time_buffer, %rdi
	movabsq	$.L.str.5, %rdx
	callq	strftime
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z9timestampv, .Lfunc_end2-_Z9timestampv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9r4mat_genii
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	_Z9r4mat_genii
	.p2align	4, 0x90
	.type	_Z9r4mat_genii,@function
_Z9r4mat_genii:                         # @_Z9r4mat_genii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$4, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	.L_ZZ9r4mat_geniiE4init, %rdx
	movq	%rdx, -48(%rbp)
	movq	.L_ZZ9r4mat_geniiE4init+8, %rdx
	movq	%rdx, -40(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cltq
	mulq	%rcx
	seto	%r8b
	movq	$-1, %rcx
	cmovoq	%rcx, %rax
	movq	%rax, %rdi
	movb	%r8b, -53(%rbp)         # 1-byte Spill
	callq	_Znam
	movq	%rax, -16(%rbp)
	movl	$1, -52(%rbp)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB3_8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$1, -20(%rbp)
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
	leaq	-48(%rbp), %rdi
	callq	_Z9r4_randomPi
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	imull	-4(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movss	%xmm0, (%rdi,%rdx,4)
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_1
.LBB3_8:
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_2
# %bb.1:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB4_3
.LBB4_2:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB4_3:
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	clock
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_Z8cpu_timev, .Lfunc_end5-_Z8cpu_timev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z5sgefaPfiiPi
.LCPI6_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	_Z5sgefaPfiiPi
	.p2align	4, 0x90
	.type	_Z5sgefaPfiiPi,@function
_Z5sgefaPfiiPi:                         # @_Z5sgefaPfiiPi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -36(%rbp)
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	movl	-36(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB6_14
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-16(%rbp), %eax
	subl	-36(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rcx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rcx
	movl	%eax, %edi
	movq	%rcx, %rsi
	movl	$1, %edx
	callq	_Z6isamaxiPfi
	addl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	movl	%eax, (%rcx,%rsi,4)
	movq	-8(%rbp), %rcx
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rsi
	movss	(%rcx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_4
	jp	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_13
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	%xmm0, (%rax,%rsi,4)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	%xmm0, (%rax,%rsi,4)
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movl	-16(%rbp), %ecx
	subl	-36(%rbp), %ecx
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rax
	movl	-36(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	_Z5sscalifPfi
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
.LBB6_7:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB6_12
# %bb.8:                                #   in Loop: Header=BB6_7 Depth=2
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movl	-32(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movl	-40(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	je	.LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_7 Depth=2
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	-32(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	(%rax,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movl	-32(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	%xmm0, (%rax,%rsi,4)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	-32(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movss	%xmm0, (%rax,%rsi,4)
.LBB6_10:                               #   in Loop: Header=BB6_7 Depth=2
	movl	-16(%rbp), %eax
	subl	-36(%rbp), %eax
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %esi
	subl	$1, %esi
	imull	-12(%rbp), %esi
	movslq	%esi, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	movslq	-36(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rdx
	movl	-32(%rbp), %esi
	subl	$1, %esi
	imull	-12(%rbp), %esi
	movslq	%esi, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rdx
	movl	%eax, %edi
	movq	%rcx, %rsi
	movl	$1, %eax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, %r8d
	callq	_Z5saxpyifPfiS_i
# %bb.11:                               #   in Loop: Header=BB6_7 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_7
.LBB6_12:                               #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_13
.LBB6_13:                               #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_14:
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	movl	%eax, (%rcx,%rsi,4)
	movq	-8(%rbp), %rcx
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rsi
	movss	(%rcx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_16
	jp	.LBB6_16
# %bb.15:
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB6_16:
	movl	-28(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_Z5sgefaPfiiPi, .Lfunc_end6-_Z5sgefaPfiiPi
	.cfi_endproc
                                        # -- End function
	.globl	_Z5sgeslPfiiPiS_i       # -- Begin function _Z5sgeslPfiiPiS_i
	.p2align	4, 0x90
	.type	_Z5sgeslPfiiPiS_i,@function
_Z5sgeslPfiiPiS_i:                      # @_Z5sgeslPfiiPiS_i
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB7_12
# %bb.1:
	movl	$1, -40(%rbp)
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jg	.LBB7_7
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movl	-44(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	je	.LBB7_5
# %bb.4:                                #   in Loop: Header=BB7_2 Depth=1
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
.LBB7_5:                                #   in Loop: Header=BB7_2 Depth=1
	movl	-16(%rbp), %eax
	subl	-40(%rbp), %eax
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movslq	-40(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %esi
	subl	$1, %esi
	imull	-12(%rbp), %esi
	movslq	%esi, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	-32(%rbp), %rdx
	movslq	-40(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rdx
	movl	%eax, %edi
	movq	%rcx, %rsi
	movl	$1, %eax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, %r8d
	callq	_Z5saxpyifPfiS_i
# %bb.6:                                #   in Loop: Header=BB7_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_2
.LBB7_7:
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB7_11
# %bb.9:                                #   in Loop: Header=BB7_8 Depth=1
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movl	-40(%rbp), %esi
	subl	$1, %esi
	imull	-12(%rbp), %esi
	addl	%esi, %ecx
	movslq	%ecx, %rdx
	divss	(%rax,%rdx,4), %xmm0
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %ecx
	xorl	$2147483648, %ecx       # imm = 0x80000000
	movd	%ecx, %xmm0
	movss	%xmm0, -48(%rbp)
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %esi
	subl	$1, %esi
	imull	-12(%rbp), %esi
	movslq	%esi, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rax, %rsi
	movl	$1, %ecx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	_Z5saxpyifPfiS_i
# %bb.10:                               #   in Loop: Header=BB7_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_8
.LBB7_11:
	jmp	.LBB7_23
.LBB7_12:
	movl	$1, -40(%rbp)
.LBB7_13:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB7_16
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=1
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rcx
	movl	-40(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	addq	%rsi, %rcx
	movq	-32(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, %r8d
	callq	_Z4sdotiPfiS_i
	movss	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rcx
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movss	(%rcx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	subss	-48(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	-40(%rbp), %edx
	subl	$1, %edx
	imull	-12(%rbp), %edx
	addl	%edx, %eax
	movslq	%eax, %rsi
	divss	(%rcx,%rsi,4), %xmm0
	movq	-32(%rbp), %rcx
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movss	%xmm0, (%rcx,%rsi,4)
# %bb.15:                               #   in Loop: Header=BB7_13 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_13
.LBB7_16:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB7_17:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB7_22
# %bb.18:                               #   in Loop: Header=BB7_17 Depth=1
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-16(%rbp), %ecx
	subl	-40(%rbp), %ecx
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %esi
	subl	$1, %esi
	imull	-12(%rbp), %esi
	movslq	%esi, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movslq	-40(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rdx
	movl	%ecx, %edi
	movq	%rax, %rsi
	movl	$1, %ecx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movss	%xmm0, -96(%rbp)        # 4-byte Spill
	callq	_Z4sdotiPfiS_i
	movss	-96(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movss	%xmm1, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %edx
	cmpl	-40(%rbp), %edx
	je	.LBB7_20
# %bb.19:                               #   in Loop: Header=BB7_17 Depth=1
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
.LBB7_20:                               #   in Loop: Header=BB7_17 Depth=1
	jmp	.LBB7_21
.LBB7_21:                               #   in Loop: Header=BB7_17 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_17
.LBB7_22:
	jmp	.LBB7_23
.LBB7_23:
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_Z5sgeslPfiiPiS_i, .Lfunc_end7-_Z5sgeslPfiiPiS_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z6r4_absf              # -- Begin function _Z6r4_absf
	.p2align	4, 0x90
	.type	_Z6r4_absf,@function
_Z6r4_absf:                             # @_Z6r4_absf
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_2
# %bb.1:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB8_3
.LBB8_2:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB8_3:
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	_Z6r4_absf, .Lfunc_end8-_Z6r4_absf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z10r4_epsilonv
.LCPI9_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	_Z10r4_epsilonv
	.p2align	4, 0x90
	.type	_Z10r4_epsilonv,@function
_Z10r4_epsilonv:                        # @_Z10r4_epsilonv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movaps	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_3
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movsd	.LCPI9_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB9_1
.LBB9_3:
	movsd	.LCPI9_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.LBB11_2
# %bb.1:
	jmp	.LBB11_27
.LBB11_2:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB11_4
	jp	.LBB11_4
# %bb.3:
	jmp	.LBB11_27
.LBB11_4:
	cmpl	$1, -20(%rbp)
	jne	.LBB11_6
# %bb.5:
	cmpl	$1, -36(%rbp)
	je	.LBB11_17
.LBB11_6:
	xorl	%eax, %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB11_8
# %bb.7:
	movl	$0, -44(%rbp)
	jmp	.LBB11_9
.LBB11_8:
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	addl	$1, %eax
	imull	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB11_9:
	xorl	%eax, %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB11_11
# %bb.10:
	movl	$0, -48(%rbp)
	jmp	.LBB11_12
.LBB11_11:
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	addl	$1, %eax
	imull	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB11_12:
	movl	$0, -40(%rbp)
.LBB11_13:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB11_16
# %bb.14:                               #   in Loop: Header=BB11_13 Depth=1
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	-44(%rbp), %edx
	addl	-20(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-48(%rbp), %edx
	addl	-36(%rbp), %edx
	movl	%edx, -48(%rbp)
# %bb.15:                               #   in Loop: Header=BB11_13 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_13
.LBB11_16:
	jmp	.LBB11_26
.LBB11_17:
	movl	-4(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%edx, -52(%rbp)
	movl	$0, -40(%rbp)
.LBB11_18:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB11_21
# %bb.19:                               #   in Loop: Header=BB11_18 Depth=1
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.20:                               #   in Loop: Header=BB11_18 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_18
.LBB11_21:
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB11_22:                              # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB11_25
# %bb.23:                               #   in Loop: Header=BB11_22 Depth=1
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.24:                               #   in Loop: Header=BB11_22 Depth=1
	movl	-40(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_22
.LBB11_25:
	jmp	.LBB11_26
.LBB11_26:
	jmp	.LBB11_27
.LBB11_27:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.LBB12_2
# %bb.1:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB12_25
.LBB12_2:
	cmpl	$1, -20(%rbp)
	jne	.LBB12_4
# %bb.3:
	cmpl	$1, -36(%rbp)
	je	.LBB12_15
.LBB12_4:
	xorl	%eax, %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB12_6
# %bb.5:
	movl	$0, -48(%rbp)
	jmp	.LBB12_7
.LBB12_6:
	xorl	%eax, %eax
	subl	-8(%rbp), %eax
	addl	$1, %eax
	imull	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB12_7:
	xorl	%eax, %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB12_9
# %bb.8:
	movl	$0, -52(%rbp)
	jmp	.LBB12_10
.LBB12_9:
	xorl	%eax, %eax
	subl	-8(%rbp), %eax
	addl	$1, %eax
	imull	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB12_10:
	movl	$0, -44(%rbp)
.LBB12_11:                              # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB12_14
# %bb.12:                               #   in Loop: Header=BB12_11 Depth=1
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-48(%rbp), %edx
	addl	-20(%rbp), %edx
	movl	%edx, -48(%rbp)
	movl	-52(%rbp), %edx
	addl	-36(%rbp), %edx
	movl	%edx, -52(%rbp)
# %bb.13:                               #   in Loop: Header=BB12_11 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_11
.LBB12_14:
	jmp	.LBB12_24
.LBB12_15:
	movl	-8(%rbp), %eax
	cltd
	movl	$5, %ecx
	idivl	%ecx
	movl	%edx, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB12_16:                              # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB12_19
# %bb.17:                               #   in Loop: Header=BB12_16 Depth=1
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
# %bb.18:                               #   in Loop: Header=BB12_16 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_16
.LBB12_19:
	movl	-56(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB12_20:                              # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB12_23
# %bb.21:                               #   in Loop: Header=BB12_20 Depth=1
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
# %bb.22:                               #   in Loop: Header=BB12_20 Depth=1
	movl	-44(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_20
.LBB12_23:
	jmp	.LBB12_24
.LBB12_24:
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB12_25:
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$1, -8(%rbp)
	jl	.LBB13_2
# %bb.1:
	cmpl	$0, -20(%rbp)
	jg	.LBB13_3
.LBB13_2:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_21
.LBB13_3:
	movl	$1, -36(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.LBB13_5
# %bb.4:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_21
.LBB13_5:
	cmpl	$1, -20(%rbp)
	jne	.LBB13_13
# %bb.6:
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	_Z6r4_absf
	movss	%xmm0, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB13_7:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB13_12
# %bb.8:                                #   in Loop: Header=BB13_7 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -40(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	_Z6r4_absf
	movss	-40(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB13_10
# %bb.9:                                #   in Loop: Header=BB13_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	callq	_Z6r4_absf
	movss	%xmm0, -24(%rbp)
.LBB13_10:                              #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_11
.LBB13_11:                              #   in Loop: Header=BB13_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_7
.LBB13_12:
	jmp	.LBB13_20
.LBB13_13:
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	_Z6r4_absf
	movss	%xmm0, -24(%rbp)
	movl	-32(%rbp), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	$1, -28(%rbp)
.LBB13_14:                              # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB13_19
# %bb.15:                               #   in Loop: Header=BB13_14 Depth=1
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	_Z6r4_absf
	movss	-44(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB13_17
# %bb.16:                               #   in Loop: Header=BB13_14 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	callq	_Z6r4_absf
	movss	%xmm0, -24(%rbp)
.LBB13_17:                              #   in Loop: Header=BB13_14 Depth=1
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
# %bb.18:                               #   in Loop: Header=BB13_14 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_14
.LBB13_19:
	jmp	.LBB13_20
.LBB13_20:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_21:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.LBB14_2
# %bb.1:
	jmp	.LBB14_21
.LBB14_2:
	cmpl	$1, -20(%rbp)
	jne	.LBB14_12
# %bb.3:
	movl	-4(%rbp), %eax
	cltd
	movl	$5, %ecx
	idivl	%ecx
	movl	%edx, -32(%rbp)
	movl	$0, -24(%rbp)
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB14_7
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB14_4
.LBB14_7:
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB14_8:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB14_11
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.10:                               #   in Loop: Header=BB14_8 Depth=1
	movl	-24(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB14_8
.LBB14_11:
	jmp	.LBB14_20
.LBB14_12:
	xorl	%eax, %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB14_14
# %bb.13:
	movl	$0, -28(%rbp)
	jmp	.LBB14_15
.LBB14_14:
	xorl	%eax, %eax
	subl	-4(%rbp), %eax
	addl	$1, %eax
	imull	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB14_15:
	movl	$0, -24(%rbp)
.LBB14_16:                              # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB14_19
# %bb.17:                               #   in Loop: Header=BB14_16 Depth=1
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	-28(%rbp), %edx
	addl	-20(%rbp), %edx
	movl	%edx, -28(%rbp)
# %bb.18:                               #   in Loop: Header=BB14_16 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB14_16
.LBB14_19:
	jmp	.LBB14_20
.LBB14_20:
	jmp	.LBB14_21
.LBB14_21:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	_Z5sscalifPfi, .Lfunc_end14-_Z5sscalifPfi
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _Z9r4_randomPi
.LCPI15_0:
	.long	964689920               # float 2.44140625E-4
.LCPI15_1:
	.long	1065353216              # float 1
	.text
	.globl	_Z9r4_randomPi
	.p2align	4, 0x90
	.type	_Z9r4_randomPi,@function
_Z9r4_randomPi:                         # @_Z9r4_randomPi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI15_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movl	$4096, -12(%rbp)        # imm = 0x1000
	movl	$494, -32(%rbp)         # imm = 0x1EE
	movl	$322, -36(%rbp)         # imm = 0x142
	movl	$2508, -40(%rbp)        # imm = 0x9CC
	movl	$2549, -44(%rbp)        # imm = 0x9F5
	movss	%xmm1, -48(%rbp)
	movss	%xmm0, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	imull	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-24(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	imull	-44(%rbp), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	imull	-40(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-20(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %ecx
	imull	-44(%rbp), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	imull	-40(%rbp), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	imull	-36(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	(%rdi), %ecx
	imull	-44(%rbp), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %ecx
	imull	-40(%rbp), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %ecx
	imull	-36(%rbp), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	imull	-32(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, (%rdi)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 4(%rdi)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 8(%rdi)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 12(%rdi)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-16(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	-52(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-20(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm3
	movss	-52(%rbp), %xmm4        # xmm4 = mem[0],zero,zero,zero
	movl	-24(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm5
	movss	-52(%rbp), %xmm6        # xmm6 = mem[0],zero,zero,zero
	movl	-28(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm7
	mulss	%xmm7, %xmm6
	addss	%xmm6, %xmm5
	mulss	%xmm5, %xmm4
	addss	%xmm4, %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	_Z9r4_randomPi, .Lfunc_end15-_Z9r4_randomPi
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_linpackm.cpp
	.type	_GLOBAL__sub_I_linpackm.cpp,@function
_GLOBAL__sub_I_linpackm.cpp:            # @_GLOBAL__sub_I_linpackm.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	_GLOBAL__sub_I_linpackm.cpp, .Lfunc_end16-_GLOBAL__sub_I_linpackm.cpp
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
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym main
	.addrsig_sym _Z9timestampv
	.addrsig_sym _Z9r4mat_genii
	.addrsig_sym _Znam
	.addrsig_sym _Z6r4_maxff
	.addrsig_sym _Z8cpu_timev
	.addrsig_sym _Z5sgefaPfiiPi
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _Z5sgeslPfiiPiS_i
	.addrsig_sym _ZdaPv
	.addrsig_sym _Z6r4_absf
	.addrsig_sym _Z10r4_epsilonv
	.addrsig_sym _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw
	.addrsig_sym _ZSt4setwi
	.addrsig_sym _ZNSolsEd
	.addrsig_sym clock
	.addrsig_sym _Z5saxpyifPfiS_i
	.addrsig_sym _Z4sdotiPfiS_i
	.addrsig_sym _Z6isamaxiPfi
	.addrsig_sym _Z5sscalifPfi
	.addrsig_sym _Z9r4_randomPi
	.addrsig_sym time
	.addrsig_sym localtime
	.addrsig_sym strftime
	.addrsig_sym _GLOBAL__sub_I_linpackm.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZZ9timestampvE11time_buffer
