	.file	"linpackm.cpp"
# GNU C++14 (GCC) version 8.3.1 20190223 (Red Hat 8.3.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 8.3.1 20190223 (Red Hat 8.3.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE linpackm.cpp -mtune=generic -march=x86-64
# -auxbase-strip linO1.s -O1 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexceptions
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm
# -fgnu-runtime -fgnu-unique -fguess-branch-probability -fident
# -fif-conversion -fif-conversion2 -finline -finline-atomics
# -finline-functions-called-once -fipa-profile -fipa-pure-const
# -fipa-reference -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -freorder-blocks -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder
# -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
# -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
# -ftree-ter -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.globl	_Z8cpu_timev
	.type	_Z8cpu_timev, @function
_Z8cpu_timev:
.LFB2356:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# linpackm.cpp:268:   value = ( double ) clock ( ) 
	call	clock	#
# linpackm.cpp:268:   value = ( double ) clock ( ) 
	pxor	%xmm0, %xmm0	# tmp91
	cvtsi2sdq	%rax, %xmm0	# _1, tmp91
# linpackm.cpp:268:   value = ( double ) clock ( ) 
	divsd	.LC0(%rip), %xmm0	#, value
# linpackm.cpp:272: }
	addq	$8, %rsp	#,
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
# linpackm.cpp:333:   if ( da == 0.0 )
	testl	%edi, %edi	# n
	jle	.L3	#,
	pxor	%xmm1, %xmm1	# tmp172
	ucomiss	%xmm1, %xmm0	# tmp172, da
	setnp	%al	#, tmp171
	movl	$0, %r9d	#, tmp174
	cmovne	%r9d, %eax	# tmp171,, tmp174, tmp167
	testb	%al, %al	# tmp167
	jne	.L3	#,
# linpackm.cpp:341:   if ( incx != 1 || incy != 1 )
	cmpl	$1, %edx	#, incx
	jne	.L17	#,
	cmpl	$1, %r8d	#, incy
	jne	.L17	#,
# linpackm.cpp:373:     m = n % 4;
	movl	%edi, %eax	# n, tmp192
	sarl	$31, %eax	#, tmp192
	shrl	$30, %eax	#, tmp193
	leal	(%rdi,%rax), %r8d	#, tmp194
	andl	$3, %r8d	#, tmp195
	subl	%eax, %r8d	# tmp193, tmp196
	movl	%r8d, %edx	# tmp196, m
# linpackm.cpp:375:     for ( i = 0; i < m; i++ )
	movl	$0, %eax	#, ivtmp.72
	testl	%r8d, %r8d	# tmp196
	jle	.L12	#,
.L10:
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	movaps	%xmm0, %xmm1	# da, tmp197
	mulss	(%rsi,%rax,4), %xmm1	# MEM[base: dx_78(D), index: ivtmp.72_148, step: 4, offset: 0B], tmp197
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	addss	(%rcx,%rax,4), %xmm1	# MEM[base: dy_77(D), index: ivtmp.72_148, step: 4, offset: 0B], tmp198
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	movss	%xmm1, (%rcx,%rax,4)	# tmp198, MEM[base: dy_77(D), index: ivtmp.72_148, step: 4, offset: 0B]
	addq	$1, %rax	#, ivtmp.72
# linpackm.cpp:375:     for ( i = 0; i < m; i++ )
	cmpl	%eax, %edx	# ivtmp.72, m
	jg	.L10	#,
.L12:
# linpackm.cpp:380:     for ( i = m; i < n; i = i + 4 )
	cmpl	%r8d, %edi	# tmp196, n
	jle	.L21	#,
	movslq	%r8d, %r9	# tmp196, _114
	leaq	0(,%r9,4), %rdx	#, _115
	leaq	(%rcx,%rdx), %rax	#, ivtmp.65
	addq	%rdx, %rsi	# _115, ivtmp.66
	leal	-1(%rdi), %edx	#, tmp200
	subl	%r8d, %edx	# tmp196, tmp201
	shrl	$2, %edx	#, tmp202
	movl	%edx, %edx	# tmp202, tmp203
	leaq	(%r9,%rdx,4), %rdx	#, tmp205
	leaq	16(%rcx,%rdx,4), %rdx	#, _147
.L13:
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movaps	%xmm0, %xmm1	# da, tmp208
	mulss	(%rsi), %xmm1	# MEM[base: _131, offset: 0B], tmp208
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	addss	(%rax), %xmm1	# MEM[base: _123, offset: 0B], tmp209
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movss	%xmm1, (%rax)	# tmp209, MEM[base: _123, offset: 0B]
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movaps	%xmm0, %xmm1	# da, tmp211
	mulss	4(%rsi), %xmm1	# MEM[base: _131, offset: 4B], tmp211
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	addss	4(%rax), %xmm1	# MEM[base: _123, offset: 4B], tmp212
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movss	%xmm1, 4(%rax)	# tmp212, MEM[base: _123, offset: 4B]
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movaps	%xmm0, %xmm1	# da, tmp214
	mulss	8(%rsi), %xmm1	# MEM[base: _131, offset: 8B], tmp214
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	addss	8(%rax), %xmm1	# MEM[base: _123, offset: 8B], tmp215
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movss	%xmm1, 8(%rax)	# tmp215, MEM[base: _123, offset: 8B]
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movaps	%xmm0, %xmm1	# da, tmp217
	mulss	12(%rsi), %xmm1	# MEM[base: _131, offset: 12B], tmp217
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	addss	12(%rax), %xmm1	# MEM[base: _123, offset: 12B], tmp218
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movss	%xmm1, 12(%rax)	# tmp218, MEM[base: _123, offset: 12B]
	addq	$16, %rax	#, ivtmp.65
	addq	$16, %rsi	#, ivtmp.66
# linpackm.cpp:380:     for ( i = m; i < n; i = i + 4 )
	cmpq	%rdx, %rax	# _147, ivtmp.65
	jne	.L13	#,
.L3:
# linpackm.cpp:391: }
	ret	
.L17:
# linpackm.cpp:345:       ix = 0;
	movl	$0, %r10d	#, ix
# linpackm.cpp:343:     if ( 0 <= incx )
	testl	%edx, %edx	# incx
	js	.L22	#,
.L7:
# linpackm.cpp:354:       iy = 0;
	movl	$0, %eax	#, iy
# linpackm.cpp:352:     if ( 0 <= incy )
	testl	%r8d, %r8d	# incy
	js	.L23	#,
.L8:
	movslq	%r8d, %r8	# incy, incy
	leaq	0(,%r8,4), %r9	#, _99
	cltq
	leaq	(%rcx,%rax,4), %rax	#, ivtmp.57
	movslq	%edx, %rdx	# incx, incx
	leaq	0(,%rdx,4), %r8	#, _66
	movslq	%r10d, %r10	# ix, ix
	leaq	(%rsi,%r10,4), %rcx	#, ivtmp.58
# linpackm.cpp:354:       iy = 0;
	movl	$0, %edx	#, i
.L9:
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	movaps	%xmm0, %xmm1	# da, tmp189
	mulss	(%rcx), %xmm1	# MEM[base: _94, offset: 0B], tmp189
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	addss	(%rax), %xmm1	# MEM[base: _96, offset: 0B], tmp190
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	movss	%xmm1, (%rax)	# tmp190, MEM[base: _96, offset: 0B]
# linpackm.cpp:361:     for ( i = 0; i < n; i++ )
	addl	$1, %edx	#, i
	addq	%r9, %rax	# _99, ivtmp.57
	addq	%r8, %rcx	# _66, ivtmp.58
# linpackm.cpp:361:     for ( i = 0; i < n; i++ )
	cmpl	%edx, %edi	# i, n
	jg	.L9	#,
	ret	
.L22:
# linpackm.cpp:349:       ix = ( - n + 1 ) * incx;
	movl	$1, %r10d	#, tmp180
	subl	%edi, %r10d	# n, tmp179
# linpackm.cpp:349:       ix = ( - n + 1 ) * incx;
	imull	%edx, %r10d	# incx, ix
	jmp	.L7	#
.L23:
# linpackm.cpp:358:       iy = ( - n + 1 ) * incy;
	movl	$1, %eax	#, tmp182
	subl	%edi, %eax	# n, tmp181
# linpackm.cpp:358:       iy = ( - n + 1 ) * incy;
	imull	%r8d, %eax	# incy, iy
	jmp	.L8	#
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
# linpackm.cpp:452:     return dtemp;
	pxor	%xmm0, %xmm0	# <retval>
# linpackm.cpp:450:   if ( n <= 0 )
	testl	%edi, %edi	# n
	jle	.L24	#,
# linpackm.cpp:458:   if ( incx != 1 || incy != 1 )
	cmpl	$1, %edx	#, incx
	jne	.L39	#,
	cmpl	$1, %r8d	#, incy
	jne	.L39	#,
# linpackm.cpp:490:     m = n % 5;
	movl	$1717986919, %edx	#, tmp162
	movl	%edi, %eax	# n, tmp204
	imull	%edx	# tmp162
	movl	%edx, %eax	# tmp161, tmp161
	sarl	%eax	# tmp161
	movl	%edi, %edx	# n, tmp164
	sarl	$31, %edx	#, tmp164
	subl	%edx, %eax	# tmp164, m
	leal	(%rax,%rax,4), %eax	#, tmp167
	movl	%edi, %edx	# n, m
	subl	%eax, %edx	# tmp167, m
	movl	%edx, %eax	# m, m
# linpackm.cpp:492:     for ( i = 0; i < m; i++ )
	movl	$0, %edx	#, ivtmp.101
# linpackm.cpp:448:   dtemp = 0.0;
	pxor	%xmm0, %xmm0	# <retval>
# linpackm.cpp:492:     for ( i = 0; i < m; i++ )
	testl	%eax, %eax	# m
	jle	.L33	#,
