	.text
	.file	"benchmark.cpp"
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z8mainbasev
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4654311885213007872     # double 1500
.LCPI1_2:
	.quad	4652007308841189376     # double 1000
.LCPI1_3:
	.quad	4647503709213818880     # double 500
.LCPI1_4:
	.quad	4643000109586448384     # double 250
.LCPI1_5:
	.quad	4636737291354636288     # double 100
.LCPI1_6:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI1_13:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI1_14:
	.quad	4641240890982006784     # double 200
.LCPI1_15:
	.quad	4609073930643513016     # double 1.4199999999999999
.LCPI1_16:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_7:
	.long	994352038               # float 0.00300000003
.LCPI1_8:
	.long	1024416809              # float 0.0350000001
.LCPI1_9:
	.long	1049347752              # float 0.273000002
.LCPI1_10:
	.long	1074685542              # float 2.2249999
.LCPI1_11:
	.long	1089545961              # float 7.53599977
.LCPI1_12:
	.long	1084227584              # float 5
	.text
	.globl	_Z8mainbasev
	.p2align	4, 0x90
	.type	_Z8mainbasev,@function
_Z8mainbasev:                           # @_Z8mainbasev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$1, -52(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_19 Depth 3
                                        #         Child Loop BB1_21 Depth 4
                                        #           Child Loop BB1_23 Depth 5
	cmpl	$5, -52(%rbp)
	jg	.LBB1_46
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$1, -56(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_19 Depth 3
                                        #         Child Loop BB1_21 Depth 4
                                        #           Child Loop BB1_23 Depth 5
	cmpl	$5, -56(%rbp)
	jg	.LBB1_44
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	callq	clock
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movsd	%xmm0, a
	movsd	%xmm0, b
	movsd	%xmm0, c
	movsd	%xmm0, d
	movq	$0, -8(%rbp)
	cmpl	$1, -56(%rbp)
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_5(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, k
	jmp	.LBB1_18
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=2
	cmpl	$2, -56(%rbp)
	jne	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, k
	jmp	.LBB1_17
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=2
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, k
	jmp	.LBB1_16
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$4, -56(%rbp)
	jne	.LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, k
	jmp	.LBB1_15
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$5, -56(%rbp)
	jne	.LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, k
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_15
.LBB1_15:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_16
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_17
.LBB1_17:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_18
.LBB1_18:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_19
.LBB1_19:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_21 Depth 4
                                        #           Child Loop BB1_23 Depth 5
	movsd	b, %xmm0                # xmm0 = mem[0],zero
	movsd	k, %xmm1                # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_32
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=3
	jmp	.LBB1_21
.LBB1_21:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_23 Depth 5
	movsd	a, %xmm0                # xmm0 = mem[0],zero
	movsd	k, %xmm1                # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_31
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=4
	movsd	a, %xmm0                # xmm0 = mem[0],zero
	mulsd	a, %xmm0
	movsd	%xmm0, x
	movsd	b, %xmm0                # xmm0 = mem[0],zero
	mulsd	b, %xmm0
	movsd	%xmm0, y
	movsd	x, %xmm0                # xmm0 = mem[0],zero
	addsd	y, %xmm0
	movsd	%xmm0, c
	movsd	b, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, powcheck
.LBB1_23:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_19 Depth=3
                                        #         Parent Loop BB1_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movsd	.LCPI1_15(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	powcheck, %xmm1         # xmm1 = mem[0],zero
	mulsd	k, %xmm0
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	callq	ceil
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB1_30
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=5
	movsd	c, %xmm0                # xmm0 = mem[0],zero
	movsd	powcheck, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	$2, %edi
	callq	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_28
	jp	.LBB1_28
# %bb.25:                               #   in Loop: Header=BB1_23 Depth=5
	movsd	c, %xmm0                # xmm0 = mem[0],zero
	ucomisd	d, %xmm0
	jb	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_23 Depth=5
	movsd	c, %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, d
.LBB1_27:                               #   in Loop: Header=BB1_23 Depth=5
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_16(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	mulsd	k, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, powcheck
	jmp	.LBB1_29
.LBB1_28:                               #   in Loop: Header=BB1_23 Depth=5
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	powcheck, %xmm0
	movsd	%xmm0, powcheck
.LBB1_29:                               #   in Loop: Header=BB1_23 Depth=5
	jmp	.LBB1_23
.LBB1_30:                               #   in Loop: Header=BB1_21 Depth=4
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	a, %xmm0
	movsd	%xmm0, a
	jmp	.LBB1_21
.LBB1_31:                               #   in Loop: Header=BB1_19 Depth=3
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, a
	addsd	b, %xmm0
	movsd	%xmm0, b
	jmp	.LBB1_19
.LBB1_32:                               #   in Loop: Header=BB1_3 Depth=2
	callq	clock
	movsd	.LCPI1_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	subq	-64(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movsd	%xmm0, -48(%rbp,%rax,8)
	cmpl	$1, -56(%rbp)
	jne	.LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=2
	movss	.LCPI1_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
.LBB1_34:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$2, -56(%rbp)
	jne	.LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_3 Depth=2
	movss	.LCPI1_8(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
.LBB1_36:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$3, -56(%rbp)
	jne	.LBB1_38
# %bb.37:                               #   in Loop: Header=BB1_3 Depth=2
	movss	.LCPI1_9(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
.LBB1_38:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$4, -56(%rbp)
	jne	.LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_3 Depth=2
	movss	.LCPI1_10(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
.LBB1_40:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$5, -56(%rbp)
	jne	.LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_3 Depth=2
	movss	.LCPI1_11(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
.LBB1_42:                               #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_13(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI1_14(%rip), %xmm1  # xmm1 = mem[0],zero
	movss	-84(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	divsd	-48(%rbp,%rcx,8), %xmm2
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movss	%xmm1, score(,%rcx,4)
	movss	totalscore, %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movss	score(,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, totalscore
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movsd	stagetime(,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movsd	%xmm1, stagetime(,%rcx,8)
	movl	-56(%rbp), %eax
	shll	$2, %eax
	movl	-52(%rbp), %edx
	subl	$1, %edx
	imull	$20, %edx, %edx
	addl	%edx, %eax
	movabsq	$_ZSt4cout, %rdi
	movl	%eax, %esi
	callq	_ZNSolsEi
	movq	%rax, %rdi
	movabsq	$.L.str, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.1, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-56(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movsd	-48(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	_ZNSolsEd
	movq	%rax, %rdi
	movl	$10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.2, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	.LCPI1_12(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	-56(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	mulss	score(,%rcx,4), %xmm0
	movq	%rax, %rdi
	callq	_ZNSolsEf
	movq	%rax, %rdi
	movl	$10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movq	%rax, -128(%rbp)        # 8-byte Spill
# %bb.43:                               #   in Loop: Header=BB1_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB1_3
.LBB1_44:                               #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_45
.LBB1_45:                               #   in Loop: Header=BB1_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_1
.LBB1_46:
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z8mainbasev, .Lfunc_end1-_Z8mainbasev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ # -- Begin function _ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.p2align	4, 0x90
	.type	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,@function
_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_: # @_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %edi
	cvtsi2sdl	%edi, %xmm1
	callq	pow
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_, .Lfunc_end2-_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$3, -8(%rbp)
	je	.LBB3_2
# %bb.1:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	exit
.LBB3_2:
	callq	_Z8mainbasev
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
.Ltmp0:
	movl	$.L.str.4, %ecx
	movl	%ecx, %esi
	callq	fopen
.Ltmp1:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_3:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	movss	totalscore(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp2:
	movl	$.L.str.5, %esi
                                        # kill: def $rsi killed $esi
	movb	$1, %al
	callq	fprintf
.Ltmp3:
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_4
.LBB3_4:
	movq	-24(%rbp), %rdi
.Ltmp4:
	callq	fclose
.Ltmp5:
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB3_5
.LBB3_5:
	jmp	.LBB3_10
.LBB3_6:
.Ltmp6:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
# %bb.7:
	movl	-36(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB3_13
# %bb.8:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	__cxa_get_exception_ptr
	leaq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	_ZNSt9exceptionC2ERKS_
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__cxa_begin_catch
.Ltmp7:
	movl	$_ZSt4cerr, %ecx
	movl	%ecx, %edi
	movl	$.L.str.6, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp8:
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:
	leaq	-48(%rbp), %rdi
	callq	_ZNSt9exceptionD1Ev
	callq	__cxa_end_catch
.LBB3_10:
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.7, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	totalscore, %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	_ZNSolsEf
	movq	%rax, %rdi
	movabsq	$.L.str.8, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$10, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movl	-4(%rbp), %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_11:
	.cfi_def_cfa %rbp, 16
.Ltmp9:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-48(%rbp), %rdi
	callq	_ZNSt9exceptionD1Ev
.Ltmp10:
	callq	__cxa_end_catch
.Ltmp11:
	jmp	.LBB3_12
.LBB3_12:
	jmp	.LBB3_13
.LBB3_13:
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.LBB3_14:
.Ltmp12:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp5-.Ltmp0          #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0   #     jumps to .Ltmp6
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp5-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp5          #   Call between .Ltmp5 and .Ltmp7
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0   # >> Call Site 4 <<
	.uleb128 .Ltmp8-.Ltmp7          #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0   #     jumps to .Ltmp9
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0   # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp8         #   Call between .Ltmp8 and .Ltmp10
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0  # >> Call Site 6 <<
	.uleb128 .Ltmp11-.Ltmp10        #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0  #     jumps to .Ltmp12
	.byte	3                       #   On action: 2
	.uleb128 .Ltmp11-.Lfunc_begin0  # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp11    #   Call between .Ltmp11 and .Lfunc_end3
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.byte	2                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 2
	.long	_ZTISt9exception        # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt9exceptionC2ERKS_,"axG",@progbits,_ZNSt9exceptionC2ERKS_,comdat
	.weak	_ZNSt9exceptionC2ERKS_  # -- Begin function _ZNSt9exceptionC2ERKS_
	.p2align	4, 0x90
	.type	_ZNSt9exceptionC2ERKS_,@function
_ZNSt9exceptionC2ERKS_:                 # @_ZNSt9exceptionC2ERKS_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$_ZTVSt9exception, %rax
	addq	$16, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_ZNSt9exceptionC2ERKS_, .Lfunc_end4-_ZNSt9exceptionC2ERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	_ZSt9terminatev
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_benchmark.cpp
	.type	_GLOBAL__sub_I_benchmark.cpp,@function
_GLOBAL__sub_I_benchmark.cpp:           # @_GLOBAL__sub_I_benchmark.cpp
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
.Lfunc_end6:
	.size	_GLOBAL__sub_I_benchmark.cpp, .Lfunc_end6-_GLOBAL__sub_I_benchmark.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	check,@object           # @check
	.data
	.globl	check
	.p2align	2
check:
	.long	2                       # 0x2
	.size	check, 4

	.type	a,@object               # @a
	.bss
	.globl	a
	.p2align	3
a:
	.quad	0                       # double 0
	.size	a, 8

	.type	b,@object               # @b
	.globl	b
	.p2align	3
b:
	.quad	0                       # double 0
	.size	b, 8

	.type	powcheck,@object        # @powcheck
	.globl	powcheck
	.p2align	3
powcheck:
	.quad	0                       # double 0
	.size	powcheck, 8

	.type	k,@object               # @k
	.globl	k
	.p2align	3
k:
	.quad	0                       # double 0
	.size	k, 8

	.type	d,@object               # @d
	.globl	d
	.p2align	3
d:
	.quad	0                       # double 0
	.size	d, 8

	.type	x,@object               # @x
	.globl	x
	.p2align	3
x:
	.quad	0                       # double 0
	.size	x, 8

	.type	y,@object               # @y
	.globl	y
	.p2align	3
y:
	.quad	0                       # double 0
	.size	y, 8

	.type	verify,@object          # @verify
	.globl	verify
	.p2align	2
verify:
	.long	0                       # 0x0
	.size	verify, 4

	.type	percentage,@object      # @percentage
	.globl	percentage
	.p2align	2
percentage:
	.long	0                       # 0x0
	.size	percentage, 4

	.type	c,@object               # @c
	.globl	c
	.p2align	3
c:
	.quad	0                       # double 0
	.size	c, 8

	.type	score,@object           # @score
	.globl	score
	.p2align	4
score:
	.zero	20
	.size	score, 20

	.type	totalscore,@object      # @totalscore
	.globl	totalscore
	.p2align	2
totalscore:
	.long	0                       # float 0
	.size	totalscore, 4

	.type	stagetime,@object       # @stagetime
	.globl	stagetime
	.p2align	4
stagetime:
	.zero	40
	.size	stagetime, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" % complete!"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Time taken for that stage:- "
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Score obtained for that stage:- "
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Arguments: filename optimisationflag\n"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"a"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s %lf\n"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"File error! \n"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Your system has scored a total of "
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" points!"
	.size	.L.str.8, 9

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_benchmark.cpp

	.ident	"clang version 7.0.1 (Fedora 7.0.1-6.fc29)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _Z8mainbasev
	.addrsig_sym clock
	.addrsig_sym _ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSolsEd
	.addrsig_sym _ZNSolsEf
	.addrsig_sym main
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym fopen
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym fprintf
	.addrsig_sym fclose
	.addrsig_sym __cxa_get_exception_ptr
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym __cxa_end_catch
	.addrsig_sym __clang_call_terminate
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym pow
	.addrsig_sym _GLOBAL__sub_I_benchmark.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym check
	.addrsig_sym a
	.addrsig_sym b
	.addrsig_sym powcheck
	.addrsig_sym k
	.addrsig_sym d
	.addrsig_sym x
	.addrsig_sym y
	.addrsig_sym verify
	.addrsig_sym percentage
	.addrsig_sym c
	.addrsig_sym score
	.addrsig_sym totalscore
	.addrsig_sym stagetime
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZSt4cerr