.L31:
# linpackm.cpp:494:       dtemp = dtemp + dx[i] * dy[i];
	movss	(%rsi,%rdx,4), %xmm1	# MEM[base: dx_80(D), index: ivtmp.101_115, step: 4, offset: 0B], MEM[base: dx_80(D), index: ivtmp.101_115, step: 4, offset: 0B]
	mulss	(%rcx,%rdx,4), %xmm1	# MEM[base: dy_82(D), index: ivtmp.101_115, step: 4, offset: 0B], tmp168
# linpackm.cpp:494:       dtemp = dtemp + dx[i] * dy[i];
	addss	%xmm1, %xmm0	# tmp168, <retval>
	addq	$1, %rdx	#, ivtmp.101
# linpackm.cpp:492:     for ( i = 0; i < m; i++ )
	cmpl	%edx, %eax	# ivtmp.101, m
	jg	.L31	#,
.L33:
# linpackm.cpp:497:     for ( i = m; i < n; i = i + 5 )
	cmpl	%eax, %edi	# m, n
	jle	.L43	#,
	cltq
.L34:
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movss	(%rsi,%rax,4), %xmm1	# MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 0B], MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 0B]
	mulss	(%rcx,%rax,4), %xmm1	# MEM[base: dy_82(D), index: ivtmp.93_111, step: 4, offset: 0B], tmp170
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addss	%xmm1, %xmm0	# tmp170, tmp172
# linpackm.cpp:500:                     + dx[i+1] * dy[i+1] 
	movss	4(%rsi,%rax,4), %xmm1	# MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 4B], MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 4B]
	mulss	4(%rcx,%rax,4), %xmm1	# MEM[base: dy_82(D), index: ivtmp.93_111, step: 4, offset: 4B], tmp173
# linpackm.cpp:500:                     + dx[i+1] * dy[i+1] 
	addss	%xmm1, %xmm0	# tmp173, tmp175
# linpackm.cpp:501:                     + dx[i+2] * dy[i+2] 
	movss	8(%rsi,%rax,4), %xmm1	# MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 8B], MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 8B]
	mulss	8(%rcx,%rax,4), %xmm1	# MEM[base: dy_82(D), index: ivtmp.93_111, step: 4, offset: 8B], tmp176
# linpackm.cpp:501:                     + dx[i+2] * dy[i+2] 
	addss	%xmm1, %xmm0	# tmp176, tmp178
# linpackm.cpp:502:                     + dx[i+3] * dy[i+3] 
	movss	12(%rsi,%rax,4), %xmm1	# MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 12B], MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 12B]
	mulss	12(%rcx,%rax,4), %xmm1	# MEM[base: dy_82(D), index: ivtmp.93_111, step: 4, offset: 12B], tmp179
# linpackm.cpp:502:                     + dx[i+3] * dy[i+3] 
	addss	%xmm1, %xmm0	# tmp179, _55
# linpackm.cpp:503:                     + dx[i+4] * dy[i+4];
	movss	16(%rsi,%rax,4), %xmm1	# MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 16B], MEM[base: dx_80(D), index: ivtmp.93_111, step: 4, offset: 16B]
	mulss	16(%rcx,%rax,4), %xmm1	# MEM[base: dy_82(D), index: ivtmp.93_111, step: 4, offset: 16B], tmp181
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addss	%xmm1, %xmm0	# tmp181, <retval>
	addq	$5, %rax	#, ivtmp.93
# linpackm.cpp:497:     for ( i = m; i < n; i = i + 5 )
	cmpl	%eax, %edi	# ivtmp.93, n
	jg	.L34	#,
.L24:
# linpackm.cpp:509: }
	ret	
.L39:
# linpackm.cpp:462:       ix = 0;
	movl	$0, %r10d	#, ix
# linpackm.cpp:460:     if ( 0 <= incx )
	testl	%edx, %edx	# incx
	js	.L44	#,
.L28:
# linpackm.cpp:471:       iy = 0;
	movl	$0, %eax	#, iy
# linpackm.cpp:469:     if ( 0 <= incy )
	testl	%r8d, %r8d	# incy
	js	.L45	#,
.L29:
	movslq	%edx, %rdx	# incx, incx
	leaq	0(,%rdx,4), %r9	#, _65
	movslq	%r10d, %r10	# ix, ix
	leaq	(%rsi,%r10,4), %rsi	#, ivtmp.87
	movslq	%r8d, %r8	# incy, incy
	salq	$2, %r8	#, _63
	cltq
	leaq	(%rcx,%rax,4), %rdx	#, ivtmp.88
# linpackm.cpp:471:       iy = 0;
	movl	$0, %eax	#, i
	pxor	%xmm0, %xmm0	# <retval>
.L30:
# linpackm.cpp:480:       dtemp = dtemp + dx[ix] * dy[iy];
	movss	(%rsi), %xmm1	# MEM[base: _109, offset: 0B], MEM[base: _109, offset: 0B]
	mulss	(%rdx), %xmm1	# MEM[base: _110, offset: 0B], tmp159
# linpackm.cpp:480:       dtemp = dtemp + dx[ix] * dy[iy];
	addss	%xmm1, %xmm0	# tmp159, <retval>
# linpackm.cpp:478:     for ( i = 0; i < n; i++ )
	addl	$1, %eax	#, i
	addq	%r9, %rsi	# _65, ivtmp.87
	addq	%r8, %rdx	# _63, ivtmp.88
# linpackm.cpp:478:     for ( i = 0; i < n; i++ )
	cmpl	%eax, %edi	# i, n
	jne	.L30	#,
	ret	
.L44:
# linpackm.cpp:466:       ix = ( - n + 1 ) * incx;
	movl	$1, %r10d	#, tmp150
	subl	%edi, %r10d	# n, tmp149
# linpackm.cpp:466:       ix = ( - n + 1 ) * incx;
	imull	%edx, %r10d	# incx, ix
	jmp	.L28	#
.L45:
# linpackm.cpp:475:       iy = ( - n + 1 ) * incy;
	movl	$1, %eax	#, tmp152
	subl	%edi, %eax	# n, tmp151
# linpackm.cpp:475:       iy = ( - n + 1 ) * incy;
	imull	%r8d, %eax	# incy, iy
	jmp	.L29	#
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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 88
	movq	%rdi, 8(%rsp)	# a, %sfp
	movl	%esi, 16(%rsp)	# lda, %sfp
	movl	%edx, %r14d	# n, n
	movq	%rcx, %r15	# ipvt, ipvt
	movq	%r8, %rbx	# b, b
# linpackm.cpp:688:   if ( job == 0 )
	testl	%r9d, %r9d	# job
	jne	.L47	#,
# linpackm.cpp:690:     for ( k = 1; k <= n-1; k++ )
	cmpl	$1, %edx	#, n
	jle	.L61	#,
	movslq	16(%rsp), %rax	# %sfp, lda
	leaq	4(,%rax,4), %r13	#, _149
	movq	8(%rsp), %rax	# %sfp, a
	leaq	4(%rax), %r12	#, ivtmp.127
	movl	%edx, (%rsp)	# n, %sfp
	leal	-2(%rdx), %eax	#, tmp201
	addq	$2, %rax	#, _165
	movl	$1, %ebp	#, ivtmp.122
	movl	%edx, 20(%rsp)	# n, %sfp
	movq	%rax, %r14	# _165, _165
	jmp	.L52	#
.L61:
# linpackm.cpp:705:     for ( k = n; 1 <= k; k-- )
	testl	%edx, %edx	# n
	jle	.L46	#,
	jmp	.L50	#
.L63:
# linpackm.cpp:697:         b[l-1] = b[k-1];
	movss	-4(%rbx,%rbp,4), %xmm1	# MEM[base: b_89(D), index: ivtmp.122_143, step: 4, offset: -4B], _10
# linpackm.cpp:697:         b[l-1] = b[k-1];
	movss	%xmm1, (%rdx)	# _10, *_8
# linpackm.cpp:698:         b[k-1] = t;
	movss	%xmm0, -4(%rbx,%rbp,4)	# t, MEM[base: b_89(D), index: ivtmp.122_143, step: 4, offset: -4B]
.L51:
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	leaq	(%rbx,%rbp,4), %rcx	#, tmp206
	movl	(%rsp), %edi	# %sfp, tmp207
	subl	%ebp, %edi	# ivtmp.122, tmp207
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	movq	%r12, %rsi	# ivtmp.127,
	call	_Z5saxpyifPfiS_i	#
	addq	$1, %rbp	#, ivtmp.122
	addq	%r13, %r12	# _149, ivtmp.127
# linpackm.cpp:690:     for ( k = 1; k <= n-1; k++ )
	cmpq	%r14, %rbp	# _165, ivtmp.122
	je	.L62	#,
.L52:
# linpackm.cpp:692:       l = ipvt[k-1];
	movl	-4(%r15,%rbp,4), %eax	# MEM[base: ipvt_87(D), index: ivtmp.122_143, step: 4, offset: -4B], l
# linpackm.cpp:693:       t = b[l-1];
	movslq	%eax, %rdx	# l, l
	leaq	-4(%rbx,%rdx,4), %rdx	#, _8
# linpackm.cpp:693:       t = b[l-1];
	movss	(%rdx), %xmm0	# *_8, t
# linpackm.cpp:695:       if ( l != k )
	cmpl	%ebp, %eax	# ivtmp.122, l
	jne	.L63	#,
	jmp	.L51	#
.L62:
	movl	20(%rsp), %r14d	# %sfp, n
.L50:
	leal	-1(%r14), %eax	#, _112
	movslq	%eax, %rbp	# _112, ivtmp.109
	movl	16(%rsp), %esi	# %sfp, lda
	movl	%esi, %r12d	# lda, tmp208
	notl	%r12d	# tmp208
	movslq	%r12d, %r12	# tmp208, tmp209
	salq	$2, %r12	#, _76
	imull	%esi, %eax	# lda, tmp210
	cltq
	movslq	%r14d, %r14	# n, n
	addq	%rax, %r14	# _79, tmp212
	movq	8(%rsp), %rdx	# %sfp, a
	leaq	(%rdx,%r14,4), %r13	#, ivtmp.116
	negl	%esi	# lda
	movslq	%esi, %r14	# tmp214, tmp215
	salq	$2, %r14	#, _131
	leaq	(%rdx,%rax,4), %r15	#, ivtmp.118
.L53:
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movss	(%rbx,%rbp,4), %xmm0	# MEM[base: b_89(D), index: ivtmp.109_122, step: 4, offset: 0B], MEM[base: b_89(D), index: ivtmp.109_122, step: 4, offset: 0B]
	divss	-4(%r13), %xmm0	# MEM[base: _138, offset: -4B], _31
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movss	%xmm0, (%rbx,%rbp,4)	# _31, MEM[base: b_89(D), index: ivtmp.109_122, step: 4, offset: 0B]
# linpackm.cpp:708:       t = -b[k-1];
	xorps	.LC2(%rip), %xmm0	#, t
# linpackm.cpp:709:       saxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	movl	$1, %r8d	#,
	movq	%rbx, %rcx	# b,
	movl	$1, %edx	#,
	movq	%r15, %rsi	# ivtmp.118,
	movl	%ebp, %edi	# ivtmp.109,
	call	_Z5saxpyifPfiS_i	#
	subq	$1, %rbp	#, ivtmp.109
	addq	%r12, %r13	# _76, ivtmp.116
	addq	%r14, %r15	# _131, ivtmp.118
# linpackm.cpp:705:     for ( k = n; 1 <= k; k-- )
	leal	1(%rbp), %eax	#, tmp220
	testl	%eax, %eax	# tmp220
	jg	.L53	#,
.L46:
# linpackm.cpp:737: }
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L47:
	.cfi_restore_state
# linpackm.cpp:717:     for ( k = 1; k <= n; k++ )
	testl	%edx, %edx	# n
	jle	.L54	#,
	movslq	16(%rsp), %rax	# %sfp, lda
	salq	$2, %rax	#, _201
	movq	%rax, (%rsp)	# _201, %sfp
	movq	8(%rsp), %r12	# %sfp, a
	movq	%r12, %r13	# a, ivtmp.155
	addq	$4, %rax	#, _207
	leal	-1(%rdx), %esi	#, _213
	movl	$0, %ebp	#, ivtmp.152
	movl	%edx, 20(%rsp)	# n, %sfp
	movq	%rax, %r14	# _207, _207
	movq	%rcx, 24(%rsp)	# ipvt, %sfp
	movq	%rsi, %r15	# _213, _213
	jmp	.L55	#
.L58:
	movq	%rax, %rbp	# ivtmp.152, ivtmp.152
.L55:
# linpackm.cpp:719:       t = sdot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	movl	$1, %r8d	#,
	movq	%rbx, %rcx	# b,
	movl	$1, %edx	#,
	movq	%r13, %rsi	# ivtmp.155,
	movl	%ebp, %edi	# ivtmp.152,
	call	_Z4sdotiPfiS_i	#
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movss	(%rbx,%rbp,4), %xmm1	# MEM[base: b_89(D), index: ivtmp.152_196, step: 4, offset: 0B], MEM[base: b_89(D), index: ivtmp.152_196, step: 4, offset: 0B]
	subss	%xmm0, %xmm1	# t, MEM[base: b_89(D), index: ivtmp.152_196, step: 4, offset: 0B]
	movaps	%xmm1, %xmm0	# MEM[base: b_89(D), index: ivtmp.152_196, step: 4, offset: 0B], tmp223
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	divss	(%r12), %xmm0	# MEM[base: _210, offset: 0B], tmp225
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movss	%xmm0, (%rbx,%rbp,4)	# tmp225, MEM[base: b_89(D), index: ivtmp.152_196, step: 4, offset: 0B]
	leaq	1(%rbp), %rax	#, ivtmp.152
	addq	(%rsp), %r13	# %sfp, ivtmp.155
	addq	%r14, %r12	# _207, ivtmp.157
# linpackm.cpp:717:     for ( k = 1; k <= n; k++ )
	cmpq	%r15, %rbp	# _213, ivtmp.152
	jne	.L58	#,
	movl	20(%rsp), %r14d	# %sfp, n
	movq	24(%rsp), %r15	# %sfp, ipvt
.L54:
# linpackm.cpp:723:     for ( k = n-1; 1 <= k; k-- )
	leal	-1(%r14), %ebp	#, k
# linpackm.cpp:723:     for ( k = n-1; 1 <= k; k-- )
	testl	%ebp, %ebp	# k
	jle	.L46	#,
	movslq	%ebp, %rbp	# k, ivtmp.138
	movl	16(%rsp), %esi	# %sfp, lda
	movl	%esi, %eax	# lda, tmp226
	negl	%eax	# tmp226
	cltq
	leaq	-4(,%rax,4), %r12	#, _175
	leal	-2(%r14), %eax	#, tmp229
	imull	%esi, %eax	# lda, tmp230
	cltq
	addq	%rbp, %rax	# ivtmp.138, tmp232
	movq	8(%rsp), %rsi	# %sfp, a
	leaq	(%rsi,%rax,4), %r13	#, ivtmp.142
	jmp	.L56	#
.L64:
# linpackm.cpp:730:         t = b[l-1];
	cltq
	leaq	-4(%rbx,%rax,4), %rax	#, _72
# linpackm.cpp:730:         t = b[l-1];
	movss	(%rax), %xmm1	# *_72, t
# linpackm.cpp:731:         b[l-1] = b[k-1];
	movss	%xmm0, (%rax)	# _67, *_72
# linpackm.cpp:732:         b[k-1] = t;
	movss	%xmm1, -4(%rbx,%rbp,4)	# t, MEM[base: b_89(D), index: ivtmp.138_166, step: 4, offset: -4B]
.L57:
	subq	$1, %rbp	#, ivtmp.138
	addq	%r12, %r13	# _175, ivtmp.142
# linpackm.cpp:723:     for ( k = n-1; 1 <= k; k-- )
	testl	%ebp, %ebp	# ivtmp.138
	jle	.L46	#,
.L56:
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movss	-4(%rbx,%rbp,4), %xmm2	# MEM[base: b_89(D), index: ivtmp.138_166, step: 4, offset: -4B], _57
	movss	%xmm2, (%rsp)	# _57, %sfp
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	leaq	(%rbx,%rbp,4), %rcx	#, tmp235
	movl	%r14d, %edi	# n, tmp236
	subl	%ebp, %edi	# ivtmp.138, tmp236
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	movq	%r13, %rsi	# ivtmp.142,
	call	_Z4sdotiPfiS_i	#
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	addss	(%rsp), %xmm0	# %sfp, _67
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movss	%xmm0, -4(%rbx,%rbp,4)	# _67, MEM[base: b_89(D), index: ivtmp.138_166, step: 4, offset: -4B]
# linpackm.cpp:726:       l = ipvt[k-1];
	movl	-4(%r15,%rbp,4), %eax	# MEM[base: ipvt_87(D), index: ivtmp.138_166, step: 4, offset: -4B], l
# linpackm.cpp:728:       if ( l != k )
	cmpl	%ebp, %eax	# ivtmp.138, l
	jne	.L64	#,
	jmp	.L57	#
	.cfi_endproc
.LFE2360:
	.size	_Z5sgeslPfiiPiS_i, .-_Z5sgeslPfiiPiS_i
	.globl	_Z5sscalifPfi
	.type	_Z5sscalifPfi, @function
_Z5sscalifPfi:
.LFB2361:
	.cfi_startproc
# linpackm.cpp:783:   if ( n <= 0 )
	testl	%edi, %edi	# n
	jle	.L65	#,
# linpackm.cpp:786:   else if ( incx == 1 )
	cmpl	$1, %edx	#, incx
	je	.L78	#,
# linpackm.cpp:808:       ix = 0;
	movl	$0, %eax	#, ix
# linpackm.cpp:806:     if ( 0 <= incx )
	testl	%edx, %edx	# incx
	js	.L79	#,
.L73:
	movslq	%edx, %rdx	# incx, incx
	leaq	0(,%rdx,4), %rcx	#, _96
	cltq
	leaq	(%rsi,%rax,4), %rax	#, ivtmp.178
# linpackm.cpp:808:       ix = 0;
	movl	$0, %edx	#, i
.L74:
# linpackm.cpp:817:       x[ix] = sa * x[ix];
	movaps	%xmm0, %xmm1	# sa, tmp159
	mulss	(%rax), %xmm1	# MEM[base: _101, offset: 0B], tmp159
# linpackm.cpp:817:       x[ix] = sa * x[ix];
	movss	%xmm1, (%rax)	# tmp159, MEM[base: _101, offset: 0B]
# linpackm.cpp:815:     for ( i = 0; i < n; i++ )
	addl	$1, %edx	#, i
	addq	%rcx, %rax	# _96, ivtmp.178
# linpackm.cpp:815:     for ( i = 0; i < n; i++ )
	cmpl	%edx, %edi	# i, n
	jne	.L74	#,
.L65:
# linpackm.cpp:824: }
	ret	
.L78:
# linpackm.cpp:788:     m = n % 5;
	movl	$1717986919, %edx	#, tmp130
	movl	%edi, %eax	# n, tmp171
	imull	%edx	# tmp130
	sarl	%edx	# tmp131
	movl	%edi, %eax	# n, tmp132
	sarl	$31, %eax	#, tmp132
	subl	%eax, %edx	# tmp132, m
	leal	(%rdx,%rdx,4), %eax	#, tmp135
	movl	%edi, %edx	# n, m
	subl	%eax, %edx	# tmp135, m
# linpackm.cpp:790:     for ( i = 0; i < m; i++ )
	testl	%edx, %edx	# m
	jle	.L70	#,
	movq	%rsi, %rax	# x, ivtmp.170
	leal	-1(%rdx), %ecx	#, tmp137
	leaq	4(%rsi,%rcx,4), %rcx	#, _92
.L71:
# linpackm.cpp:792:       x[i] = sa * x[i];
	movaps	%xmm0, %xmm1	# sa, tmp140
	mulss	(%rax), %xmm1	# MEM[base: _84, offset: 0B], tmp140
# linpackm.cpp:792:       x[i] = sa * x[i];
	movss	%xmm1, (%rax)	# tmp140, MEM[base: _84, offset: 0B]
	addq	$4, %rax	#, ivtmp.170
# linpackm.cpp:790:     for ( i = 0; i < m; i++ )
	cmpq	%rcx, %rax	# _92, ivtmp.170
	jne	.L71	#,
.L70:
	movslq	%edx, %rax	# m, m
	leaq	(%rsi,%rax,4), %rax	#, ivtmp.164
# linpackm.cpp:795:     for ( i = m; i < n; i = i + 5 )
	cmpl	%edx, %edi	# m, n
	jle	.L80	#,
.L72:
# linpackm.cpp:797:       x[i]   = sa * x[i];
	movaps	%xmm0, %xmm1	# sa, tmp144
	mulss	(%rax), %xmm1	# MEM[base: _41, offset: 0B], tmp144
# linpackm.cpp:797:       x[i]   = sa * x[i];
	movss	%xmm1, (%rax)	# tmp144, MEM[base: _41, offset: 0B]
# linpackm.cpp:798:       x[i+1] = sa * x[i+1];
	movaps	%xmm0, %xmm1	# sa, tmp146
	mulss	4(%rax), %xmm1	# MEM[base: _41, offset: 4B], tmp146
# linpackm.cpp:798:       x[i+1] = sa * x[i+1];
	movss	%xmm1, 4(%rax)	# tmp146, MEM[base: _41, offset: 4B]
# linpackm.cpp:799:       x[i+2] = sa * x[i+2];
	movaps	%xmm0, %xmm1	# sa, tmp148
	mulss	8(%rax), %xmm1	# MEM[base: _41, offset: 8B], tmp148
# linpackm.cpp:799:       x[i+2] = sa * x[i+2];
	movss	%xmm1, 8(%rax)	# tmp148, MEM[base: _41, offset: 8B]
# linpackm.cpp:800:       x[i+3] = sa * x[i+3];
	movaps	%xmm0, %xmm1	# sa, tmp150
	mulss	12(%rax), %xmm1	# MEM[base: _41, offset: 12B], tmp150
# linpackm.cpp:800:       x[i+3] = sa * x[i+3];
	movss	%xmm1, 12(%rax)	# tmp150, MEM[base: _41, offset: 12B]
# linpackm.cpp:801:       x[i+4] = sa * x[i+4];
	movaps	%xmm0, %xmm1	# sa, tmp152
	mulss	16(%rax), %xmm1	# MEM[base: _41, offset: 16B], tmp152
# linpackm.cpp:801:       x[i+4] = sa * x[i+4];
	movss	%xmm1, 16(%rax)	# tmp152, MEM[base: _41, offset: 16B]
# linpackm.cpp:795:     for ( i = m; i < n; i = i + 5 )
	addl	$5, %edx	#, m
	addq	$20, %rax	#, ivtmp.164
# linpackm.cpp:795:     for ( i = m; i < n; i = i + 5 )
	cmpl	%edx, %edi	# m, n
	jg	.L72	#,
	ret	
.L80:
	ret	
.L79:
# linpackm.cpp:812:       ix = ( - n + 1 ) * incx;
	movl	$1, %eax	#, tmp155
	subl	%edi, %eax	# n, tmp154
# linpackm.cpp:812:       ix = ( - n + 1 ) * incx;
	imull	%edx, %eax	# incx, ix
	jmp	.L73	#
	.cfi_endproc
.LFE2361:
	.size	_Z5sscalifPfi, .-_Z5sscalifPfi
	.globl	_Z6isamaxiPfi
	.type	_Z6isamaxiPfi, @function
_Z6isamaxiPfi:
.LFB2362:
	.cfi_startproc
# linpackm.cpp:870:   if ( n < 1 || incx <= 0 )
	testl	%edi, %edi	# n
	jle	.L94	#,
	testl	%edx, %edx	# incx
	jle	.L94	#,
# linpackm.cpp:879:     return value;
	movl	%edi, %eax	# n, <retval>
# linpackm.cpp:877:   if ( n == 1 )
	cmpl	$1, %edi	#, n
	je	.L81	#,
# linpackm.cpp:882:   if ( incx == 1 )
	cmpl	$1, %edx	#, incx
	je	.L99	#,
# linpackm.cpp:898:     dmax = r4_abs ( dx[0] );
	movss	(%rsi), %xmm1	# *dx_34(D), dmax
# linpackm.cpp:939:   if ( 0.0 <= x )
	comiss	.LC1(%rip), %xmm1	#, dmax
	jb	.L100	#,
.L89:
	movslq	%edx, %rdx	# incx, incx
	leaq	0(,%rdx,4), %rcx	#, _25
	addq	%rcx, %rsi	# _25, ivtmp.194
# linpackm.cpp:891:         dmax = r4_abs ( dx[i] );
	movl	$1, %eax	#, <retval>
	movl	$1, %edx	#, i
# linpackm.cpp:939:   if ( 0.0 <= x )
	pxor	%xmm2, %xmm2	# tmp127
# linpackm.cpp:945:     return ( -x );
	movss	.LC2(%rip), %xmm3	#, tmp133
	jmp	.L93	#
.L99:
# linpackm.cpp:884:     dmax = r4_abs ( dx[0] );
	movss	(%rsi), %xmm1	# *dx_34(D), _4
# linpackm.cpp:939:   if ( 0.0 <= x )
	comiss	.LC1(%rip), %xmm1	#, _4
	jb	.L101	#,
.L84:
# linpackm.cpp:862: {
	movl	%edx, %eax	# incx, <retval>
	movl	$1, %edx	#, ivtmp.182
# linpackm.cpp:939:   if ( 0.0 <= x )
	pxor	%xmm2, %xmm2	# tmp118
# linpackm.cpp:945:     return ( -x );
	movss	.LC2(%rip), %xmm3	#, tmp132
	jmp	.L88	#
.L101:
# linpackm.cpp:945:     return ( -x );
	xorps	.LC2(%rip), %xmm1	#, _4
	jmp	.L84	#
.L103:
	xorps	%xmm3, %xmm0	# tmp132, _8
	jmp	.L85	#
.L86:
	addq	$1, %rdx	#, ivtmp.182
# linpackm.cpp:886:     for ( i = 1; i < n; i++ )
	cmpl	%edx, %edi	# ivtmp.182, n
	jle	.L102	#,
.L88:
# linpackm.cpp:888:       if ( dmax < r4_abs ( dx[i] ) )
	movss	(%rsi,%rdx,4), %xmm0	# MEM[base: dx_34(D), index: ivtmp.182_53, step: 4, offset: 0B], _8
# linpackm.cpp:939:   if ( 0.0 <= x )
	comiss	%xmm2, %xmm0	# tmp118, _8
	jb	.L103	#,
.L85:
# linpackm.cpp:888:       if ( dmax < r4_abs ( dx[i] ) )
	comiss	%xmm1, %xmm0	# _4, _8
	jbe	.L86	#,
	leal	1(%rdx), %eax	#, <retval>
# linpackm.cpp:891:         dmax = r4_abs ( dx[i] );
	movaps	%xmm0, %xmm1	# _8, _4
	jmp	.L86	#
.L102:
	ret	
.L100:
# linpackm.cpp:945:     return ( -x );
	xorps	.LC2(%rip), %xmm1	#, dmax
	jmp	.L89	#
.L105:
	xorps	%xmm3, %xmm0	# tmp133, _14
	jmp	.L90	#
.L91:
# linpackm.cpp:901:     for ( i = 1; i < n; i++ )
	addl	$1, %edx	#, i
	addq	%rcx, %rsi	# _25, ivtmp.194
# linpackm.cpp:901:     for ( i = 1; i < n; i++ )
	cmpl	%edx, %edi	# i, n
	jle	.L104	#,
.L93:
# linpackm.cpp:903:       if ( dmax < r4_abs ( dx[ix] ) )
	movss	(%rsi), %xmm0	# MEM[base: _60, offset: 0B], _14
# linpackm.cpp:939:   if ( 0.0 <= x )
	comiss	%xmm2, %xmm0	# tmp127, _14
	jb	.L105	#,
.L90:
# linpackm.cpp:903:       if ( dmax < r4_abs ( dx[ix] ) )
	comiss	%xmm1, %xmm0	# dmax, _14
	jbe	.L91	#,
	leal	1(%rdx), %eax	#, <retval>
# linpackm.cpp:906:         dmax = r4_abs ( dx[ix] );
	movaps	%xmm0, %xmm1	# _14, dmax
	jmp	.L91	#
.L104:
	ret	
.L94:
# linpackm.cpp:872:     return value;
	movl	$0, %eax	#, <retval>
.L81:
# linpackm.cpp:913: }
	ret	
	.cfi_endproc
.LFE2362:
	.size	_Z6isamaxiPfi, .-_Z6isamaxiPfi
	.globl	_Z5sgefaPfiiPi
	.type	_Z5sgefaPfiiPi, @function
_Z5sgefaPfiiPi:
.LFB2359:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$112, %rsp	#,
	.cfi_def_cfa_offset 168
	movq	%rdi, 8(%rsp)	# a, %sfp
	movl	%esi, 108(%rsp)	# lda, %sfp
	movl	%edx, 104(%rsp)	# n, %sfp
	movq	%rcx, 56(%rsp)	# ipvt, %sfp
# linpackm.cpp:568:   for ( k = 1; k <= n-1; k++ )
	cmpl	$1, %edx	#, n
	jle	.L116	#,
	movl	%esi, %ecx	# lda, lda
	movslq	%esi, %rax	# lda, lda
	leaq	4(,%rax,4), %rsi	#, _128
	movq	%rsi, 64(%rsp)	# _128, %sfp
	movq	%rdi, 32(%rsp)	# a, %sfp
	movl	%ecx, (%rsp)	# lda, %sfp
	leal	1(%rcx), %eax	#, _136
	movl	%eax, 76(%rsp)	# _136, %sfp
	movl	%edx, 72(%rsp)	# _144, %sfp
	leal	-2(%rdx), %eax	#, tmp172
	addq	$2, %rax	#, _147
	movq	%rax, 80(%rsp)	# _147, %sfp
	leaq	-4(%rsi), %rax	#, _92
	movq	%rax, 24(%rsp)	# _92, %sfp
	movl	$0, 48(%rsp)	#, %sfp
	movl	$0, 44(%rsp)	#, %sfp
	movl	$1, %r15d	#, ivtmp.209
# linpackm.cpp:566:   info = 0;
	movl	$0, 88(%rsp)	#, %sfp
	leal	1(%rdx), %eax	#, _4
	movl	%eax, 52(%rsp)	# _4, %sfp
	jmp	.L113	#
.L118:
	movl	%r15d, 92(%rsp)	# ivtmp.209, %sfp
# linpackm.cpp:586:     if ( l != k )
	cmpl	%r15d, %r14d	# ivtmp.209, l
	je	.L110	#,
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movslq	48(%rsp), %rdx	# %sfp, ivtmp.220
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movq	8(%rsp), %rsi	# %sfp, a
	leaq	(%rsi,%rdx,4), %rdx	#, _24
	movss	(%rdx), %xmm1	# *_24, _25
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movss	%xmm1, (%rax)	# _25, *_19
# linpackm.cpp:590:       a[k-1+(k-1)*lda] = t;
	movss	%xmm0, (%rdx)	# _20, *_24
.L110:
	movq	32(%rsp), %rax	# %sfp, ivtmp.212
	leaq	4(%rax), %rsi	#, _154
	movq	%rsi, 16(%rsp)	# _154, %sfp
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	movl	48(%rsp), %r13d	# %sfp, ivtmp.220
	movslq	%r13d, %rax	# ivtmp.220, ivtmp.220
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	movss	.LC3(%rip), %xmm0	#, tmp184
	movq	8(%rsp), %rbx	# %sfp, a
	divss	(%rbx,%rax,4), %xmm0	# *_29, t
# linpackm.cpp:597:     sscal ( n-k, t, a+k+(k-1)*lda, 1 );
	movl	$1, %edx	#,
	movl	4(%rsp), %edi	# %sfp,
	call	_Z5sscalifPfi	#
	addl	$1, %ebp	#, j
# linpackm.cpp:601:     for ( j = k+1; j <= n; j++ )
	cmpl	%ebp, 104(%rsp)	# j, %sfp
	jl	.L107	#,
	movl	44(%rsp), %eax	# %sfp, tmp185
	movl	(%rsp), %ecx	# %sfp, _132
	addl	%ecx, %eax	# _132, tmp185
	cltq
	addq	%r15, %rax	# ivtmp.209, tmp187
	leaq	(%rbx,%rax,4), %rbx	#, ivtmp.200
	addl	%r13d, %ecx	# ivtmp.220, ivtmp.203
	movl	%ecx, %r13d	# ivtmp.203, ivtmp.203
	movl	52(%rsp), %eax	# %sfp, _4
	movl	%eax, 40(%rsp)	# _4, %sfp
	movslq	%r12d, %r12	# _11, _11
	subq	%r15, %r12	# ivtmp.209, _114
	movq	%r15, 96(%rsp)	# ivtmp.209, %sfp
	movl	92(%rsp), %r15d	# %sfp, k
	jmp	.L112	#
.L124:
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movslq	%r13d, %rax	# ivtmp.203, ivtmp.203
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movq	8(%rsp), %rsi	# %sfp, a
	leaq	(%rsi,%rax,4), %rax	#, _41
	movss	(%rax), %xmm1	# *_41, _42
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movss	%xmm1, -8(%rbx,%r12,4)	# _42, MEM[base: _111, index: _114, step: 4, offset: -8B]
# linpackm.cpp:607:         a[k-1+(j-1)*lda] = t;
	movss	%xmm0, (%rax)	# t, *_41
.L111:
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	movl	$1, %r8d	#,
	movl	$1, %edx	#,
	movq	16(%rsp), %rsi	# %sfp,
	movl	4(%rsp), %edi	# %sfp,
	call	_Z5saxpyifPfiS_i	#
# linpackm.cpp:601:     for ( j = k+1; j <= n; j++ )
	addl	$1, %ebp	#, j
	addq	24(%rsp), %rbx	# %sfp, ivtmp.200
	addl	(%rsp), %r13d	# %sfp, ivtmp.203
# linpackm.cpp:601:     for ( j = k+1; j <= n; j++ )
	cmpl	40(%rsp), %ebp	# %sfp, j
	je	.L123	#,
.L112:
	movq	%rbx, %rcx	# ivtmp.200, _111
# linpackm.cpp:603:       t = a[l-1+(j-1)*lda];
	movss	-8(%rbx,%r12,4), %xmm0	# MEM[base: _111, index: _114, step: 4, offset: -8B], t
# linpackm.cpp:604:       if ( l != k )
	cmpl	%r15d, %r14d	# k, l
	jne	.L124	#,
	jmp	.L111	#
.L123:
	movq	96(%rsp), %r15	# %sfp, ivtmp.209
.L108:
	addq	$1, %r15	#, ivtmp.209
	movq	64(%rsp), %rdx	# %sfp, _128
	addq	%rdx, 32(%rsp)	# _128, %sfp
	movl	(%rsp), %esi	# %sfp, _132
	addl	%esi, 44(%rsp)	# _132, %sfp
	movl	76(%rsp), %edi	# %sfp, _136
	addl	%edi, 48(%rsp)	# _136, %sfp
# linpackm.cpp:568:   for ( k = 1; k <= n-1; k++ )
	cmpq	80(%rsp), %r15	# %sfp, ivtmp.209
	je	.L107	#,
.L113:
	movl	%r15d, %ebp	# ivtmp.209, _143
	movl	72(%rsp), %eax	# %sfp, _152
	subl	%r15d, %eax	# ivtmp.209, _152
	movl	%eax, 4(%rsp)	# _152, %sfp
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	movl	52(%rsp), %edi	# %sfp, tmp173
	subl	%r15d, %edi	# ivtmp.209, tmp173
	movl	$1, %edx	#,
	movq	32(%rsp), %rsi	# %sfp,
	call	_Z6isamaxiPfi	#
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	leal	(%rax,%r15), %r12d	#, _11
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	leal	-1(%r12), %r14d	#, l
# linpackm.cpp:574:     ipvt[k-1] = l;
	movq	56(%rsp), %rax	# %sfp, ipvt
	movl	%r14d, -4(%rax,%r15,4)	# l, MEM[base: ipvt_74(D), index: ivtmp.209_122, step: 4, offset: -4B]
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	movl	44(%rsp), %eax	# %sfp, ivtmp.214
	leal	-2(%r12,%rax), %eax	#, tmp175
	cltq
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	movq	8(%rsp), %rdx	# %sfp, a
	leaq	(%rdx,%rax,4), %rax	#, _19
	movss	(%rax), %xmm0	# *_19, _20
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	ucomiss	.LC1(%rip), %xmm0	#, _20
	jp	.L118	#,
	jne	.L118	#,
	movl	%r15d, 88(%rsp)	# k, %sfp
	jmp	.L108	#
.L116:
# linpackm.cpp:566:   info = 0;
	movl	$0, 88(%rsp)	#, %sfp
.L107:
# linpackm.cpp:614:   ipvt[n-1] = n;
	movl	104(%rsp), %edi	# %sfp, n
	movslq	%edi, %rax	# n, n
# linpackm.cpp:614:   ipvt[n-1] = n;
	movq	56(%rsp), %rdx	# %sfp, ipvt
	movl	%edi, -4(%rdx,%rax,4)	# n, *_50
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	leal	-1(%rdi), %edx	#, _51
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	movl	108(%rsp), %eax	# %sfp, lda
	imull	%edx, %eax	# _51, lda
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	addl	%edx, %eax	# _51, tmp194
	cltq
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	pxor	%xmm0, %xmm0	# tmp196
	movq	8(%rsp), %rdx	# %sfp, a
	ucomiss	(%rdx,%rax,4), %xmm0	# *_56, tmp196
	jp	.L106	#,
# linpackm.cpp:618:     info = n;
	cmovne	88(%rsp), %edi	# %sfp,, n
	movl	%edi, 88(%rsp)	# n, %sfp
.L106:
# linpackm.cpp:622: }
	movl	88(%rsp), %eax	# %sfp,
	addq	$112, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
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
# linpackm.cpp:939:   if ( 0.0 <= x )
	comiss	.LC1(%rip), %xmm0	#, x
	jb	.L127	#,
.L126:
# linpackm.cpp:947: }
	ret	
.L127:
# linpackm.cpp:945:     return ( -x );
	xorps	.LC2(%rip), %xmm0	#, x
	jmp	.L126	#
	.cfi_endproc
.LFE2363:
	.size	_Z6r4_absf, .-_Z6r4_absf
	.globl	_Z10r4_epsilonv
	.type	_Z10r4_epsilonv, @function
_Z10r4_epsilonv:
.LFB2364:
	.cfi_startproc
# linpackm.cpp:978: {
	movl	$24, %eax	#, ivtmp_2
# linpackm.cpp:981:   r = 1.0E+00;
	movss	.LC4(%rip), %xmm0	#, r
# linpackm.cpp:985:     r = r / 2.0E+00;
	movss	.LC5(%rip), %xmm1	#, tmp90
.L129:
	mulss	%xmm1, %xmm0	# tmp90, r
# linpackm.cpp:983:   while ( 1.0E+00 < ( float ) ( 1.0E+00 + r )  )
	subl	$1, %eax	#, ivtmp_2
	jne	.L129	#,
# linpackm.cpp:988:   return ( 2.0E+00 * r );
	addss	%xmm0, %xmm0	# r, tmp91
# linpackm.cpp:989: }
	ret	
	.cfi_endproc
.LFE2364:
	.size	_Z10r4_epsilonv, .-_Z10r4_epsilonv
	.globl	_Z6r4_maxff
	.type	_Z6r4_maxff, @function
_Z6r4_maxff:
.LFB2365:
	.cfi_startproc
# linpackm.cpp:1021:     return y;
	maxss	%xmm1, %xmm0	# y, x
# linpackm.cpp:1023: }
	ret	
	.cfi_endproc
.LFE2365:
	.size	_Z6r4_maxff, .-_Z6r4_maxff
	.globl	_Z9r4_randomPi
	.type	_Z9r4_randomPi, @function
_Z9r4_randomPi:
.LFB2366:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# linpackm.cpp:1071:   it4 = iseed[3] * m4;
	movl	12(%rdi), %r10d	# MEM[(int *)iseed_38(D) + 12B], _1
# linpackm.cpp:1071:   it4 = iseed[3] * m4;
	imull	$2549, %r10d, %edx	#, _1, _2
	movl	%edx, %ecx	# _2, tmp129
	sarl	$31, %ecx	#, tmp129
	shrl	$20, %ecx	#, tmp130
	leal	(%rdx,%rcx), %eax	#, tmp131
	andl	$4095, %eax	#, tmp132
	subl	%ecx, %eax	# tmp130, tmp133
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	movl	8(%rdi), %r11d	# MEM[(int *)iseed_38(D) + 8B], _4
# linpackm.cpp:1072:   it3 = it4 / ipw2;
	leal	4095(%rdx), %esi	#, tmp136
	testl	%edx, %edx	# _2
	cmovns	%edx, %esi	# tmp136,, _2, _2
	sarl	$12, %esi	#, tmp137
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imull	$2549, %r11d, %edx	#, _4, tmp138
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	addl	%edx, %esi	# tmp138, tmp139
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imull	$2508, %r10d, %edx	#, _1, tmp140
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	addl	%esi, %edx	# tmp139, _8
	movl	%edx, %ecx	# _8, tmp141
	sarl	$31, %ecx	#, tmp141
	shrl	$20, %ecx	#, tmp142
	leal	(%rdx,%rcx), %r8d	#, tmp143
	andl	$4095, %r8d	#, tmp144
	subl	%ecx, %r8d	# tmp142, tmp145
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	movl	4(%rdi), %ebx	# MEM[(int *)iseed_38(D) + 4B], _10
# linpackm.cpp:1075:   it2 = it3 / ipw2;
	leal	4095(%rdx), %esi	#, tmp148
	testl	%edx, %edx	# _8
	cmovns	%edx, %esi	# tmp148,, _8, _8
	sarl	$12, %esi	#, tmp149
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imull	$2549, %ebx, %edx	#, _10, tmp150
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	addl	%edx, %esi	# tmp150, tmp151
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imull	$2508, %r11d, %edx	#, _4, tmp152
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	addl	%edx, %esi	# tmp152, tmp153
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imull	$322, %r10d, %edx	#, _1, tmp154
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	addl	%edx, %esi	# tmp154, _16
	movl	%esi, %edx	# _16, tmp155
	sarl	$31, %edx	#, tmp155
	shrl	$20, %edx	#, tmp156
	leal	(%rsi,%rdx), %r9d	#, tmp157
	andl	$4095, %r9d	#, tmp158
	subl	%edx, %r9d	# tmp156, tmp159
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	$2549, (%rdi), %ecx	#, *iseed_38(D), tmp160
# linpackm.cpp:1078:   it1 = it2 / ipw2;
	leal	4095(%rsi), %edx	#, tmp164
	testl	%esi, %esi	# _16
	cmovns	%esi, %edx	# tmp164,, _16, _16
	sarl	$12, %edx	#, tmp165
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	addl	%ecx, %edx	# tmp160, tmp166
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	$2508, %ebx, %ebx	#, _10, tmp167
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	addl	%ebx, %edx	# tmp167, tmp168
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	$322, %r11d, %r11d	#, _4, tmp169
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	addl	%r11d, %edx	# tmp169, tmp170
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	$494, %r10d, %r10d	#, _1, tmp171
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	addl	%r10d, %edx	# tmp171, tmp172
# linpackm.cpp:1081:   it1 = ( it1 % ipw2 );
	movl	%edx, %ecx	# tmp172, tmp173
	sarl	$31, %ecx	#, tmp173
	shrl	$20, %ecx	#, tmp174
	addl	%ecx, %edx	# tmp174, tmp175
	andl	$4095, %edx	#, tmp176
	subl	%ecx, %edx	# tmp174, tmp177
# linpackm.cpp:1085:   iseed[0] = it1;
	movl	%edx, (%rdi)	# tmp177, *iseed_38(D)
# linpackm.cpp:1086:   iseed[1] = it2;
	movl	%r9d, 4(%rdi)	# tmp159, MEM[(int *)iseed_38(D) + 4B]
# linpackm.cpp:1087:   iseed[2] = it3;
	movl	%r8d, 8(%rdi)	# tmp145, MEM[(int *)iseed_38(D) + 8B]
# linpackm.cpp:1088:   iseed[3] = it4;
	movl	%eax, 12(%rdi)	# tmp133, MEM[(int *)iseed_38(D) + 12B]
# linpackm.cpp:1096:     + r * ( ( float ) ( it4 ) ) ) ) );
	pxor	%xmm1, %xmm1	# tmp179
	cvtsi2ss	%eax, %xmm1	# tmp133, tmp179
# linpackm.cpp:1096:     + r * ( ( float ) ( it4 ) ) ) ) );
	movss	.LC6(%rip), %xmm2	#, tmp181
	mulss	%xmm2, %xmm1	# tmp181, tmp180
# linpackm.cpp:1095:     + r * ( ( float ) ( it3 ) 
	pxor	%xmm0, %xmm0	# tmp182
	cvtsi2ss	%r8d, %xmm0	# tmp145, tmp182
# linpackm.cpp:1096:     + r * ( ( float ) ( it4 ) ) ) ) );
	addss	%xmm0, %xmm1	# tmp182, tmp183
# linpackm.cpp:1095:     + r * ( ( float ) ( it3 ) 
	mulss	%xmm2, %xmm1	# tmp181, tmp184
# linpackm.cpp:1094:     + r * ( ( float ) ( it2 ) 
	pxor	%xmm0, %xmm0	# tmp186
	cvtsi2ss	%r9d, %xmm0	# tmp159, tmp186
# linpackm.cpp:1095:     + r * ( ( float ) ( it3 ) 
	addss	%xmm0, %xmm1	# tmp186, tmp187
# linpackm.cpp:1094:     + r * ( ( float ) ( it2 ) 
	movaps	%xmm1, %xmm0	# tmp187, tmp187
	mulss	%xmm2, %xmm0	# tmp181, tmp187
# linpackm.cpp:1093:       r * ( ( float ) ( it1 ) 
	pxor	%xmm1, %xmm1	# tmp190
	cvtsi2ss	%edx, %xmm1	# tmp177, tmp190
# linpackm.cpp:1094:     + r * ( ( float ) ( it2 ) 
	addss	%xmm0, %xmm1	# tmp188, tmp191
# linpackm.cpp:1092:   value = 
	movaps	%xmm1, %xmm0	# tmp191, tmp191
	mulss	%xmm2, %xmm0	# tmp181, tmp191
# linpackm.cpp:1099: }
	popq	%rbx	#
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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# linpackm.cpp:1125:   int init[4] = { 1, 2, 3, 1325 };
	movl	$1, 16(%rsp)	#, init
	movl	$2, 20(%rsp)	#, init
	movl	$3, 24(%rsp)	#, init
	movl	$1325, 28(%rsp)	#, init
# linpackm.cpp:1128:   a = new float[lda*n];
	movl	%edi, %eax	# lda, tmp111
	imull	%esi, %eax	# n, tmp111
	cltq
# linpackm.cpp:1128:   a = new float[lda*n];
	movabsq	$2305843009213693950, %rdx	#, tmp112
	cmpq	%rdx, %rax	# tmp112, _22
	ja	.L136	#,
	movl	%edi, %ebx	# lda, lda
	movl	%esi, %r13d	# n, n
# linpackm.cpp:1128:   a = new float[lda*n];
	leaq	0(,%rax,4), %rdi	#, tmp113
	call	_Znam	#
	movq	%rax, 8(%rsp)	#, %sfp
# linpackm.cpp:1130:   for ( j = 1; j <= n; j++ )
	testl	%r13d, %r13d	# n
	jle	.L135	#,
	movslq	%ebx, %rbx	# lda, lda
	leaq	0(,%rbx,4), %r14	#, _52
	leal	-1(%r13), %r15d	#, _56
	movq	8(%rsp), %rax	# %sfp, <retval>
	leaq	4(%rax,%r15,4), %rbp	#, ivtmp.239
	addl	$1, %r13d	#, _62
# linpackm.cpp:1130:   for ( j = 1; j <= n; j++ )
	movl	$1, %r12d	#, j
	notq	%r15	# tmp121
	salq	$2, %r15	#, tmp122
	jmp	.L140	#
.L136:
# linpackm.cpp:1128:   a = new float[lda*n];
	call	__cxa_throw_bad_array_new_length	#
.L145:
# linpackm.cpp:1130:   for ( j = 1; j <= n; j++ )
	addl	$1, %r12d	#, j
	addq	%r14, %rbp	# _52, ivtmp.239
# linpackm.cpp:1130:   for ( j = 1; j <= n; j++ )
	cmpl	%r13d, %r12d	# _62, j
	je	.L135	#,
.L140:
	leaq	(%r15,%rbp), %rbx	#, ivtmp.232
.L139:
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	leaq	16(%rsp), %rdi	#,
	call	_Z9r4_randomPi	#
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	subss	.LC5(%rip), %xmm0	#, tmp124
	movss	%xmm0, (%rbx)	# tmp124, MEM[base: _11, offset: 0B]
	addq	$4, %rbx	#, ivtmp.232
# linpackm.cpp:1132:     for ( i = 1; i <= n; i++ )
	cmpq	%rbp, %rbx	# ivtmp.239, ivtmp.232
	jne	.L139	#,
	jmp	.L145	#
.L135:
# linpackm.cpp:1139: }
	movq	8(%rsp), %rax	# %sfp,
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
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
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# linpackm.cpp:1174:   now = time ( NULL );
	movl	$0, %edi	#,
	call	time	#
# linpackm.cpp:1174:   now = time ( NULL );
	movq	%rax, 8(%rsp)	# _1, now
# linpackm.cpp:1175:   tm = localtime ( &now );
	leaq	8(%rsp), %rdi	#, tmp90
	call	localtime	#
# linpackm.cpp:1177:   len = strftime ( time_buffer, TIME_SIZE, "%d %B %Y %I:%M:%S %p", tm );
	movq	%rax, %rcx	# tm,
	movl	$.LC7, %edx	#,
	movl	$40, %esi	#,
	movl	$_ZZ9timestampvE11time_buffer, %edi	#,
	call	strftime	#
# linpackm.cpp:1183: }
	addq	$24, %rsp	#,
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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
# linpackm.cpp:72:   timestamp ( );
	call	_Z9timestampv	#
# linpackm.cpp:87:   a = r4mat_gen ( LDA, N );
	movl	$1000, %esi	#,
	movl	$1001, %edi	#,
	call	_Z9r4mat_genii	#
	movq	%rax, %r13	#, _104
# linpackm.cpp:88:   b = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, %r15	#, _106
# linpackm.cpp:89:   ipvt = new int[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, 8(%rsp)	#, %sfp
# linpackm.cpp:90:   resid = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, 32(%rsp)	#, %sfp
# linpackm.cpp:91:   rhs = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, 16(%rsp)	#, %sfp
# linpackm.cpp:92:   x = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, %r14	#, _114
	movl	$1000, %edx	#, ivtmp_227
	jmp	.L150	#
.L184:
# linpackm.cpp:95:   for ( j = 0; j < N; j++ )
	subl	$1, %edx	#, ivtmp_227
	je	.L183	#,
.L150:
# linpackm.cpp:92:   x = new float[N];
	movl	$1000, %eax	#, ivtmp_231
.L149:
# linpackm.cpp:97:     for ( i = 0; i < N; i++ )
	subl	$1, %eax	#, ivtmp_231
	jne	.L149	#,
	jmp	.L184	#
.L183:
	movq	%r14, %rbx	# _114, ivtmp.322
	leaq	4000(%r14), %rbp	#, _326
# linpackm.cpp:95:   for ( j = 0; j < N; j++ )
	movq	%r14, %rax	# _114, ivtmp.322
# linpackm.cpp:105:     x[i] = 1.0;
	movss	.LC4(%rip), %xmm0	#, tmp199
.L151:
# linpackm.cpp:105:     x[i] = 1.0;
	movss	%xmm0, (%rax)	# tmp199, MEM[base: _324, offset: 0B]
	addq	$4, %rax	#, ivtmp.322
# linpackm.cpp:103:   for ( i = 0; i < N; i++ )
	cmpq	%rbp, %rax	# _326, ivtmp.322
	jne	.L151	#,
	movq	%r15, %r12	# _106, ivtmp.312
	leaq	4004000(%r13), %rsi	#, ivtmp.314
	leaq	4008000(%r13), %r8	#, _319
# linpackm.cpp:103:   for ( i = 0; i < N; i++ )
	movq	%r15, %rdi	# _106, ivtmp.312
	jmp	.L153	#
.L186:
	addq	$4, %rdi	#, ivtmp.312
	addq	$4, %rsi	#, ivtmp.314
# linpackm.cpp:108:   for ( i = 0; i < N; i++ )
	cmpq	%r8, %rsi	# _319, ivtmp.314
	je	.L185	#,
.L153:
	movq	%rdi, %rcx	# ivtmp.312, _315
# linpackm.cpp:110:     b[i] = 0.0;
	movl	$0x00000000, (%rdi)	#, MEM[base: _315, offset: 0B]
	leaq	-4004000(%rsi), %rax	#, ivtmp.304
	movq	%rbx, %rdx	# ivtmp.322, ivtmp.305
.L152:
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movss	(%rax), %xmm0	# MEM[base: _301, offset: 0B], MEM[base: _301, offset: 0B]
	mulss	(%rdx), %xmm0	# MEM[base: _302, offset: 0B], tmp201
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	addss	(%rcx), %xmm0	# MEM[base: _315, offset: 0B], tmp203
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movss	%xmm0, (%rcx)	# tmp203, MEM[base: _315, offset: 0B]
	addq	$4004, %rax	#, ivtmp.304
	addq	$4, %rdx	#, ivtmp.305
# linpackm.cpp:111:     for ( j = 0; j < N; j++ )
	cmpq	%rsi, %rax	# ivtmp.314, ivtmp.304
	jne	.L152	#,
	jmp	.L186	#
.L185:
# linpackm.cpp:116:   t1 = cpu_time ( );
	call	_Z8cpu_timev	#
	movsd	%xmm0, (%rsp)	#, %sfp
# linpackm.cpp:118:   info = sgefa ( a, LDA, N, ipvt );
	movq	8(%rsp), %rcx	# %sfp,
	movl	$1000, %edx	#,
	movl	$1001, %esi	#,
	movq	%r13, %rdi	# _104,
	call	_Z5sgefaPfiiPi	#
	movl	%eax, 44(%rsp)	# <retval>, %sfp
# linpackm.cpp:120:   if ( info != 0 )
	testl	%eax, %eax	# <retval>
	jne	.L187	#,
# linpackm.cpp:129:   t2 = cpu_time ( );
	call	_Z8cpu_timev	#
# linpackm.cpp:130:   time[0] = t2 - t1;
	subsd	(%rsp), %xmm0	# %sfp, t2
	movsd	%xmm0, 24(%rsp)	# t2, %sfp
# linpackm.cpp:132:   t1 = cpu_time ( );
	call	_Z8cpu_timev	#
	movsd	%xmm0, (%rsp)	#, %sfp
# linpackm.cpp:135:   sgesl ( a, LDA, N, ipvt, b, job );
	movl	$0, %r9d	#,
	movq	%r15, %r8	# _106,
	movq	8(%rsp), %rcx	# %sfp,
	movl	$1000, %edx	#,
	movl	$1001, %esi	#,
	movq	%r13, %rdi	# _104,
	call	_Z5sgeslPfiiPiS_i	#
# linpackm.cpp:137:   t2 = cpu_time ( );
	call	_Z8cpu_timev	#
# linpackm.cpp:138:   time[1] = t2 - t1;
	movapd	%xmm0, %xmm2	# t2, t2
	subsd	(%rsp), %xmm2	# %sfp, t2
	movsd	%xmm2, 48(%rsp)	# _21, %sfp
# linpackm.cpp:140:   total = time[0] + time[1];
	movsd	24(%rsp), %xmm0	# %sfp, tmp205
	addsd	%xmm2, %xmm0	# _21, tmp205
# linpackm.cpp:140:   total = time[0] + time[1];
	pxor	%xmm5, %xmm5	# total
	cvtsd2ss	%xmm0, %xmm5	# tmp205, total
	movss	%xmm5, 40(%rsp)	# total, %sfp
# linpackm.cpp:142:   delete [] a;
	testq	%r13, %r13	# _104
	je	.L156	#,
# linpackm.cpp:142:   delete [] a;
	movq	%r13, %rdi	# _104,
	call	_ZdaPv	#
.L156:
# linpackm.cpp:146:   a = r4mat_gen ( LDA, N );
	movl	$1000, %esi	#,
	movl	$1001, %edi	#,
	call	_Z9r4mat_genii	#
	movq	%rax, %r13	#, _137
	movq	%r14, %rax	# _114, ivtmp.297
# linpackm.cpp:150:     x[i] = 1.0;
	movss	.LC4(%rip), %xmm0	#, tmp206
.L157:
# linpackm.cpp:150:     x[i] = 1.0;
	movss	%xmm0, (%rax)	# tmp206, MEM[base: _289, offset: 0B]
	addq	$4, %rax	#, ivtmp.297
# linpackm.cpp:148:   for ( i = 0; i < N; i++ )
	cmpq	%rbp, %rax	# _326, ivtmp.297
	jne	.L157	#,
	movq	16(%rsp), %r10	# %sfp, ivtmp.287
	movq	%r13, %r9	# _137, _279
	leaq	4004000(%r13), %rsi	#, ivtmp.271
	leaq	4008000(%r13), %rdi	#, _284
# linpackm.cpp:148:   for ( i = 0; i < N; i++ )
	movq	%rsi, %r8	# ivtmp.271, ivtmp.289
	jmp	.L159	#
.L187:
# linpackm.cpp:122:     cout << "\n";
	movl	$.LC9, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:123:     cout << "LINPACK_BENCH_S - Fatal error!\n";
	movl	$.LC10, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:124:     cout << "  The matrix A is apparently singular.\n";
	movl	$.LC11, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:125:     cout << "  Abnormal end of execution.\n";
	movl	$.LC12, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:126:     return 1;
	movl	$1, 44(%rsp)	#, %sfp
	jmp	.L148	#
.L189:
	addq	$4, %r10	#, ivtmp.287
	addq	$4, %r8	#, ivtmp.289
# linpackm.cpp:153:   for ( i = 0; i < N; i++ )
	cmpq	%rdi, %r8	# _284, ivtmp.289
	je	.L188	#,
.L159:
	movq	%r10, %rcx	# ivtmp.287, _280
# linpackm.cpp:155:     rhs[i] = 0.0;
	movl	$0x00000000, (%r10)	#, MEM[base: _280, offset: 0B]
	leaq	-4004000(%r8), %rax	#, ivtmp.279
	movq	%rbx, %rdx	# ivtmp.322, ivtmp.280
.L158:
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movss	(%rax), %xmm0	# MEM[base: _67, offset: 0B], MEM[base: _67, offset: 0B]
	mulss	(%rdx), %xmm0	# MEM[base: _230, offset: 0B], tmp208
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	addss	(%rcx), %xmm0	# MEM[base: _280, offset: 0B], tmp210
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movss	%xmm0, (%rcx)	# tmp210, MEM[base: _280, offset: 0B]
	addq	$4004, %rax	#, ivtmp.279
	addq	$4, %rdx	#, ivtmp.280
# linpackm.cpp:156:     for ( j = 0; j < N; j++ )
	cmpq	%r8, %rax	# ivtmp.289, ivtmp.279
	jne	.L158	#,
	jmp	.L189	#
.L188:
	movq	32(%rsp), %r8	# %sfp, ivtmp.269
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movq	16(%rsp), %rax	# %sfp, tmp212
	subq	%r9, %rax	# _279, tmp212
	movq	%rax, %r9	# tmp212, tmp212
	movss	.LC2(%rip), %xmm1	#, tmp215
	jmp	.L161	#
.L191:
	addq	$4, %r8	#, ivtmp.269
	addq	$4, %rsi	#, ivtmp.271
# linpackm.cpp:162:   for ( i = 0; i < N; i++ )
	cmpq	%rdi, %rsi	# _284, ivtmp.271
	je	.L190	#,
.L161:
	movq	%r8, %rcx	# ivtmp.269, _86
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movss	-4004000(%r9,%rsi), %xmm0	# MEM[base: _219, index: ivtmp.271_215, offset: -4004000B], MEM[base: _219, index: ivtmp.271_215, offset: -4004000B]
	xorps	%xmm1, %xmm0	# tmp215, tmp213
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movss	%xmm0, (%r8)	# tmp213, MEM[base: _86, offset: 0B]
	leaq	-4004000(%rsi), %rax	#, ivtmp.260
	movq	%r12, %rdx	# ivtmp.312, ivtmp.261
.L160:
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movss	(%rax), %xmm0	# MEM[base: _209, offset: 0B], MEM[base: _209, offset: 0B]
	mulss	(%rdx), %xmm0	# MEM[base: _92, offset: 0B], tmp216
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	addss	(%rcx), %xmm0	# MEM[base: _86, offset: 0B], tmp218
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movss	%xmm0, (%rcx)	# tmp218, MEM[base: _86, offset: 0B]
	addq	$4004, %rax	#, ivtmp.260
	addq	$4, %rdx	#, ivtmp.261
# linpackm.cpp:165:     for ( j = 0; j < N; j++ )
	cmpq	%rax, %rsi	# ivtmp.260, ivtmp.271
	jne	.L160	#,
	jmp	.L191	#
.L190:
	movl	$1000, %eax	#, ivtmp_265
.L162:
# linpackm.cpp:172:   for ( i = 0; i < N; i++ )
	subl	$1, %eax	#, ivtmp_265
	jne	.L162	#,
	movl	$1000, %eax	#, ivtmp_267
.L163:
# linpackm.cpp:178:   for ( i = 0; i < N; i++ )
	subl	$1, %eax	#, ivtmp_267
	jne	.L163	#,
# linpackm.cpp:187:   time[2] = total;
	movss	40(%rsp), %xmm4	# %sfp, total
	pxor	%xmm3, %xmm3	# _61
	cvtss2sd	%xmm4, %xmm3	# total, _61
	movsd	%xmm3, 56(%rsp)	# _61, %sfp
# linpackm.cpp:188:   if ( 0.0 < total )
	comiss	.LC1(%rip), %xmm4	#, total
	jbe	.L181	#,
# linpackm.cpp:190:     time[3] = ops / ( 1.0E+06 * total );
	movsd	.LC13(%rip), %xmm1	#, tmp223
	mulsd	.LC0(%rip), %xmm3	#, tmp221
	divsd	%xmm3, %xmm1	# tmp221, tmp223
	movsd	%xmm1, (%rsp)	# tmp223, %sfp
.L164:
# /usr/include/c++/8/iomanip:240:       __os.width(__f._M_n);
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, cout._vptr.basic_ostream
# /usr/include/c++/8/bits/ios_base.h:726:       _M_width = __wide;
	movq	-24(%rax), %rax	# MEM[(long int *)_152 + -24B], MEM[(long int *)_152 + -24B]
	movq	$9, _ZSt4cout+16(%rax)	#, _148->_M_width
# /usr/include/c++/8/ostream:221:       { return _M_insert(__f); }
	movsd	24(%rsp), %xmm0	# %sfp,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movq	%rax, %rbx	#, _154
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# _154,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/iomanip:240:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# MEM[(struct basic_ostream *)_154]._vptr.basic_ostream, MEM[(struct basic_ostream *)_154]._vptr.basic_ostream
# /usr/include/c++/8/bits/ios_base.h:726:       _M_width = __wide;
	movq	-24(%rax), %rax	# MEM[(long int *)_168 + -24B], MEM[(long int *)_168 + -24B]
	movq	$9, 16(%rbx,%rax)	#, _171->_M_width
# /usr/include/c++/8/ostream:221:       { return _M_insert(__f); }
	movsd	48(%rsp), %xmm0	# %sfp,
	movq	%rbx, %rdi	# _154,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movq	%rax, %rbx	#, _167
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# _167,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/iomanip:240:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# MEM[(struct basic_ostream *)_167]._vptr.basic_ostream, MEM[(struct basic_ostream *)_167]._vptr.basic_ostream
# /usr/include/c++/8/bits/ios_base.h:726:       _M_width = __wide;
	movq	-24(%rax), %rax	# MEM[(long int *)_173 + -24B], MEM[(long int *)_173 + -24B]
	movq	$9, 16(%rbx,%rax)	#, _176->_M_width
# /usr/include/c++/8/ostream:221:       { return _M_insert(__f); }
	movsd	56(%rsp), %xmm0	# %sfp,
	movq	%rbx, %rdi	# _167,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movq	%rax, %rbx	#, _172
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# _172,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/iomanip:240:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# MEM[(struct basic_ostream *)_172]._vptr.basic_ostream, MEM[(struct basic_ostream *)_172]._vptr.basic_ostream
# /usr/include/c++/8/bits/ios_base.h:726:       _M_width = __wide;
	movq	-24(%rax), %rax	# MEM[(long int *)_178 + -24B], MEM[(long int *)_178 + -24B]
	movq	$9, 16(%rbx,%rax)	#, _181->_M_width
# /usr/include/c++/8/ostream:221:       { return _M_insert(__f); }
	movsd	(%rsp), %xmm0	# %sfp,
	movq	%rbx, %rdi	# _172,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movq	%rax, %rbx	#, _177
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# _177,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/iomanip:240:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# MEM[(struct basic_ostream *)_177]._vptr.basic_ostream, MEM[(struct basic_ostream *)_177]._vptr.basic_ostream
# /usr/include/c++/8/bits/ios_base.h:726:       _M_width = __wide;
	movq	-24(%rax), %rax	# MEM[(long int *)_183 + -24B], MEM[(long int *)_183 + -24B]
	movq	$9, 16(%rbx,%rax)	#, _186->_M_width
# linpackm.cpp:196:   time[4] = 2.0 / time[3];
	movsd	.LC15(%rip), %xmm0	#, tmp237
	divsd	(%rsp), %xmm0	# %sfp, tmp236
# /usr/include/c++/8/ostream:221:       { return _M_insert(__f); }
	movq	%rbx, %rdi	# _177,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movq	%rax, %rbx	#, _182
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# _182,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/iomanip:240:       __os.width(__f._M_n);
	movq	(%rbx), %rax	# MEM[(struct basic_ostream *)_182]._vptr.basic_ostream, MEM[(struct basic_ostream *)_182]._vptr.basic_ostream
# /usr/include/c++/8/bits/ios_base.h:726:       _M_width = __wide;
	movq	-24(%rax), %rax	# MEM[(long int *)_188 + -24B], MEM[(long int *)_188 + -24B]
	movq	$9, 16(%rbx,%rax)	#, _191->_M_width
# linpackm.cpp:197:   time[5] = total / cray;
	movss	40(%rsp), %xmm0	# %sfp, total
	divss	.LC16(%rip), %xmm0	#, total
	cvtss2sd	%xmm0, %xmm0	# tmp240, tmp242
# /usr/include/c++/8/ostream:221:       { return _M_insert(__f); }
	movq	%rbx, %rdi	# _182,
	call	_ZNSo9_M_insertIdEERSoT_	#
# linpackm.cpp:213:        << setw(9) << time[5] << "\n";
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# _187,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:215:   delete [] a;
	testq	%r13, %r13	# _137
	je	.L166	#,
# linpackm.cpp:215:   delete [] a;
	movq	%r13, %rdi	# _137,
	call	_ZdaPv	#
.L166:
# linpackm.cpp:216:   delete [] b;
	movq	%r15, %rdi	# _106,
	call	_ZdaPv	#
# linpackm.cpp:217:   delete [] ipvt;
	movq	8(%rsp), %rdi	# %sfp,
	call	_ZdaPv	#
# linpackm.cpp:218:   delete [] resid;
	movq	32(%rsp), %rdi	# %sfp,
	call	_ZdaPv	#
# linpackm.cpp:219:   delete [] rhs;
	movq	16(%rsp), %rdi	# %sfp,
	call	_ZdaPv	#
# linpackm.cpp:220:   delete [] x;
	movq	%r14, %rdi	# _114,
	call	_ZdaPv	#
# linpackm.cpp:227:   timestamp ( );
	call	_Z9timestampv	#
.L148:
# linpackm.cpp:232: }
	movl	44(%rsp), %eax	# %sfp,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L181:
	.cfi_restore_state
# linpackm.cpp:194:     time[3] = -1.0;
	movsd	.LC8(%rip), %xmm6	#, time$3
	movsd	%xmm6, (%rsp)	# time$3, %sfp
	jmp	.L164	#
	.cfi_endproc
.LFE2355:
	.size	main, .-main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2868:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/8/iostream:74:   static ios_base::Init __ioinit;
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	call	__cxa_atexit	#
# linpackm.cpp:1183: }
	addq	$8, %rsp	#,
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
