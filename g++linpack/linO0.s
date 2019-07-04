	.file	"linpackm.cpp"
# GNU C++14 (GCC) version 8.3.1 20190223 (Red Hat 8.3.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 8.3.1 20190223 (Red Hat 8.3.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE linpackm.cpp -mtune=generic -march=x86-64
# -auxbase-strip linO0.s -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexceptions -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm
# -fgnu-runtime -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZSt4setwi,"axG",@progbits,_ZSt4setwi,comdat
	.weak	_ZSt4setwi
	.type	_ZSt4setwi, @function
_ZSt4setwi:
.LFB2090:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# __n, __n
# /usr/include/c++/8/iomanip:226:   { return { __n }; }
	movl	-4(%rbp), %eax	# __n, D.56029
# /usr/include/c++/8/iomanip:226:   { return { __n }; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2090:
	.size	_ZSt4setwi, .-_ZSt4setwi
	.section	.rodata
.LC4:
	.string	"\n"
	.align 8
.LC5:
	.string	"LINPACK_BENCH_S - Fatal error!\n"
	.align 8
.LC6:
	.string	"  The matrix A is apparently singular.\n"
.LC7:
	.string	"  Abnormal end of execution.\n"
.LC13:
	.string	"  "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2333:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
# linpackm.cpp:54:   float cray = 0.056;
	movss	.LC0(%rip), %xmm0	#, tmp236
	movss	%xmm0, -40(%rbp)	# tmp236, cray
# linpackm.cpp:72:   timestamp ( );
	call	_Z9timestampv	#
# linpackm.cpp:83:   ops = ( float ) ( 2 * N * N * N ) / 3.0 + 2.0 * ( float ) ( N * N );
	movss	.LC1(%rip), %xmm0	#, tmp237
	movss	%xmm0, -44(%rbp)	# tmp237, ops
# linpackm.cpp:87:   a = r4mat_gen ( LDA, N );
	movl	$1000, %esi	#,
	movl	$1001, %edi	#,
	call	_Z9r4mat_genii	#
	movq	%rax, -56(%rbp)	# _178, a
# linpackm.cpp:88:   b = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, -64(%rbp)	# _181, b
# linpackm.cpp:89:   ipvt = new int[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, -72(%rbp)	# _184, ipvt
# linpackm.cpp:90:   resid = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, -80(%rbp)	# _187, resid
# linpackm.cpp:91:   rhs = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, -88(%rbp)	# _190, rhs
# linpackm.cpp:92:   x = new float[N];
	movl	$4000, %edi	#,
	call	_Znam	#
	movq	%rax, -96(%rbp)	# _193, x
# linpackm.cpp:94:   a_max = 0.0;
	pxor	%xmm0, %xmm0	# tmp243
	movss	%xmm0, -20(%rbp)	# tmp243, a_max
# linpackm.cpp:95:   for ( j = 0; j < N; j++ )
	movl	$0, -32(%rbp)	#, j
.L7:
# linpackm.cpp:95:   for ( j = 0; j < N; j++ )
	cmpl	$999, -32(%rbp)	#, j
	jg	.L4	#,
# linpackm.cpp:97:     for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L6:
# linpackm.cpp:97:     for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L5	#,
# linpackm.cpp:99:       a_max = r4_max ( a_max, a[i+j*LDA] );
	movl	-32(%rbp), %eax	# j, tmp244
	imull	$1001, %eax, %edx	#, tmp244, _1
# linpackm.cpp:99:       a_max = r4_max ( a_max, a[i+j*LDA] );
	movl	-28(%rbp), %eax	# i, tmp245
	addl	%edx, %eax	# _1, _2
	cltq
# linpackm.cpp:99:       a_max = r4_max ( a_max, a[i+j*LDA] );
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-56(%rbp), %rax	# a, tmp246
	addq	%rdx, %rax	# _4, _5
# linpackm.cpp:99:       a_max = r4_max ( a_max, a[i+j*LDA] );
	movss	(%rax), %xmm1	# *_5, _6
	movss	-20(%rbp), %xmm0	# a_max, tmp247
	call	_Z6r4_maxff	#
	movd	%xmm0, %eax	#, tmp248
	movl	%eax, -20(%rbp)	# tmp248, a_max
# linpackm.cpp:97:     for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L6	#
.L5:
# linpackm.cpp:95:   for ( j = 0; j < N; j++ )
	addl	$1, -32(%rbp)	#, j
	jmp	.L7	#
.L4:
# linpackm.cpp:103:   for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L9:
# linpackm.cpp:103:   for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L8	#,
# linpackm.cpp:105:     x[i] = 1.0;
	movl	-28(%rbp), %eax	# i, tmp249
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-96(%rbp), %rax	# x, tmp250
	addq	%rdx, %rax	# _8, _9
# linpackm.cpp:105:     x[i] = 1.0;
	movss	.LC3(%rip), %xmm0	#, tmp251
	movss	%xmm0, (%rax)	# tmp251, *_9
# linpackm.cpp:103:   for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L9	#
.L8:
# linpackm.cpp:108:   for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L13:
# linpackm.cpp:108:   for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L10	#,
# linpackm.cpp:110:     b[i] = 0.0;
	movl	-28(%rbp), %eax	# i, tmp252
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-64(%rbp), %rax	# b, tmp253
	addq	%rdx, %rax	# _11, _12
# linpackm.cpp:110:     b[i] = 0.0;
	pxor	%xmm0, %xmm0	# tmp254
	movss	%xmm0, (%rax)	# tmp254, *_12
# linpackm.cpp:111:     for ( j = 0; j < N; j++ )
	movl	$0, -32(%rbp)	#, j
.L12:
# linpackm.cpp:111:     for ( j = 0; j < N; j++ )
	cmpl	$999, -32(%rbp)	#, j
	jg	.L11	#,
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movl	-28(%rbp), %eax	# i, tmp255
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-64(%rbp), %rax	# b, tmp256
	addq	%rdx, %rax	# _14, _15
	movss	(%rax), %xmm1	# *_15, _16
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movl	-32(%rbp), %eax	# j, tmp257
	imull	$1001, %eax, %edx	#, tmp257, _17
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movl	-28(%rbp), %eax	# i, tmp258
	addl	%edx, %eax	# _17, _18
	cltq
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-56(%rbp), %rax	# a, tmp259
	addq	%rdx, %rax	# _20, _21
	movss	(%rax), %xmm2	# *_21, _22
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movl	-32(%rbp), %eax	# j, tmp260
	cltq
	leaq	0(,%rax,4), %rdx	#, _24
	movq	-96(%rbp), %rax	# x, tmp261
	addq	%rdx, %rax	# _24, _25
	movss	(%rax), %xmm0	# *_25, _26
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mulss	%xmm2, %xmm0	# _22, _27
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movl	-28(%rbp), %eax	# i, tmp262
	cltq
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-64(%rbp), %rax	# b, tmp263
	addq	%rdx, %rax	# _29, _30
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	addss	%xmm1, %xmm0	# _16, _31
# linpackm.cpp:113:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movss	%xmm0, (%rax)	# _31, *_30
# linpackm.cpp:111:     for ( j = 0; j < N; j++ )
	addl	$1, -32(%rbp)	#, j
	jmp	.L12	#
.L11:
# linpackm.cpp:108:   for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L13	#
.L10:
# linpackm.cpp:116:   t1 = cpu_time ( );
	call	_Z8cpu_timev	#
	movq	%xmm0, %rax	#, tmp264
	movq	%rax, -104(%rbp)	# tmp264, t1
# linpackm.cpp:118:   info = sgefa ( a, LDA, N, ipvt );
	movq	-72(%rbp), %rdx	# ipvt, tmp265
	movq	-56(%rbp), %rax	# a, tmp266
	movq	%rdx, %rcx	# tmp265,
	movl	$1000, %edx	#,
	movl	$1001, %esi	#,
	movq	%rax, %rdi	# tmp266,
	call	_Z5sgefaPfiiPi	#
	movl	%eax, -108(%rbp)	# _214, info
# linpackm.cpp:120:   if ( info != 0 )
	cmpl	$0, -108(%rbp)	#, info
	je	.L14	#,
# linpackm.cpp:122:     cout << "\n";
	movl	$.LC4, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:123:     cout << "LINPACK_BENCH_S - Fatal error!\n";
	movl	$.LC5, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:124:     cout << "  The matrix A is apparently singular.\n";
	movl	$.LC6, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:125:     cout << "  Abnormal end of execution.\n";
	movl	$.LC7, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:126:     return 1;
	movl	$1, %eax	#, _150
	jmp	.L40	#
.L14:
# linpackm.cpp:129:   t2 = cpu_time ( );
	call	_Z8cpu_timev	#
	movq	%xmm0, %rax	#, tmp267
	movq	%rax, -120(%rbp)	# tmp267, t2
# linpackm.cpp:130:   time[0] = t2 - t1;
	movsd	-120(%rbp), %xmm0	# t2, tmp268
	subsd	-104(%rbp), %xmm0	# t1, _32
# linpackm.cpp:130:   time[0] = t2 - t1;
	movsd	%xmm0, -192(%rbp)	# _32, time
# linpackm.cpp:132:   t1 = cpu_time ( );
	call	_Z8cpu_timev	#
	movq	%xmm0, %rax	#, tmp269
	movq	%rax, -104(%rbp)	# tmp269, t1
# linpackm.cpp:134:   job = 0;
	movl	$0, -124(%rbp)	#, job
# linpackm.cpp:135:   sgesl ( a, LDA, N, ipvt, b, job );
	movl	-124(%rbp), %esi	# job, tmp270
	movq	-64(%rbp), %rcx	# b, tmp271
	movq	-72(%rbp), %rdx	# ipvt, tmp272
	movq	-56(%rbp), %rax	# a, tmp273
	movl	%esi, %r9d	# tmp270,
	movq	%rcx, %r8	# tmp271,
	movq	%rdx, %rcx	# tmp272,
	movl	$1000, %edx	#,
	movl	$1001, %esi	#,
	movq	%rax, %rdi	# tmp273,
	call	_Z5sgeslPfiiPiS_i	#
# linpackm.cpp:137:   t2 = cpu_time ( );
	call	_Z8cpu_timev	#
	movq	%xmm0, %rax	#, tmp274
	movq	%rax, -120(%rbp)	# tmp274, t2
# linpackm.cpp:138:   time[1] = t2 - t1;
	movsd	-120(%rbp), %xmm0	# t2, tmp275
	subsd	-104(%rbp), %xmm0	# t1, _33
# linpackm.cpp:138:   time[1] = t2 - t1;
	movsd	%xmm0, -184(%rbp)	# _33, time
# linpackm.cpp:140:   total = time[0] + time[1];
	movsd	-192(%rbp), %xmm1	# time, _34
# linpackm.cpp:140:   total = time[0] + time[1];
	movsd	-184(%rbp), %xmm0	# time, _35
# linpackm.cpp:140:   total = time[0] + time[1];
	addsd	%xmm1, %xmm0	# _34, _36
# linpackm.cpp:140:   total = time[0] + time[1];
	cvtsd2ss	%xmm0, %xmm3	# _36, tmp334
	movss	%xmm3, -128(%rbp)	# tmp334, total
# linpackm.cpp:142:   delete [] a;
	cmpq	$0, -56(%rbp)	#, a
	je	.L16	#,
# linpackm.cpp:142:   delete [] a;
	movq	-56(%rbp), %rax	# a, tmp276
	movq	%rax, %rdi	# tmp276,
	call	_ZdaPv	#
.L16:
# linpackm.cpp:146:   a = r4mat_gen ( LDA, N );
	movl	$1000, %esi	#,
	movl	$1001, %edi	#,
	call	_Z9r4mat_genii	#
	movq	%rax, -56(%rbp)	# _234, a
# linpackm.cpp:148:   for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L18:
# linpackm.cpp:148:   for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L17	#,
# linpackm.cpp:150:     x[i] = 1.0;
	movl	-28(%rbp), %eax	# i, tmp277
	cltq
	leaq	0(,%rax,4), %rdx	#, _38
	movq	-96(%rbp), %rax	# x, tmp278
	addq	%rdx, %rax	# _38, _39
# linpackm.cpp:150:     x[i] = 1.0;
	movss	.LC3(%rip), %xmm0	#, tmp279
	movss	%xmm0, (%rax)	# tmp279, *_39
# linpackm.cpp:148:   for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L18	#
.L17:
# linpackm.cpp:153:   for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L22:
# linpackm.cpp:153:   for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L19	#,
# linpackm.cpp:155:     rhs[i] = 0.0;
	movl	-28(%rbp), %eax	# i, tmp280
	cltq
	leaq	0(,%rax,4), %rdx	#, _41
	movq	-88(%rbp), %rax	# rhs, tmp281
	addq	%rdx, %rax	# _41, _42
# linpackm.cpp:155:     rhs[i] = 0.0;
	pxor	%xmm0, %xmm0	# tmp282
	movss	%xmm0, (%rax)	# tmp282, *_42
# linpackm.cpp:156:     for ( j = 0; j < N; j++ )
	movl	$0, -32(%rbp)	#, j
.L21:
# linpackm.cpp:156:     for ( j = 0; j < N; j++ )
	cmpl	$999, -32(%rbp)	#, j
	jg	.L20	#,
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movl	-28(%rbp), %eax	# i, tmp283
	cltq
	leaq	0(,%rax,4), %rdx	#, _44
	movq	-88(%rbp), %rax	# rhs, tmp284
	addq	%rdx, %rax	# _44, _45
	movss	(%rax), %xmm1	# *_45, _46
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movl	-32(%rbp), %eax	# j, tmp285
	imull	$1001, %eax, %edx	#, tmp285, _47
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movl	-28(%rbp), %eax	# i, tmp286
	addl	%edx, %eax	# _47, _48
	cltq
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	leaq	0(,%rax,4), %rdx	#, _50
	movq	-56(%rbp), %rax	# a, tmp287
	addq	%rdx, %rax	# _50, _51
	movss	(%rax), %xmm2	# *_51, _52
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movl	-32(%rbp), %eax	# j, tmp288
	cltq
	leaq	0(,%rax,4), %rdx	#, _54
	movq	-96(%rbp), %rax	# x, tmp289
	addq	%rdx, %rax	# _54, _55
	movss	(%rax), %xmm0	# *_55, _56
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mulss	%xmm2, %xmm0	# _52, _57
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movl	-28(%rbp), %eax	# i, tmp290
	cltq
	leaq	0(,%rax,4), %rdx	#, _59
	movq	-88(%rbp), %rax	# rhs, tmp291
	addq	%rdx, %rax	# _59, _60
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	addss	%xmm1, %xmm0	# _46, _61
# linpackm.cpp:158:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movss	%xmm0, (%rax)	# _61, *_60
# linpackm.cpp:156:     for ( j = 0; j < N; j++ )
	addl	$1, -32(%rbp)	#, j
	jmp	.L21	#
.L20:
# linpackm.cpp:153:   for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L22	#
.L19:
# linpackm.cpp:162:   for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L26:
# linpackm.cpp:162:   for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L23	#,
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movl	-28(%rbp), %eax	# i, tmp292
	cltq
	leaq	0(,%rax,4), %rdx	#, _63
	movq	-88(%rbp), %rax	# rhs, tmp293
	addq	%rdx, %rax	# _63, _64
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movss	(%rax), %xmm0	# *_64, _65
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movl	-28(%rbp), %eax	# i, tmp294
	cltq
	leaq	0(,%rax,4), %rdx	#, _67
	movq	-80(%rbp), %rax	# resid, tmp295
	addq	%rdx, %rax	# _67, _68
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movss	.LC8(%rip), %xmm1	#, tmp296
	xorps	%xmm1, %xmm0	# tmp296, _69
# linpackm.cpp:164:     resid[i] = -rhs[i];
	movss	%xmm0, (%rax)	# _69, *_68
# linpackm.cpp:165:     for ( j = 0; j < N; j++ )
	movl	$0, -32(%rbp)	#, j
.L25:
# linpackm.cpp:165:     for ( j = 0; j < N; j++ )
	cmpl	$999, -32(%rbp)	#, j
	jg	.L24	#,
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movl	-28(%rbp), %eax	# i, tmp297
	cltq
	leaq	0(,%rax,4), %rdx	#, _71
	movq	-80(%rbp), %rax	# resid, tmp298
	addq	%rdx, %rax	# _71, _72
	movss	(%rax), %xmm1	# *_72, _73
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movl	-32(%rbp), %eax	# j, tmp299
	imull	$1001, %eax, %edx	#, tmp299, _74
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movl	-28(%rbp), %eax	# i, tmp300
	addl	%edx, %eax	# _74, _75
	cltq
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	leaq	0(,%rax,4), %rdx	#, _77
	movq	-56(%rbp), %rax	# a, tmp301
	addq	%rdx, %rax	# _77, _78
	movss	(%rax), %xmm2	# *_78, _79
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movl	-32(%rbp), %eax	# j, tmp302
	cltq
	leaq	0(,%rax,4), %rdx	#, _81
	movq	-64(%rbp), %rax	# b, tmp303
	addq	%rdx, %rax	# _81, _82
	movss	(%rax), %xmm0	# *_82, _83
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mulss	%xmm2, %xmm0	# _79, _84
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movl	-28(%rbp), %eax	# i, tmp304
	cltq
	leaq	0(,%rax,4), %rdx	#, _86
	movq	-80(%rbp), %rax	# resid, tmp305
	addq	%rdx, %rax	# _86, _87
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	addss	%xmm1, %xmm0	# _73, _88
# linpackm.cpp:167:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movss	%xmm0, (%rax)	# _88, *_87
# linpackm.cpp:165:     for ( j = 0; j < N; j++ )
	addl	$1, -32(%rbp)	#, j
	jmp	.L25	#
.L24:
# linpackm.cpp:162:   for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L26	#
.L23:
# linpackm.cpp:171:   resid_max = 0.0;
	pxor	%xmm0, %xmm0	# tmp306
	movss	%xmm0, -36(%rbp)	# tmp306, resid_max
# linpackm.cpp:172:   for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L28:
# linpackm.cpp:172:   for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L27	#,
# linpackm.cpp:174:     resid_max = r4_max ( resid_max, r4_abs ( resid[i] ) );
	movl	-28(%rbp), %eax	# i, tmp307
	cltq
	leaq	0(,%rax,4), %rdx	#, _90
	movq	-80(%rbp), %rax	# resid, tmp308
	addq	%rdx, %rax	# _90, _91
# linpackm.cpp:174:     resid_max = r4_max ( resid_max, r4_abs ( resid[i] ) );
	movss	(%rax), %xmm0	# *_91, _92
	call	_Z6r4_absf	#
	movaps	%xmm0, %xmm1	#, _93
	movss	-36(%rbp), %xmm0	# resid_max, tmp309
	call	_Z6r4_maxff	#
	movd	%xmm0, %eax	#, tmp310
	movl	%eax, -36(%rbp)	# tmp310, resid_max
# linpackm.cpp:172:   for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L28	#
.L27:
# linpackm.cpp:177:   b_max = 0.0;
	pxor	%xmm0, %xmm0	# tmp311
	movss	%xmm0, -24(%rbp)	# tmp311, b_max
# linpackm.cpp:178:   for ( i = 0; i < N; i++ )
	movl	$0, -28(%rbp)	#, i
.L30:
# linpackm.cpp:178:   for ( i = 0; i < N; i++ )
	cmpl	$999, -28(%rbp)	#, i
	jg	.L29	#,
# linpackm.cpp:180:     b_max = r4_max ( b_max, r4_abs ( b[i] ) );
	movl	-28(%rbp), %eax	# i, tmp312
	cltq
	leaq	0(,%rax,4), %rdx	#, _95
	movq	-64(%rbp), %rax	# b, tmp313
	addq	%rdx, %rax	# _95, _96
# linpackm.cpp:180:     b_max = r4_max ( b_max, r4_abs ( b[i] ) );
	movss	(%rax), %xmm0	# *_96, _97
	call	_Z6r4_absf	#
	movaps	%xmm0, %xmm1	#, _98
	movss	-24(%rbp), %xmm0	# b_max, tmp314
	call	_Z6r4_maxff	#
	movd	%xmm0, %eax	#, tmp315
	movl	%eax, -24(%rbp)	# tmp315, b_max
# linpackm.cpp:178:   for ( i = 0; i < N; i++ )
	addl	$1, -28(%rbp)	#, i
	jmp	.L30	#
.L29:
# linpackm.cpp:183:   eps = r4_epsilon ( );
	call	_Z10r4_epsilonv	#
	movd	%xmm0, %eax	#, tmp316
	movl	%eax, -132(%rbp)	# tmp316, eps
# linpackm.cpp:185:   residn = resid_max /  ( ( float ) N * a_max * b_max * eps );
	movss	-20(%rbp), %xmm1	# a_max, tmp317
	movss	.LC9(%rip), %xmm0	#, tmp318
	mulss	%xmm1, %xmm0	# tmp317, _99
# linpackm.cpp:185:   residn = resid_max /  ( ( float ) N * a_max * b_max * eps );
	mulss	-24(%rbp), %xmm0	# b_max, _100
# linpackm.cpp:185:   residn = resid_max /  ( ( float ) N * a_max * b_max * eps );
	movaps	%xmm0, %xmm1	# _100, _100
	mulss	-132(%rbp), %xmm1	# eps, _100
# linpackm.cpp:185:   residn = resid_max /  ( ( float ) N * a_max * b_max * eps );
	movss	-36(%rbp), %xmm0	# resid_max, tmp320
	divss	%xmm1, %xmm0	# _101, tmp319
	movss	%xmm0, -136(%rbp)	# tmp319, residn
# linpackm.cpp:187:   time[2] = total;
	cvtss2sd	-128(%rbp), %xmm0	# total, _102
	movsd	%xmm0, -176(%rbp)	# _102, time
# linpackm.cpp:188:   if ( 0.0 < total )
	movss	-128(%rbp), %xmm0	# total, tmp321
	pxor	%xmm1, %xmm1	# tmp322
	comiss	%xmm1, %xmm0	# tmp322, tmp321
	jbe	.L42	#,
# linpackm.cpp:190:     time[3] = ops / ( 1.0E+06 * total );
	cvtss2sd	-44(%rbp), %xmm0	# ops, _103
# linpackm.cpp:190:     time[3] = ops / ( 1.0E+06 * total );
	cvtss2sd	-128(%rbp), %xmm2	# total, _104
	movsd	.LC10(%rip), %xmm1	#, tmp323
	mulsd	%xmm2, %xmm1	# _104, _105
# linpackm.cpp:190:     time[3] = ops / ( 1.0E+06 * total );
	divsd	%xmm1, %xmm0	# _105, _106
# linpackm.cpp:190:     time[3] = ops / ( 1.0E+06 * total );
	movsd	%xmm0, -168(%rbp)	# _106, time
	jmp	.L33	#
.L42:
# linpackm.cpp:194:     time[3] = -1.0;
	movsd	.LC11(%rip), %xmm0	#, tmp324
	movsd	%xmm0, -168(%rbp)	# tmp324, time
.L33:
# linpackm.cpp:196:   time[4] = 2.0 / time[3];
	movsd	-168(%rbp), %xmm1	# time, _107
# linpackm.cpp:196:   time[4] = 2.0 / time[3];
	movsd	.LC12(%rip), %xmm0	#, tmp325
	divsd	%xmm1, %xmm0	# _107, _108
# linpackm.cpp:196:   time[4] = 2.0 / time[3];
	movsd	%xmm0, -160(%rbp)	# _108, time
# linpackm.cpp:197:   time[5] = total / cray;
	movss	-128(%rbp), %xmm0	# total, tmp326
	divss	-40(%rbp), %xmm0	# cray, _109
	cvtss2sd	%xmm0, %xmm0	# _109, _110
# linpackm.cpp:197:   time[5] = total / cray;
	movsd	%xmm0, -152(%rbp)	# _110, time
# linpackm.cpp:208:   cout << setw(9) << time[0] << "  "
	movl	$9, %edi	#,
	call	_ZSt4setwi	#
	movl	%eax, %esi	# D.55976,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw	#
# linpackm.cpp:208:   cout << setw(9) << time[0] << "  "
	movsd	-192(%rbp), %xmm0	# time, _112
	movq	%rax, %rdi	# _111,
	call	_ZNSolsEd	#
# linpackm.cpp:209:        << setw(9) << time[1] << "  "
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# _113,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movq	%rax, %rbx	#, _114
	movl	$9, %edi	#,
	call	_ZSt4setwi	#
	movl	%eax, %esi	# D.55977,
	movq	%rbx, %rdi	# _114,
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw	#
# linpackm.cpp:209:        << setw(9) << time[1] << "  "
	movsd	-184(%rbp), %xmm0	# time, _116
	movq	%rax, %rdi	# _115,
	call	_ZNSolsEd	#
# linpackm.cpp:210:        << setw(9) << time[2] << "  "
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# _117,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movq	%rax, %rbx	#, _118
	movl	$9, %edi	#,
	call	_ZSt4setwi	#
	movl	%eax, %esi	# D.55978,
	movq	%rbx, %rdi	# _118,
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw	#
# linpackm.cpp:210:        << setw(9) << time[2] << "  "
	movsd	-176(%rbp), %xmm0	# time, _120
	movq	%rax, %rdi	# _119,
	call	_ZNSolsEd	#
# linpackm.cpp:211:        << setw(9) << time[3] << "  "
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# _121,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movq	%rax, %rbx	#, _122
	movl	$9, %edi	#,
	call	_ZSt4setwi	#
	movl	%eax, %esi	# D.55979,
	movq	%rbx, %rdi	# _122,
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw	#
# linpackm.cpp:211:        << setw(9) << time[3] << "  "
	movsd	-168(%rbp), %xmm0	# time, _124
	movq	%rax, %rdi	# _123,
	call	_ZNSolsEd	#
# linpackm.cpp:212:        << setw(9) << time[4] << "  "
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# _125,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movq	%rax, %rbx	#, _126
	movl	$9, %edi	#,
	call	_ZSt4setwi	#
	movl	%eax, %esi	# D.55980,
	movq	%rbx, %rdi	# _126,
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw	#
# linpackm.cpp:212:        << setw(9) << time[4] << "  "
	movsd	-160(%rbp), %xmm0	# time, _128
	movq	%rax, %rdi	# _127,
	call	_ZNSolsEd	#
# linpackm.cpp:213:        << setw(9) << time[5] << "\n";
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# _129,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movq	%rax, %rbx	#, _130
	movl	$9, %edi	#,
	call	_ZSt4setwi	#
	movl	%eax, %esi	# D.55981,
	movq	%rbx, %rdi	# _130,
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw	#
# linpackm.cpp:213:        << setw(9) << time[5] << "\n";
	movsd	-152(%rbp), %xmm0	# time, _132
	movq	%rax, %rdi	# _131,
	call	_ZNSolsEd	#
# linpackm.cpp:213:        << setw(9) << time[5] << "\n";
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# _133,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# linpackm.cpp:215:   delete [] a;
	cmpq	$0, -56(%rbp)	#, a
	je	.L34	#,
# linpackm.cpp:215:   delete [] a;
	movq	-56(%rbp), %rax	# a, tmp327
	movq	%rax, %rdi	# tmp327,
	call	_ZdaPv	#
.L34:
# linpackm.cpp:216:   delete [] b;
	cmpq	$0, -64(%rbp)	#, b
	je	.L35	#,
# linpackm.cpp:216:   delete [] b;
	movq	-64(%rbp), %rax	# b, tmp328
	movq	%rax, %rdi	# tmp328,
	call	_ZdaPv	#
.L35:
# linpackm.cpp:217:   delete [] ipvt;
	cmpq	$0, -72(%rbp)	#, ipvt
	je	.L36	#,
# linpackm.cpp:217:   delete [] ipvt;
	movq	-72(%rbp), %rax	# ipvt, tmp329
	movq	%rax, %rdi	# tmp329,
	call	_ZdaPv	#
.L36:
# linpackm.cpp:218:   delete [] resid;
	cmpq	$0, -80(%rbp)	#, resid
	je	.L37	#,
# linpackm.cpp:218:   delete [] resid;
	movq	-80(%rbp), %rax	# resid, tmp330
	movq	%rax, %rdi	# tmp330,
	call	_ZdaPv	#
.L37:
# linpackm.cpp:219:   delete [] rhs;
	cmpq	$0, -88(%rbp)	#, rhs
	je	.L38	#,
# linpackm.cpp:219:   delete [] rhs;
	movq	-88(%rbp), %rax	# rhs, tmp331
	movq	%rax, %rdi	# tmp331,
	call	_ZdaPv	#
.L38:
# linpackm.cpp:220:   delete [] x;
	cmpq	$0, -96(%rbp)	#, x
	je	.L39	#,
# linpackm.cpp:220:   delete [] x;
	movq	-96(%rbp), %rax	# x, tmp332
	movq	%rax, %rdi	# tmp332,
	call	_ZdaPv	#
.L39:
# linpackm.cpp:227:   timestamp ( );
	call	_Z9timestampv	#
# linpackm.cpp:229:   return 0;
	movl	$0, %eax	#, _150
.L40:
# linpackm.cpp:232: }
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2333:
	.size	main, .-main
	.globl	_Z8cpu_timev
	.type	_Z8cpu_timev, @function
_Z8cpu_timev:
.LFB2334:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# linpackm.cpp:268:   value = ( double ) clock ( ) 
	call	clock	#
# linpackm.cpp:268:   value = ( double ) clock ( ) 
	cvtsi2sdq	%rax, %xmm0	# _1, _2
# linpackm.cpp:268:   value = ( double ) clock ( ) 
	movsd	.LC10(%rip), %xmm1	#, tmp92
	divsd	%xmm1, %xmm0	# tmp92, tmp91
	movsd	%xmm0, -8(%rbp)	# tmp91, value
# linpackm.cpp:271:   return value;
	movsd	-8(%rbp), %xmm0	# value, _6
# linpackm.cpp:272: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2334:
	.size	_Z8cpu_timev, .-_Z8cpu_timev
	.globl	_Z5saxpyifPfiS_i
	.type	_Z5saxpyifPfiS_i, @function
_Z5saxpyifPfiS_i:
.LFB2335:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	movss	%xmm0, -24(%rbp)	# da, da
	movq	%rsi, -32(%rbp)	# dx, dx
	movl	%edx, -36(%rbp)	# incx, incx
	movq	%rcx, -48(%rbp)	# dy, dy
	movl	%r8d, -40(%rbp)	# incy, incy
# linpackm.cpp:328:   if ( n <= 0 )
	cmpl	$0, -20(%rbp)	#, n
	jle	.L62	#,
# linpackm.cpp:333:   if ( da == 0.0 )
	pxor	%xmm0, %xmm0	# tmp176
	ucomiss	-24(%rbp), %xmm0	# da, tmp176
	jp	.L48	#,
	pxor	%xmm0, %xmm0	# tmp177
	ucomiss	-24(%rbp), %xmm0	# da, tmp177
	je	.L63	#,
.L48:
# linpackm.cpp:341:   if ( incx != 1 || incy != 1 )
	cmpl	$1, -36(%rbp)	#, incx
	jne	.L50	#,
# linpackm.cpp:341:   if ( incx != 1 || incy != 1 )
	cmpl	$1, -40(%rbp)	#, incy
	je	.L51	#,
.L50:
# linpackm.cpp:343:     if ( 0 <= incx )
	cmpl	$0, -36(%rbp)	#, incx
	js	.L52	#,
# linpackm.cpp:345:       ix = 0;
	movl	$0, -8(%rbp)	#, ix
	jmp	.L53	#
.L52:
# linpackm.cpp:349:       ix = ( - n + 1 ) * incx;
	movl	$1, %eax	#, tmp178
	subl	-20(%rbp), %eax	# n, _1
# linpackm.cpp:349:       ix = ( - n + 1 ) * incx;
	movl	-36(%rbp), %edx	# incx, tmp180
	imull	%edx, %eax	# tmp180, tmp179
	movl	%eax, -8(%rbp)	# tmp179, ix
.L53:
# linpackm.cpp:352:     if ( 0 <= incy )
	cmpl	$0, -40(%rbp)	#, incy
	js	.L54	#,
# linpackm.cpp:354:       iy = 0;
	movl	$0, -12(%rbp)	#, iy
	jmp	.L55	#
.L54:
# linpackm.cpp:358:       iy = ( - n + 1 ) * incy;
	movl	$1, %eax	#, tmp181
	subl	-20(%rbp), %eax	# n, _2
# linpackm.cpp:358:       iy = ( - n + 1 ) * incy;
	movl	-40(%rbp), %edx	# incy, tmp183
	imull	%edx, %eax	# tmp183, tmp182
	movl	%eax, -12(%rbp)	# tmp182, iy
.L55:
# linpackm.cpp:361:     for ( i = 0; i < n; i++ )
	movl	$0, -4(%rbp)	#, i
.L57:
# linpackm.cpp:361:     for ( i = 0; i < n; i++ )
	movl	-4(%rbp), %eax	# i, tmp184
	cmpl	-20(%rbp), %eax	# n, tmp184
	jge	.L64	#,
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	movl	-12(%rbp), %eax	# iy, tmp185
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-48(%rbp), %rax	# dy, tmp186
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm1	# *_5, _6
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	movl	-8(%rbp), %eax	# ix, tmp187
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-32(%rbp), %rax	# dx, tmp188
	addq	%rdx, %rax	# _8, _9
	movss	(%rax), %xmm0	# *_9, _10
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	mulss	-24(%rbp), %xmm0	# da, _11
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	movl	-12(%rbp), %eax	# iy, tmp189
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-48(%rbp), %rax	# dy, tmp190
	addq	%rdx, %rax	# _13, _14
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	addss	%xmm1, %xmm0	# _6, _15
# linpackm.cpp:363:       dy[iy] = dy[iy] + da * dx[ix];
	movss	%xmm0, (%rax)	# _15, *_14
# linpackm.cpp:364:       ix = ix + incx;
	movl	-36(%rbp), %eax	# incx, tmp191
	addl	%eax, -8(%rbp)	# tmp191, ix
# linpackm.cpp:365:       iy = iy + incy;
	movl	-40(%rbp), %eax	# incy, tmp192
	addl	%eax, -12(%rbp)	# tmp192, iy
# linpackm.cpp:361:     for ( i = 0; i < n; i++ )
	addl	$1, -4(%rbp)	#, i
	jmp	.L57	#
.L51:
# linpackm.cpp:373:     m = n % 4;
	movl	-20(%rbp), %eax	# n, tmp194
	cltd
	shrl	$30, %edx	#, tmp196
	addl	%edx, %eax	# tmp196, tmp197
	andl	$3, %eax	#, tmp198
	subl	%edx, %eax	# tmp196, tmp199
	movl	%eax, -16(%rbp)	# tmp199, m
# linpackm.cpp:375:     for ( i = 0; i < m; i++ )
	movl	$0, -4(%rbp)	#, i
.L60:
# linpackm.cpp:375:     for ( i = 0; i < m; i++ )
	movl	-4(%rbp), %eax	# i, tmp200
	cmpl	-16(%rbp), %eax	# m, tmp200
	jge	.L59	#,
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	movl	-4(%rbp), %eax	# i, tmp201
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-48(%rbp), %rax	# dy, tmp202
	addq	%rdx, %rax	# _17, _18
	movss	(%rax), %xmm1	# *_18, _19
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	movl	-4(%rbp), %eax	# i, tmp203
	cltq
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-32(%rbp), %rax	# dx, tmp204
	addq	%rdx, %rax	# _21, _22
	movss	(%rax), %xmm0	# *_22, _23
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	mulss	-24(%rbp), %xmm0	# da, _24
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	movl	-4(%rbp), %eax	# i, tmp205
	cltq
	leaq	0(,%rax,4), %rdx	#, _26
	movq	-48(%rbp), %rax	# dy, tmp206
	addq	%rdx, %rax	# _26, _27
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	addss	%xmm1, %xmm0	# _19, _28
# linpackm.cpp:377:       dy[i] = dy[i] + da * dx[i];
	movss	%xmm0, (%rax)	# _28, *_27
# linpackm.cpp:375:     for ( i = 0; i < m; i++ )
	addl	$1, -4(%rbp)	#, i
	jmp	.L60	#
.L59:
# linpackm.cpp:380:     for ( i = m; i < n; i = i + 4 )
	movl	-16(%rbp), %eax	# m, tmp207
	movl	%eax, -4(%rbp)	# tmp207, i
.L61:
# linpackm.cpp:380:     for ( i = m; i < n; i = i + 4 )
	movl	-4(%rbp), %eax	# i, tmp208
	cmpl	-20(%rbp), %eax	# n, tmp208
	jge	.L65	#,
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movl	-4(%rbp), %eax	# i, tmp209
	cltq
	leaq	0(,%rax,4), %rdx	#, _30
	movq	-48(%rbp), %rax	# dy, tmp210
	addq	%rdx, %rax	# _30, _31
	movss	(%rax), %xmm1	# *_31, _32
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movl	-4(%rbp), %eax	# i, tmp211
	cltq
	leaq	0(,%rax,4), %rdx	#, _34
	movq	-32(%rbp), %rax	# dx, tmp212
	addq	%rdx, %rax	# _34, _35
	movss	(%rax), %xmm0	# *_35, _36
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mulss	-24(%rbp), %xmm0	# da, _37
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movl	-4(%rbp), %eax	# i, tmp213
	cltq
	leaq	0(,%rax,4), %rdx	#, _39
	movq	-48(%rbp), %rax	# dy, tmp214
	addq	%rdx, %rax	# _39, _40
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	addss	%xmm1, %xmm0	# _32, _41
# linpackm.cpp:382:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movss	%xmm0, (%rax)	# _41, *_40
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movl	-4(%rbp), %eax	# i, tmp215
	cltq
	addq	$1, %rax	#, _43
	leaq	0(,%rax,4), %rdx	#, _44
	movq	-48(%rbp), %rax	# dy, tmp216
	addq	%rdx, %rax	# _44, _45
	movss	(%rax), %xmm1	# *_45, _46
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movl	-4(%rbp), %eax	# i, tmp217
	cltq
	addq	$1, %rax	#, _48
	leaq	0(,%rax,4), %rdx	#, _49
	movq	-32(%rbp), %rax	# dx, tmp218
	addq	%rdx, %rax	# _49, _50
	movss	(%rax), %xmm0	# *_50, _51
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mulss	-24(%rbp), %xmm0	# da, _52
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movl	-4(%rbp), %eax	# i, tmp219
	cltq
	addq	$1, %rax	#, _54
	leaq	0(,%rax,4), %rdx	#, _55
	movq	-48(%rbp), %rax	# dy, tmp220
	addq	%rdx, %rax	# _55, _56
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	addss	%xmm1, %xmm0	# _46, _57
# linpackm.cpp:383:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movss	%xmm0, (%rax)	# _57, *_56
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movl	-4(%rbp), %eax	# i, tmp221
	cltq
	addq	$2, %rax	#, _59
	leaq	0(,%rax,4), %rdx	#, _60
	movq	-48(%rbp), %rax	# dy, tmp222
	addq	%rdx, %rax	# _60, _61
	movss	(%rax), %xmm1	# *_61, _62
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movl	-4(%rbp), %eax	# i, tmp223
	cltq
	addq	$2, %rax	#, _64
	leaq	0(,%rax,4), %rdx	#, _65
	movq	-32(%rbp), %rax	# dx, tmp224
	addq	%rdx, %rax	# _65, _66
	movss	(%rax), %xmm0	# *_66, _67
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mulss	-24(%rbp), %xmm0	# da, _68
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movl	-4(%rbp), %eax	# i, tmp225
	cltq
	addq	$2, %rax	#, _70
	leaq	0(,%rax,4), %rdx	#, _71
	movq	-48(%rbp), %rax	# dy, tmp226
	addq	%rdx, %rax	# _71, _72
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	addss	%xmm1, %xmm0	# _62, _73
# linpackm.cpp:384:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movss	%xmm0, (%rax)	# _73, *_72
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movl	-4(%rbp), %eax	# i, tmp227
	cltq
	addq	$3, %rax	#, _75
	leaq	0(,%rax,4), %rdx	#, _76
	movq	-48(%rbp), %rax	# dy, tmp228
	addq	%rdx, %rax	# _76, _77
	movss	(%rax), %xmm1	# *_77, _78
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movl	-4(%rbp), %eax	# i, tmp229
	cltq
	addq	$3, %rax	#, _80
	leaq	0(,%rax,4), %rdx	#, _81
	movq	-32(%rbp), %rax	# dx, tmp230
	addq	%rdx, %rax	# _81, _82
	movss	(%rax), %xmm0	# *_82, _83
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mulss	-24(%rbp), %xmm0	# da, _84
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movl	-4(%rbp), %eax	# i, tmp231
	cltq
	addq	$3, %rax	#, _86
	leaq	0(,%rax,4), %rdx	#, _87
	movq	-48(%rbp), %rax	# dy, tmp232
	addq	%rdx, %rax	# _87, _88
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	addss	%xmm1, %xmm0	# _78, _89
# linpackm.cpp:385:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movss	%xmm0, (%rax)	# _89, *_88
# linpackm.cpp:380:     for ( i = m; i < n; i = i + 4 )
	addl	$4, -4(%rbp)	#, i
# linpackm.cpp:380:     for ( i = m; i < n; i = i + 4 )
	jmp	.L61	#
.L64:
# linpackm.cpp:341:   if ( incx != 1 || incy != 1 )
	nop	
# linpackm.cpp:390:   return;
	nop	
	jmp	.L65	#
.L62:
# linpackm.cpp:330:     return;
	nop	
	jmp	.L45	#
.L63:
# linpackm.cpp:335:     return;
	nop	
	jmp	.L45	#
.L65:
# linpackm.cpp:390:   return;
	nop	
.L45:
# linpackm.cpp:391: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2335:
	.size	_Z5saxpyifPfiS_i, .-_Z5saxpyifPfiS_i
	.globl	_Z4sdotiPfiS_i
	.type	_Z4sdotiPfiS_i, @function
_Z4sdotiPfiS_i:
.LFB2336:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# n, n
	movq	%rsi, -48(%rbp)	# dx, dx
	movl	%edx, -40(%rbp)	# incx, incx
	movq	%rcx, -56(%rbp)	# dy, dy
	movl	%r8d, -60(%rbp)	# incy, incy
# linpackm.cpp:448:   dtemp = 0.0;
	pxor	%xmm0, %xmm0	# tmp166
	movss	%xmm0, -4(%rbp)	# tmp166, dtemp
# linpackm.cpp:450:   if ( n <= 0 )
	cmpl	$0, -36(%rbp)	#, n
	jg	.L67	#,
# linpackm.cpp:452:     return dtemp;
	movss	-4(%rbp), %xmm0	# dtemp, _89
	jmp	.L68	#
.L67:
# linpackm.cpp:458:   if ( incx != 1 || incy != 1 )
	cmpl	$1, -40(%rbp)	#, incx
	jne	.L69	#,
# linpackm.cpp:458:   if ( incx != 1 || incy != 1 )
	cmpl	$1, -60(%rbp)	#, incy
	je	.L70	#,
.L69:
# linpackm.cpp:460:     if ( 0 <= incx )
	cmpl	$0, -40(%rbp)	#, incx
	js	.L71	#,
# linpackm.cpp:462:       ix = 0;
	movl	$0, -12(%rbp)	#, ix
	jmp	.L72	#
.L71:
# linpackm.cpp:466:       ix = ( - n + 1 ) * incx;
	movl	$1, %eax	#, tmp167
	subl	-36(%rbp), %eax	# n, _1
# linpackm.cpp:466:       ix = ( - n + 1 ) * incx;
	movl	-40(%rbp), %edx	# incx, tmp169
	imull	%edx, %eax	# tmp169, tmp168
	movl	%eax, -12(%rbp)	# tmp168, ix
.L72:
# linpackm.cpp:469:     if ( 0 <= incy )
	cmpl	$0, -60(%rbp)	#, incy
	js	.L73	#,
# linpackm.cpp:471:       iy = 0;
	movl	$0, -16(%rbp)	#, iy
	jmp	.L74	#
.L73:
# linpackm.cpp:475:       iy = ( - n + 1 ) * incy;
	movl	$1, %eax	#, tmp170
	subl	-36(%rbp), %eax	# n, _2
# linpackm.cpp:475:       iy = ( - n + 1 ) * incy;
	movl	-60(%rbp), %edx	# incy, tmp172
	imull	%edx, %eax	# tmp172, tmp171
	movl	%eax, -16(%rbp)	# tmp171, iy
.L74:
# linpackm.cpp:478:     for ( i = 0; i < n; i++ )
	movl	$0, -8(%rbp)	#, i
.L76:
# linpackm.cpp:478:     for ( i = 0; i < n; i++ )
	movl	-8(%rbp), %eax	# i, tmp173
	cmpl	-36(%rbp), %eax	# n, tmp173
	jge	.L81	#,
# linpackm.cpp:480:       dtemp = dtemp + dx[ix] * dy[iy];
	movl	-12(%rbp), %eax	# ix, tmp174
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-48(%rbp), %rax	# dx, tmp175
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm1	# *_5, _6
# linpackm.cpp:480:       dtemp = dtemp + dx[ix] * dy[iy];
	movl	-16(%rbp), %eax	# iy, tmp176
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-56(%rbp), %rax	# dy, tmp177
	addq	%rdx, %rax	# _8, _9
	movss	(%rax), %xmm0	# *_9, _10
# linpackm.cpp:480:       dtemp = dtemp + dx[ix] * dy[iy];
	mulss	%xmm1, %xmm0	# _6, _11
# linpackm.cpp:480:       dtemp = dtemp + dx[ix] * dy[iy];
	movss	-4(%rbp), %xmm1	# dtemp, tmp179
	addss	%xmm1, %xmm0	# tmp179, tmp178
	movss	%xmm0, -4(%rbp)	# tmp178, dtemp
# linpackm.cpp:481:       ix = ix + incx;
	movl	-40(%rbp), %eax	# incx, tmp180
	addl	%eax, -12(%rbp)	# tmp180, ix
# linpackm.cpp:482:       iy = iy + incy;
	movl	-60(%rbp), %eax	# incy, tmp181
	addl	%eax, -16(%rbp)	# tmp181, iy
# linpackm.cpp:478:     for ( i = 0; i < n; i++ )
	addl	$1, -8(%rbp)	#, i
	jmp	.L76	#
.L70:
# linpackm.cpp:490:     m = n % 5;
	movl	-36(%rbp), %ecx	# n, tmp183
	movl	$1717986919, %edx	#, tmp185
	movl	%ecx, %eax	# tmp183, tmp221
	imull	%edx	# tmp185
	sarl	%edx	# tmp186
	movl	%ecx, %eax	# tmp183, tmp187
	sarl	$31, %eax	#, tmp187
	subl	%eax, %edx	# tmp187, tmp182
	movl	%edx, %eax	# tmp182, tmp188
	sall	$2, %eax	#, tmp188
	addl	%edx, %eax	# tmp182, tmp188
	subl	%eax, %ecx	# tmp188, tmp183
	movl	%ecx, %eax	# tmp183, tmp189
	movl	%eax, -20(%rbp)	# tmp189, m
# linpackm.cpp:492:     for ( i = 0; i < m; i++ )
	movl	$0, -8(%rbp)	#, i
.L79:
# linpackm.cpp:492:     for ( i = 0; i < m; i++ )
	movl	-8(%rbp), %eax	# i, tmp190
	cmpl	-20(%rbp), %eax	# m, tmp190
	jge	.L78	#,
# linpackm.cpp:494:       dtemp = dtemp + dx[i] * dy[i];
	movl	-8(%rbp), %eax	# i, tmp191
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-48(%rbp), %rax	# dx, tmp192
	addq	%rdx, %rax	# _13, _14
	movss	(%rax), %xmm1	# *_14, _15
# linpackm.cpp:494:       dtemp = dtemp + dx[i] * dy[i];
	movl	-8(%rbp), %eax	# i, tmp193
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-56(%rbp), %rax	# dy, tmp194
	addq	%rdx, %rax	# _17, _18
	movss	(%rax), %xmm0	# *_18, _19
# linpackm.cpp:494:       dtemp = dtemp + dx[i] * dy[i];
	mulss	%xmm1, %xmm0	# _15, _20
# linpackm.cpp:494:       dtemp = dtemp + dx[i] * dy[i];
	movss	-4(%rbp), %xmm1	# dtemp, tmp196
	addss	%xmm1, %xmm0	# tmp196, tmp195
	movss	%xmm0, -4(%rbp)	# tmp195, dtemp
# linpackm.cpp:492:     for ( i = 0; i < m; i++ )
	addl	$1, -8(%rbp)	#, i
	jmp	.L79	#
.L78:
# linpackm.cpp:497:     for ( i = m; i < n; i = i + 5 )
	movl	-20(%rbp), %eax	# m, tmp197
	movl	%eax, -8(%rbp)	# tmp197, i
.L80:
# linpackm.cpp:497:     for ( i = m; i < n; i = i + 5 )
	movl	-8(%rbp), %eax	# i, tmp198
	cmpl	-36(%rbp), %eax	# n, tmp198
	jge	.L77	#,
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movl	-8(%rbp), %eax	# i, tmp199
	cltq
	leaq	0(,%rax,4), %rdx	#, _22
	movq	-48(%rbp), %rax	# dx, tmp200
	addq	%rdx, %rax	# _22, _23
	movss	(%rax), %xmm1	# *_23, _24
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movl	-8(%rbp), %eax	# i, tmp201
	cltq
	leaq	0(,%rax,4), %rdx	#, _26
	movq	-56(%rbp), %rax	# dy, tmp202
	addq	%rdx, %rax	# _26, _27
	movss	(%rax), %xmm0	# *_27, _28
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	mulss	%xmm1, %xmm0	# _24, _29
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movaps	%xmm0, %xmm1	# _29, _29
	addss	-4(%rbp), %xmm1	# dtemp, _29
# linpackm.cpp:500:                     + dx[i+1] * dy[i+1] 
	movl	-8(%rbp), %eax	# i, tmp203
	cltq
	addq	$1, %rax	#, _32
	leaq	0(,%rax,4), %rdx	#, _33
	movq	-48(%rbp), %rax	# dx, tmp204
	addq	%rdx, %rax	# _33, _34
	movss	(%rax), %xmm2	# *_34, _35
# linpackm.cpp:500:                     + dx[i+1] * dy[i+1] 
	movl	-8(%rbp), %eax	# i, tmp205
	cltq
	addq	$1, %rax	#, _37
	leaq	0(,%rax,4), %rdx	#, _38
	movq	-56(%rbp), %rax	# dy, tmp206
	addq	%rdx, %rax	# _38, _39
	movss	(%rax), %xmm0	# *_39, _40
# linpackm.cpp:500:                     + dx[i+1] * dy[i+1] 
	mulss	%xmm2, %xmm0	# _35, _41
# linpackm.cpp:500:                     + dx[i+1] * dy[i+1] 
	addss	%xmm0, %xmm1	# _41, _42
# linpackm.cpp:501:                     + dx[i+2] * dy[i+2] 
	movl	-8(%rbp), %eax	# i, tmp207
	cltq
	addq	$2, %rax	#, _44
	leaq	0(,%rax,4), %rdx	#, _45
	movq	-48(%rbp), %rax	# dx, tmp208
	addq	%rdx, %rax	# _45, _46
	movss	(%rax), %xmm2	# *_46, _47
# linpackm.cpp:501:                     + dx[i+2] * dy[i+2] 
	movl	-8(%rbp), %eax	# i, tmp209
	cltq
	addq	$2, %rax	#, _49
	leaq	0(,%rax,4), %rdx	#, _50
	movq	-56(%rbp), %rax	# dy, tmp210
	addq	%rdx, %rax	# _50, _51
	movss	(%rax), %xmm0	# *_51, _52
# linpackm.cpp:501:                     + dx[i+2] * dy[i+2] 
	mulss	%xmm2, %xmm0	# _47, _53
# linpackm.cpp:501:                     + dx[i+2] * dy[i+2] 
	addss	%xmm0, %xmm1	# _53, _54
# linpackm.cpp:502:                     + dx[i+3] * dy[i+3] 
	movl	-8(%rbp), %eax	# i, tmp211
	cltq
	addq	$3, %rax	#, _56
	leaq	0(,%rax,4), %rdx	#, _57
	movq	-48(%rbp), %rax	# dx, tmp212
	addq	%rdx, %rax	# _57, _58
	movss	(%rax), %xmm2	# *_58, _59
# linpackm.cpp:502:                     + dx[i+3] * dy[i+3] 
	movl	-8(%rbp), %eax	# i, tmp213
	cltq
	addq	$3, %rax	#, _61
	leaq	0(,%rax,4), %rdx	#, _62
	movq	-56(%rbp), %rax	# dy, tmp214
	addq	%rdx, %rax	# _62, _63
	movss	(%rax), %xmm0	# *_63, _64
# linpackm.cpp:502:                     + dx[i+3] * dy[i+3] 
	mulss	%xmm2, %xmm0	# _59, _65
# linpackm.cpp:502:                     + dx[i+3] * dy[i+3] 
	addss	%xmm0, %xmm1	# _65, _66
# linpackm.cpp:503:                     + dx[i+4] * dy[i+4];
	movl	-8(%rbp), %eax	# i, tmp215
	cltq
	addq	$4, %rax	#, _68
	leaq	0(,%rax,4), %rdx	#, _69
	movq	-48(%rbp), %rax	# dx, tmp216
	addq	%rdx, %rax	# _69, _70
	movss	(%rax), %xmm2	# *_70, _71
# linpackm.cpp:503:                     + dx[i+4] * dy[i+4];
	movl	-8(%rbp), %eax	# i, tmp217
	cltq
	addq	$4, %rax	#, _73
	leaq	0(,%rax,4), %rdx	#, _74
	movq	-56(%rbp), %rax	# dy, tmp218
	addq	%rdx, %rax	# _74, _75
	movss	(%rax), %xmm0	# *_75, _76
# linpackm.cpp:503:                     + dx[i+4] * dy[i+4];
	mulss	%xmm2, %xmm0	# _71, _77
# linpackm.cpp:499:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addss	%xmm1, %xmm0	# _66, tmp219
	movss	%xmm0, -4(%rbp)	# tmp219, dtemp
# linpackm.cpp:497:     for ( i = m; i < n; i = i + 5 )
	addl	$5, -8(%rbp)	#, i
# linpackm.cpp:497:     for ( i = m; i < n; i = i + 5 )
	jmp	.L80	#
.L81:
# linpackm.cpp:458:   if ( incx != 1 || incy != 1 )
	nop	
.L77:
# linpackm.cpp:508:   return dtemp;
	movss	-4(%rbp), %xmm0	# dtemp, _89
.L68:
# linpackm.cpp:509: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2336:
	.size	_Z4sdotiPfiS_i, .-_Z4sdotiPfiS_i
	.globl	_Z5sgefaPfiiPi
	.type	_Z5sgefaPfiiPi, @function
_Z5sgefaPfiiPi:
.LFB2337:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# a, a
	movl	%esi, -44(%rbp)	# lda, lda
	movl	%edx, -48(%rbp)	# n, n
	movq	%rcx, -56(%rbp)	# ipvt, ipvt
# linpackm.cpp:566:   info = 0;
	movl	$0, -4(%rbp)	#, info
# linpackm.cpp:568:   for ( k = 1; k <= n-1; k++ )
	movl	$1, -12(%rbp)	#, k
.L90:
# linpackm.cpp:568:   for ( k = 1; k <= n-1; k++ )
	movl	-48(%rbp), %eax	# n, tmp214
	cmpl	-12(%rbp), %eax	# k, tmp214
	jle	.L83	#,
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	movl	-12(%rbp), %eax	# k, tmp215
	movslq	%eax, %rdx	# tmp215, _1
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	movl	-12(%rbp), %eax	# k, tmp216
	subl	$1, %eax	#, _2
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	imull	-44(%rbp), %eax	# lda, _3
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	cltq
	addq	%rdx, %rax	# _1, _5
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rdx	#, _7
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	movq	-40(%rbp), %rax	# a, tmp217
	leaq	(%rdx,%rax), %rcx	#, _8
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	movl	-48(%rbp), %eax	# n, tmp218
	subl	-12(%rbp), %eax	# k, _9
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	addl	$1, %eax	#, _10
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# _8,
	movl	%eax, %edi	# _10,
	call	_Z6isamaxiPfi	#
	movl	%eax, %edx	#, _11
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	movl	-12(%rbp), %eax	# k, tmp219
	addl	%edx, %eax	# _11, _12
# linpackm.cpp:573:     l = isamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	subl	$1, %eax	#, tmp220
	movl	%eax, -16(%rbp)	# tmp220, l
# linpackm.cpp:574:     ipvt[k-1] = l;
	movl	-12(%rbp), %eax	# k, tmp221
	cltq
	salq	$2, %rax	#, _14
	leaq	-4(%rax), %rdx	#, _15
	movq	-56(%rbp), %rax	# ipvt, tmp222
	addq	%rax, %rdx	# tmp222, _16
# linpackm.cpp:574:     ipvt[k-1] = l;
	movl	-16(%rbp), %eax	# l, tmp223
	movl	%eax, (%rdx)	# tmp223, *_16
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	movl	-16(%rbp), %eax	# l, tmp224
	leal	-1(%rax), %edx	#, _17
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	movl	-12(%rbp), %eax	# k, tmp225
	subl	$1, %eax	#, _18
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	imull	-44(%rbp), %eax	# lda, _19
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	addl	%edx, %eax	# _17, _20
	cltq
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	leaq	0(,%rax,4), %rdx	#, _22
	movq	-40(%rbp), %rax	# a, tmp226
	addq	%rdx, %rax	# _22, _23
	movss	(%rax), %xmm0	# *_23, _24
# linpackm.cpp:578:     if ( a[l-1+(k-1)*lda] == 0.0 )
	pxor	%xmm1, %xmm1	# tmp227
	ucomiss	%xmm1, %xmm0	# tmp227, _24
	jp	.L84	#,
	pxor	%xmm1, %xmm1	# tmp228
	ucomiss	%xmm1, %xmm0	# tmp228, _24
	jne	.L84	#,
# linpackm.cpp:580:       info = k;
	movl	-12(%rbp), %eax	# k, tmp229
	movl	%eax, -4(%rbp)	# tmp229, info
# linpackm.cpp:581:       continue;
	jmp	.L86	#
.L84:
# linpackm.cpp:586:     if ( l != k )
	movl	-16(%rbp), %eax	# l, tmp230
	cmpl	-12(%rbp), %eax	# k, tmp230
	je	.L87	#,
# linpackm.cpp:588:       t = a[l-1+(k-1)*lda];
	movl	-16(%rbp), %eax	# l, tmp231
	leal	-1(%rax), %edx	#, _25
# linpackm.cpp:588:       t = a[l-1+(k-1)*lda];
	movl	-12(%rbp), %eax	# k, tmp232
	subl	$1, %eax	#, _26
# linpackm.cpp:588:       t = a[l-1+(k-1)*lda];
	imull	-44(%rbp), %eax	# lda, _27
# linpackm.cpp:588:       t = a[l-1+(k-1)*lda];
	addl	%edx, %eax	# _25, _28
	cltq
# linpackm.cpp:588:       t = a[l-1+(k-1)*lda];
	leaq	0(,%rax,4), %rdx	#, _30
	movq	-40(%rbp), %rax	# a, tmp233
	addq	%rdx, %rax	# _30, _31
# linpackm.cpp:588:       t = a[l-1+(k-1)*lda];
	movss	(%rax), %xmm0	# *_31, tmp234
	movss	%xmm0, -20(%rbp)	# tmp234, t
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movl	-12(%rbp), %eax	# k, tmp235
	leal	-1(%rax), %edx	#, _32
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movl	-12(%rbp), %eax	# k, tmp236
	subl	$1, %eax	#, _33
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	imull	-44(%rbp), %eax	# lda, _34
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	addl	%edx, %eax	# _32, _35
	cltq
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	leaq	0(,%rax,4), %rdx	#, _37
	movq	-40(%rbp), %rax	# a, tmp237
	addq	%rax, %rdx	# tmp237, _38
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movl	-16(%rbp), %eax	# l, tmp238
	leal	-1(%rax), %ecx	#, _39
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movl	-12(%rbp), %eax	# k, tmp239
	subl	$1, %eax	#, _40
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	imull	-44(%rbp), %eax	# lda, _41
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	addl	%ecx, %eax	# _39, _42
	cltq
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	leaq	0(,%rax,4), %rcx	#, _44
	movq	-40(%rbp), %rax	# a, tmp240
	addq	%rcx, %rax	# _44, _45
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movss	(%rdx), %xmm0	# *_38, _46
# linpackm.cpp:589:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movss	%xmm0, (%rax)	# _46, *_45
# linpackm.cpp:590:       a[k-1+(k-1)*lda] = t;
	movl	-12(%rbp), %eax	# k, tmp241
	leal	-1(%rax), %edx	#, _47
# linpackm.cpp:590:       a[k-1+(k-1)*lda] = t;
	movl	-12(%rbp), %eax	# k, tmp242
	subl	$1, %eax	#, _48
# linpackm.cpp:590:       a[k-1+(k-1)*lda] = t;
	imull	-44(%rbp), %eax	# lda, _49
# linpackm.cpp:590:       a[k-1+(k-1)*lda] = t;
	addl	%edx, %eax	# _47, _50
	cltq
# linpackm.cpp:590:       a[k-1+(k-1)*lda] = t;
	leaq	0(,%rax,4), %rdx	#, _52
	movq	-40(%rbp), %rax	# a, tmp243
	addq	%rdx, %rax	# _52, _53
# linpackm.cpp:590:       a[k-1+(k-1)*lda] = t;
	movss	-20(%rbp), %xmm0	# t, tmp244
	movss	%xmm0, (%rax)	# tmp244, *_53
.L87:
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	movl	-12(%rbp), %eax	# k, tmp245
	leal	-1(%rax), %edx	#, _54
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	movl	-12(%rbp), %eax	# k, tmp246
	subl	$1, %eax	#, _55
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	imull	-44(%rbp), %eax	# lda, _56
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	addl	%edx, %eax	# _54, _57
	cltq
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	leaq	0(,%rax,4), %rdx	#, _59
	movq	-40(%rbp), %rax	# a, tmp247
	addq	%rdx, %rax	# _59, _60
	movss	(%rax), %xmm1	# *_60, _61
# linpackm.cpp:595:     t = -1.0 / a[k-1+(k-1)*lda];
	movss	.LC14(%rip), %xmm0	#, tmp249
	divss	%xmm1, %xmm0	# _61, tmp248
	movss	%xmm0, -20(%rbp)	# tmp248, t
# linpackm.cpp:597:     sscal ( n-k, t, a+k+(k-1)*lda, 1 );
	movl	-12(%rbp), %eax	# k, tmp250
	movslq	%eax, %rdx	# tmp250, _62
# linpackm.cpp:597:     sscal ( n-k, t, a+k+(k-1)*lda, 1 );
	movl	-12(%rbp), %eax	# k, tmp251
	subl	$1, %eax	#, _63
# linpackm.cpp:597:     sscal ( n-k, t, a+k+(k-1)*lda, 1 );
	imull	-44(%rbp), %eax	# lda, _64
# linpackm.cpp:597:     sscal ( n-k, t, a+k+(k-1)*lda, 1 );
	cltq
	addq	%rdx, %rax	# _62, _66
	leaq	0(,%rax,4), %rdx	#, _67
# linpackm.cpp:597:     sscal ( n-k, t, a+k+(k-1)*lda, 1 );
	movq	-40(%rbp), %rax	# a, tmp252
	leaq	(%rdx,%rax), %rcx	#, _68
	movl	-48(%rbp), %eax	# n, tmp253
	subl	-12(%rbp), %eax	# k, _69
	movss	-20(%rbp), %xmm0	# t, tmp254
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# _68,
	movl	%eax, %edi	# _69,
	call	_Z5sscalifPfi	#
# linpackm.cpp:601:     for ( j = k+1; j <= n; j++ )
	movl	-12(%rbp), %eax	# k, tmp258
	addl	$1, %eax	#, tmp257
	movl	%eax, -8(%rbp)	# tmp257, j
.L89:
# linpackm.cpp:601:     for ( j = k+1; j <= n; j++ )
	movl	-8(%rbp), %eax	# j, tmp259
	cmpl	-48(%rbp), %eax	# n, tmp259
	jg	.L86	#,
# linpackm.cpp:603:       t = a[l-1+(j-1)*lda];
	movl	-16(%rbp), %eax	# l, tmp260
	leal	-1(%rax), %edx	#, _70
# linpackm.cpp:603:       t = a[l-1+(j-1)*lda];
	movl	-8(%rbp), %eax	# j, tmp261
	subl	$1, %eax	#, _71
# linpackm.cpp:603:       t = a[l-1+(j-1)*lda];
	imull	-44(%rbp), %eax	# lda, _72
# linpackm.cpp:603:       t = a[l-1+(j-1)*lda];
	addl	%edx, %eax	# _70, _73
	cltq
# linpackm.cpp:603:       t = a[l-1+(j-1)*lda];
	leaq	0(,%rax,4), %rdx	#, _75
	movq	-40(%rbp), %rax	# a, tmp262
	addq	%rdx, %rax	# _75, _76
# linpackm.cpp:603:       t = a[l-1+(j-1)*lda];
	movss	(%rax), %xmm0	# *_76, tmp263
	movss	%xmm0, -20(%rbp)	# tmp263, t
# linpackm.cpp:604:       if ( l != k )
	movl	-16(%rbp), %eax	# l, tmp264
	cmpl	-12(%rbp), %eax	# k, tmp264
	je	.L88	#,
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movl	-12(%rbp), %eax	# k, tmp265
	leal	-1(%rax), %edx	#, _77
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movl	-8(%rbp), %eax	# j, tmp266
	subl	$1, %eax	#, _78
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	imull	-44(%rbp), %eax	# lda, _79
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	addl	%edx, %eax	# _77, _80
	cltq
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	leaq	0(,%rax,4), %rdx	#, _82
	movq	-40(%rbp), %rax	# a, tmp267
	addq	%rax, %rdx	# tmp267, _83
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movl	-16(%rbp), %eax	# l, tmp268
	leal	-1(%rax), %ecx	#, _84
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movl	-8(%rbp), %eax	# j, tmp269
	subl	$1, %eax	#, _85
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	imull	-44(%rbp), %eax	# lda, _86
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	addl	%ecx, %eax	# _84, _87
	cltq
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	leaq	0(,%rax,4), %rcx	#, _89
	movq	-40(%rbp), %rax	# a, tmp270
	addq	%rcx, %rax	# _89, _90
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movss	(%rdx), %xmm0	# *_83, _91
# linpackm.cpp:606:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movss	%xmm0, (%rax)	# _91, *_90
# linpackm.cpp:607:         a[k-1+(j-1)*lda] = t;
	movl	-12(%rbp), %eax	# k, tmp271
	leal	-1(%rax), %edx	#, _92
# linpackm.cpp:607:         a[k-1+(j-1)*lda] = t;
	movl	-8(%rbp), %eax	# j, tmp272
	subl	$1, %eax	#, _93
# linpackm.cpp:607:         a[k-1+(j-1)*lda] = t;
	imull	-44(%rbp), %eax	# lda, _94
# linpackm.cpp:607:         a[k-1+(j-1)*lda] = t;
	addl	%edx, %eax	# _92, _95
	cltq
# linpackm.cpp:607:         a[k-1+(j-1)*lda] = t;
	leaq	0(,%rax,4), %rdx	#, _97
	movq	-40(%rbp), %rax	# a, tmp273
	addq	%rdx, %rax	# _97, _98
# linpackm.cpp:607:         a[k-1+(j-1)*lda] = t;
	movss	-20(%rbp), %xmm0	# t, tmp274
	movss	%xmm0, (%rax)	# tmp274, *_98
.L88:
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	movl	-12(%rbp), %eax	# k, tmp275
	movslq	%eax, %rdx	# tmp275, _99
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	movl	-8(%rbp), %eax	# j, tmp276
	subl	$1, %eax	#, _100
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	imull	-44(%rbp), %eax	# lda, _101
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	cltq
	addq	%rdx, %rax	# _99, _103
	leaq	0(,%rax,4), %rdx	#, _104
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	movq	-40(%rbp), %rax	# a, tmp277
	addq	%rax, %rdx	# tmp277, _105
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	movl	-12(%rbp), %eax	# k, tmp278
	movslq	%eax, %rcx	# tmp278, _106
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	movl	-12(%rbp), %eax	# k, tmp279
	subl	$1, %eax	#, _107
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	imull	-44(%rbp), %eax	# lda, _108
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	cltq
	addq	%rcx, %rax	# _106, _110
	leaq	0(,%rax,4), %rcx	#, _111
# linpackm.cpp:609:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	movq	-40(%rbp), %rax	# a, tmp280
	leaq	(%rcx,%rax), %rsi	#, _112
	movl	-48(%rbp), %eax	# n, tmp281
	subl	-12(%rbp), %eax	# k, _113
	movss	-20(%rbp), %xmm0	# t, tmp282
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# _105,
	movl	$1, %edx	#,
	movl	%eax, %edi	# _113,
	call	_Z5saxpyifPfiS_i	#
# linpackm.cpp:601:     for ( j = k+1; j <= n; j++ )
	addl	$1, -8(%rbp)	#, j
	jmp	.L89	#
.L86:
# linpackm.cpp:568:   for ( k = 1; k <= n-1; k++ )
	addl	$1, -12(%rbp)	#, k
	jmp	.L90	#
.L83:
# linpackm.cpp:614:   ipvt[n-1] = n;
	movl	-48(%rbp), %eax	# n, tmp283
	cltq
	salq	$2, %rax	#, _115
	leaq	-4(%rax), %rdx	#, _116
	movq	-56(%rbp), %rax	# ipvt, tmp284
	addq	%rax, %rdx	# tmp284, _117
# linpackm.cpp:614:   ipvt[n-1] = n;
	movl	-48(%rbp), %eax	# n, tmp285
	movl	%eax, (%rdx)	# tmp285, *_117
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	movl	-48(%rbp), %eax	# n, tmp286
	leal	-1(%rax), %edx	#, _118
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	movl	-48(%rbp), %eax	# n, tmp287
	subl	$1, %eax	#, _119
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	imull	-44(%rbp), %eax	# lda, _120
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	addl	%edx, %eax	# _118, _121
	cltq
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	leaq	0(,%rax,4), %rdx	#, _123
	movq	-40(%rbp), %rax	# a, tmp288
	addq	%rdx, %rax	# _123, _124
	movss	(%rax), %xmm0	# *_124, _125
# linpackm.cpp:616:   if ( a[n-1+(n-1)*lda] == 0.0 )
	pxor	%xmm1, %xmm1	# tmp289
	ucomiss	%xmm1, %xmm0	# tmp289, _125
	jp	.L91	#,
	pxor	%xmm1, %xmm1	# tmp290
	ucomiss	%xmm1, %xmm0	# tmp290, _125
	jne	.L91	#,
# linpackm.cpp:618:     info = n;
	movl	-48(%rbp), %eax	# n, tmp291
	movl	%eax, -4(%rbp)	# tmp291, info
.L91:
# linpackm.cpp:621:   return info;
	movl	-4(%rbp), %eax	# info, _162
# linpackm.cpp:622: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2337:
	.size	_Z5sgefaPfiiPi, .-_Z5sgefaPfiiPi
	.globl	_Z5sgeslPfiiPiS_i
	.type	_Z5sgeslPfiiPiS_i, @function
_Z5sgeslPfiiPiS_i:
.LFB2338:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$56, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# lda, lda
	movl	%edx, -32(%rbp)	# n, n
	movq	%rcx, -40(%rbp)	# ipvt, ipvt
	movq	%r8, -48(%rbp)	# b, b
	movl	%r9d, -52(%rbp)	# job, job
# linpackm.cpp:688:   if ( job == 0 )
	cmpl	$0, -52(%rbp)	#, job
	jne	.L97	#,
# linpackm.cpp:690:     for ( k = 1; k <= n-1; k++ )
	movl	$1, -4(%rbp)	#, k
.L100:
# linpackm.cpp:690:     for ( k = 1; k <= n-1; k++ )
	movl	-32(%rbp), %eax	# n, tmp216
	cmpl	-4(%rbp), %eax	# k, tmp216
	jle	.L98	#,
# linpackm.cpp:692:       l = ipvt[k-1];
	movl	-4(%rbp), %eax	# k, tmp217
	cltq
	salq	$2, %rax	#, _2
	leaq	-4(%rax), %rdx	#, _3
	movq	-40(%rbp), %rax	# ipvt, tmp218
	addq	%rdx, %rax	# _3, _4
# linpackm.cpp:692:       l = ipvt[k-1];
	movl	(%rax), %eax	# *_4, tmp219
	movl	%eax, -8(%rbp)	# tmp219, l
# linpackm.cpp:693:       t = b[l-1];
	movl	-8(%rbp), %eax	# l, tmp220
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rdx	#, _7
	movq	-48(%rbp), %rax	# b, tmp221
	addq	%rdx, %rax	# _7, _8
# linpackm.cpp:693:       t = b[l-1];
	movss	(%rax), %xmm0	# *_8, tmp222
	movss	%xmm0, -12(%rbp)	# tmp222, t
# linpackm.cpp:695:       if ( l != k )
	movl	-8(%rbp), %eax	# l, tmp223
	cmpl	-4(%rbp), %eax	# k, tmp223
	je	.L99	#,
# linpackm.cpp:697:         b[l-1] = b[k-1];
	movl	-4(%rbp), %eax	# k, tmp224
	cltq
	salq	$2, %rax	#, _10
	leaq	-4(%rax), %rdx	#, _11
	movq	-48(%rbp), %rax	# b, tmp225
	addq	%rax, %rdx	# tmp225, _12
# linpackm.cpp:697:         b[l-1] = b[k-1];
	movl	-8(%rbp), %eax	# l, tmp226
	cltq
	salq	$2, %rax	#, _14
	leaq	-4(%rax), %rcx	#, _15
	movq	-48(%rbp), %rax	# b, tmp227
	addq	%rcx, %rax	# _15, _16
# linpackm.cpp:697:         b[l-1] = b[k-1];
	movss	(%rdx), %xmm0	# *_12, _17
# linpackm.cpp:697:         b[l-1] = b[k-1];
	movss	%xmm0, (%rax)	# _17, *_16
# linpackm.cpp:698:         b[k-1] = t;
	movl	-4(%rbp), %eax	# k, tmp228
	cltq
	salq	$2, %rax	#, _19
	leaq	-4(%rax), %rdx	#, _20
	movq	-48(%rbp), %rax	# b, tmp229
	addq	%rdx, %rax	# _20, _21
# linpackm.cpp:698:         b[k-1] = t;
	movss	-12(%rbp), %xmm0	# t, tmp230
	movss	%xmm0, (%rax)	# tmp230, *_21
.L99:
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp231
	cltq
	leaq	0(,%rax,4), %rdx	#, _23
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	movq	-48(%rbp), %rax	# b, tmp232
	addq	%rax, %rdx	# tmp232, _24
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp233
	movslq	%eax, %rcx	# tmp233, _25
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp234
	subl	$1, %eax	#, _26
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	imull	-28(%rbp), %eax	# lda, _27
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	cltq
	addq	%rcx, %rax	# _25, _29
	leaq	0(,%rax,4), %rcx	#, _30
# linpackm.cpp:701:       saxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	movq	-24(%rbp), %rax	# a, tmp235
	leaq	(%rcx,%rax), %rsi	#, _31
	movl	-32(%rbp), %eax	# n, tmp236
	subl	-4(%rbp), %eax	# k, _32
	movss	-12(%rbp), %xmm0	# t, tmp237
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# _24,
	movl	$1, %edx	#,
	movl	%eax, %edi	# _32,
	call	_Z5saxpyifPfiS_i	#
# linpackm.cpp:690:     for ( k = 1; k <= n-1; k++ )
	addl	$1, -4(%rbp)	#, k
	jmp	.L100	#
.L98:
# linpackm.cpp:705:     for ( k = n; 1 <= k; k-- )
	movl	-32(%rbp), %eax	# n, tmp238
	movl	%eax, -4(%rbp)	# tmp238, k
.L102:
# linpackm.cpp:705:     for ( k = n; 1 <= k; k-- )
	cmpl	$0, -4(%rbp)	#, k
	jle	.L108	#,
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp239
	cltq
	salq	$2, %rax	#, _34
	leaq	-4(%rax), %rdx	#, _35
	movq	-48(%rbp), %rax	# b, tmp240
	addq	%rdx, %rax	# _35, _36
	movss	(%rax), %xmm0	# *_36, _37
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp241
	leal	-1(%rax), %edx	#, _38
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp242
	subl	$1, %eax	#, _39
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	imull	-28(%rbp), %eax	# lda, _40
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	addl	%edx, %eax	# _38, _41
	cltq
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	leaq	0(,%rax,4), %rdx	#, _43
	movq	-24(%rbp), %rax	# a, tmp243
	addq	%rdx, %rax	# _43, _44
	movss	(%rax), %xmm1	# *_44, _45
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp244
	cltq
	salq	$2, %rax	#, _47
	leaq	-4(%rax), %rdx	#, _48
	movq	-48(%rbp), %rax	# b, tmp245
	addq	%rdx, %rax	# _48, _49
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	divss	%xmm1, %xmm0	# _45, _50
# linpackm.cpp:707:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movss	%xmm0, (%rax)	# _50, *_49
# linpackm.cpp:708:       t = -b[k-1];
	movl	-4(%rbp), %eax	# k, tmp246
	cltq
	salq	$2, %rax	#, _52
	leaq	-4(%rax), %rdx	#, _53
	movq	-48(%rbp), %rax	# b, tmp247
	addq	%rdx, %rax	# _53, _54
# linpackm.cpp:708:       t = -b[k-1];
	movss	(%rax), %xmm0	# *_54, _55
# linpackm.cpp:708:       t = -b[k-1];
	movss	.LC8(%rip), %xmm1	#, tmp249
	xorps	%xmm1, %xmm0	# tmp249, tmp248
	movss	%xmm0, -12(%rbp)	# tmp248, t
# linpackm.cpp:709:       saxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	movl	-4(%rbp), %eax	# k, tmp250
	subl	$1, %eax	#, _56
# linpackm.cpp:709:       saxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	imull	-28(%rbp), %eax	# lda, _57
	cltq
# linpackm.cpp:709:       saxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	leaq	0(,%rax,4), %rdx	#, _59
# linpackm.cpp:709:       saxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	movq	-24(%rbp), %rax	# a, tmp251
	leaq	(%rdx,%rax), %rsi	#, _60
	movl	-4(%rbp), %eax	# k, tmp252
	leal	-1(%rax), %edi	#, _61
	movq	-48(%rbp), %rax	# b, tmp253
	movss	-12(%rbp), %xmm0	# t, tmp254
	movl	$1, %r8d	#,
	movq	%rax, %rcx	# tmp253,
	movl	$1, %edx	#,
	call	_Z5saxpyifPfiS_i	#
# linpackm.cpp:705:     for ( k = n; 1 <= k; k-- )
	subl	$1, -4(%rbp)	#, k
	jmp	.L102	#
.L97:
# linpackm.cpp:717:     for ( k = 1; k <= n; k++ )
	movl	$1, -4(%rbp)	#, k
.L104:
# linpackm.cpp:717:     for ( k = 1; k <= n; k++ )
	movl	-4(%rbp), %eax	# k, tmp255
	cmpl	-32(%rbp), %eax	# n, tmp255
	jg	.L103	#,
# linpackm.cpp:719:       t = sdot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	movl	-4(%rbp), %eax	# k, tmp256
	subl	$1, %eax	#, _62
# linpackm.cpp:719:       t = sdot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	imull	-28(%rbp), %eax	# lda, _63
	cltq
# linpackm.cpp:719:       t = sdot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	leaq	0(,%rax,4), %rdx	#, _65
# linpackm.cpp:719:       t = sdot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	movq	-24(%rbp), %rax	# a, tmp257
	leaq	(%rdx,%rax), %rsi	#, _66
	movl	-4(%rbp), %eax	# k, tmp258
	leal	-1(%rax), %edi	#, _67
	movq	-48(%rbp), %rax	# b, tmp259
	movl	$1, %r8d	#,
	movq	%rax, %rcx	# tmp259,
	movl	$1, %edx	#,
	call	_Z4sdotiPfiS_i	#
	movd	%xmm0, %eax	#, tmp260
	movl	%eax, -12(%rbp)	# tmp260, t
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp261
	cltq
	salq	$2, %rax	#, _69
	leaq	-4(%rax), %rdx	#, _70
	movq	-48(%rbp), %rax	# b, tmp262
	addq	%rdx, %rax	# _70, _71
	movss	(%rax), %xmm0	# *_71, _72
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	subss	-12(%rbp), %xmm0	# t, _73
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp263
	leal	-1(%rax), %edx	#, _74
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp264
	subl	$1, %eax	#, _75
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	imull	-28(%rbp), %eax	# lda, _76
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	addl	%edx, %eax	# _74, _77
	cltq
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	leaq	0(,%rax,4), %rdx	#, _79
	movq	-24(%rbp), %rax	# a, tmp265
	addq	%rdx, %rax	# _79, _80
	movss	(%rax), %xmm1	# *_80, _81
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movl	-4(%rbp), %eax	# k, tmp266
	cltq
	salq	$2, %rax	#, _83
	leaq	-4(%rax), %rdx	#, _84
	movq	-48(%rbp), %rax	# b, tmp267
	addq	%rdx, %rax	# _84, _85
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	divss	%xmm1, %xmm0	# _81, _86
# linpackm.cpp:720:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movss	%xmm0, (%rax)	# _86, *_85
# linpackm.cpp:717:     for ( k = 1; k <= n; k++ )
	addl	$1, -4(%rbp)	#, k
	jmp	.L104	#
.L103:
# linpackm.cpp:723:     for ( k = n-1; 1 <= k; k-- )
	movl	-32(%rbp), %eax	# n, tmp271
	subl	$1, %eax	#, tmp270
	movl	%eax, -4(%rbp)	# tmp270, k
.L106:
# linpackm.cpp:723:     for ( k = n-1; 1 <= k; k-- )
	cmpl	$0, -4(%rbp)	#, k
	jle	.L108	#,
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp272
	cltq
	salq	$2, %rax	#, _88
	leaq	-4(%rax), %rdx	#, _89
	movq	-48(%rbp), %rax	# b, tmp273
	addq	%rdx, %rax	# _89, _90
	movss	(%rax), %xmm2	# *_90, _91
	movss	%xmm2, -56(%rbp)	# _91, %sfp
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp274
	cltq
	leaq	0(,%rax,4), %rdx	#, _93
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movq	-48(%rbp), %rax	# b, tmp275
	addq	%rax, %rdx	# tmp275, _94
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp276
	movslq	%eax, %rcx	# tmp276, _95
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp277
	subl	$1, %eax	#, _96
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	imull	-28(%rbp), %eax	# lda, _97
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	cltq
	addq	%rcx, %rax	# _95, _99
	leaq	0(,%rax,4), %rcx	#, _100
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movq	-24(%rbp), %rax	# a, tmp278
	leaq	(%rcx,%rax), %rsi	#, _101
	movl	-32(%rbp), %eax	# n, tmp279
	subl	-4(%rbp), %eax	# k, _102
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# _94,
	movl	$1, %edx	#,
	movl	%eax, %edi	# _102,
	call	_Z4sdotiPfiS_i	#
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movl	-4(%rbp), %eax	# k, tmp280
	cltq
	salq	$2, %rax	#, _105
	leaq	-4(%rax), %rdx	#, _106
	movq	-48(%rbp), %rax	# b, tmp281
	addq	%rdx, %rax	# _106, _107
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	addss	-56(%rbp), %xmm0	# %sfp, _108
# linpackm.cpp:725:       b[k-1] = b[k-1] + sdot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movss	%xmm0, (%rax)	# _108, *_107
# linpackm.cpp:726:       l = ipvt[k-1];
	movl	-4(%rbp), %eax	# k, tmp282
	cltq
	salq	$2, %rax	#, _110
	leaq	-4(%rax), %rdx	#, _111
	movq	-40(%rbp), %rax	# ipvt, tmp283
	addq	%rdx, %rax	# _111, _112
# linpackm.cpp:726:       l = ipvt[k-1];
	movl	(%rax), %eax	# *_112, tmp284
	movl	%eax, -8(%rbp)	# tmp284, l
# linpackm.cpp:728:       if ( l != k )
	movl	-8(%rbp), %eax	# l, tmp285
	cmpl	-4(%rbp), %eax	# k, tmp285
	je	.L105	#,
# linpackm.cpp:730:         t = b[l-1];
	movl	-8(%rbp), %eax	# l, tmp286
	cltq
	salq	$2, %rax	#, _114
	leaq	-4(%rax), %rdx	#, _115
	movq	-48(%rbp), %rax	# b, tmp287
	addq	%rdx, %rax	# _115, _116
# linpackm.cpp:730:         t = b[l-1];
	movss	(%rax), %xmm0	# *_116, tmp288
	movss	%xmm0, -12(%rbp)	# tmp288, t
# linpackm.cpp:731:         b[l-1] = b[k-1];
	movl	-4(%rbp), %eax	# k, tmp289
	cltq
	salq	$2, %rax	#, _118
	leaq	-4(%rax), %rdx	#, _119
	movq	-48(%rbp), %rax	# b, tmp290
	addq	%rax, %rdx	# tmp290, _120
# linpackm.cpp:731:         b[l-1] = b[k-1];
	movl	-8(%rbp), %eax	# l, tmp291
	cltq
	salq	$2, %rax	#, _122
	leaq	-4(%rax), %rcx	#, _123
	movq	-48(%rbp), %rax	# b, tmp292
	addq	%rcx, %rax	# _123, _124
# linpackm.cpp:731:         b[l-1] = b[k-1];
	movss	(%rdx), %xmm0	# *_120, _125
# linpackm.cpp:731:         b[l-1] = b[k-1];
	movss	%xmm0, (%rax)	# _125, *_124
# linpackm.cpp:732:         b[k-1] = t;
	movl	-4(%rbp), %eax	# k, tmp293
	cltq
	salq	$2, %rax	#, _127
	leaq	-4(%rax), %rdx	#, _128
	movq	-48(%rbp), %rax	# b, tmp294
	addq	%rdx, %rax	# _128, _129
# linpackm.cpp:732:         b[k-1] = t;
	movss	-12(%rbp), %xmm0	# t, tmp295
	movss	%xmm0, (%rax)	# tmp295, *_129
.L105:
# linpackm.cpp:723:     for ( k = n-1; 1 <= k; k-- )
	subl	$1, -4(%rbp)	#, k
	jmp	.L106	#
.L108:
# linpackm.cpp:736:   return;
	nop	
# linpackm.cpp:737: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2338:
	.size	_Z5sgeslPfiiPiS_i, .-_Z5sgeslPfiiPiS_i
	.globl	_Z5sscalifPfi
	.type	_Z5sscalifPfi, @function
_Z5sscalifPfi:
.LFB2339:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	movss	%xmm0, -24(%rbp)	# sa, sa
	movq	%rsi, -32(%rbp)	# x, x
	movl	%edx, -36(%rbp)	# incx, incx
# linpackm.cpp:783:   if ( n <= 0 )
	cmpl	$0, -20(%rbp)	#, n
	jle	.L119	#,
# linpackm.cpp:786:   else if ( incx == 1 )
	cmpl	$1, -36(%rbp)	#, incx
	jne	.L111	#,
# linpackm.cpp:788:     m = n % 5;
	movl	-20(%rbp), %ecx	# n, tmp153
	movl	$1717986919, %edx	#, tmp155
	movl	%ecx, %eax	# tmp153, tmp196
	imull	%edx	# tmp155
	sarl	%edx	# tmp156
	movl	%ecx, %eax	# tmp153, tmp157
	sarl	$31, %eax	#, tmp157
	subl	%eax, %edx	# tmp157, tmp152
	movl	%edx, %eax	# tmp152, tmp158
	sall	$2, %eax	#, tmp158
	addl	%edx, %eax	# tmp152, tmp158
	subl	%eax, %ecx	# tmp158, tmp153
	movl	%ecx, %eax	# tmp153, tmp159
	movl	%eax, -12(%rbp)	# tmp159, m
# linpackm.cpp:790:     for ( i = 0; i < m; i++ )
	movl	$0, -4(%rbp)	#, i
.L113:
# linpackm.cpp:790:     for ( i = 0; i < m; i++ )
	movl	-4(%rbp), %eax	# i, tmp160
	cmpl	-12(%rbp), %eax	# m, tmp160
	jge	.L112	#,
# linpackm.cpp:792:       x[i] = sa * x[i];
	movl	-4(%rbp), %eax	# i, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-32(%rbp), %rax	# x, tmp162
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# linpackm.cpp:792:       x[i] = sa * x[i];
	movl	-4(%rbp), %eax	# i, tmp163
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-32(%rbp), %rax	# x, tmp164
	addq	%rdx, %rax	# _6, _7
# linpackm.cpp:792:       x[i] = sa * x[i];
	mulss	-24(%rbp), %xmm0	# sa, _8
# linpackm.cpp:792:       x[i] = sa * x[i];
	movss	%xmm0, (%rax)	# _8, *_7
# linpackm.cpp:790:     for ( i = 0; i < m; i++ )
	addl	$1, -4(%rbp)	#, i
	jmp	.L113	#
.L112:
# linpackm.cpp:795:     for ( i = m; i < n; i = i + 5 )
	movl	-12(%rbp), %eax	# m, tmp165
	movl	%eax, -4(%rbp)	# tmp165, i
.L114:
# linpackm.cpp:795:     for ( i = m; i < n; i = i + 5 )
	movl	-4(%rbp), %eax	# i, tmp166
	cmpl	-20(%rbp), %eax	# n, tmp166
	jge	.L119	#,
# linpackm.cpp:797:       x[i]   = sa * x[i];
	movl	-4(%rbp), %eax	# i, tmp167
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-32(%rbp), %rax	# x, tmp168
	addq	%rdx, %rax	# _10, _11
	movss	(%rax), %xmm0	# *_11, _12
# linpackm.cpp:797:       x[i]   = sa * x[i];
	movl	-4(%rbp), %eax	# i, tmp169
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-32(%rbp), %rax	# x, tmp170
	addq	%rdx, %rax	# _14, _15
# linpackm.cpp:797:       x[i]   = sa * x[i];
	mulss	-24(%rbp), %xmm0	# sa, _16
# linpackm.cpp:797:       x[i]   = sa * x[i];
	movss	%xmm0, (%rax)	# _16, *_15
# linpackm.cpp:798:       x[i+1] = sa * x[i+1];
	movl	-4(%rbp), %eax	# i, tmp171
	cltq
	addq	$1, %rax	#, _18
	leaq	0(,%rax,4), %rdx	#, _19
	movq	-32(%rbp), %rax	# x, tmp172
	addq	%rdx, %rax	# _19, _20
	movss	(%rax), %xmm0	# *_20, _21
# linpackm.cpp:798:       x[i+1] = sa * x[i+1];
	movl	-4(%rbp), %eax	# i, tmp173
	cltq
	addq	$1, %rax	#, _23
	leaq	0(,%rax,4), %rdx	#, _24
	movq	-32(%rbp), %rax	# x, tmp174
	addq	%rdx, %rax	# _24, _25
# linpackm.cpp:798:       x[i+1] = sa * x[i+1];
	mulss	-24(%rbp), %xmm0	# sa, _26
# linpackm.cpp:798:       x[i+1] = sa * x[i+1];
	movss	%xmm0, (%rax)	# _26, *_25
# linpackm.cpp:799:       x[i+2] = sa * x[i+2];
	movl	-4(%rbp), %eax	# i, tmp175
	cltq
	addq	$2, %rax	#, _28
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-32(%rbp), %rax	# x, tmp176
	addq	%rdx, %rax	# _29, _30
	movss	(%rax), %xmm0	# *_30, _31
# linpackm.cpp:799:       x[i+2] = sa * x[i+2];
	movl	-4(%rbp), %eax	# i, tmp177
	cltq
	addq	$2, %rax	#, _33
	leaq	0(,%rax,4), %rdx	#, _34
	movq	-32(%rbp), %rax	# x, tmp178
	addq	%rdx, %rax	# _34, _35
# linpackm.cpp:799:       x[i+2] = sa * x[i+2];
	mulss	-24(%rbp), %xmm0	# sa, _36
# linpackm.cpp:799:       x[i+2] = sa * x[i+2];
	movss	%xmm0, (%rax)	# _36, *_35
# linpackm.cpp:800:       x[i+3] = sa * x[i+3];
	movl	-4(%rbp), %eax	# i, tmp179
	cltq
	addq	$3, %rax	#, _38
	leaq	0(,%rax,4), %rdx	#, _39
	movq	-32(%rbp), %rax	# x, tmp180
	addq	%rdx, %rax	# _39, _40
	movss	(%rax), %xmm0	# *_40, _41
# linpackm.cpp:800:       x[i+3] = sa * x[i+3];
	movl	-4(%rbp), %eax	# i, tmp181
	cltq
	addq	$3, %rax	#, _43
	leaq	0(,%rax,4), %rdx	#, _44
	movq	-32(%rbp), %rax	# x, tmp182
	addq	%rdx, %rax	# _44, _45
# linpackm.cpp:800:       x[i+3] = sa * x[i+3];
	mulss	-24(%rbp), %xmm0	# sa, _46
# linpackm.cpp:800:       x[i+3] = sa * x[i+3];
	movss	%xmm0, (%rax)	# _46, *_45
# linpackm.cpp:801:       x[i+4] = sa * x[i+4];
	movl	-4(%rbp), %eax	# i, tmp183
	cltq
	addq	$4, %rax	#, _48
	leaq	0(,%rax,4), %rdx	#, _49
	movq	-32(%rbp), %rax	# x, tmp184
	addq	%rdx, %rax	# _49, _50
	movss	(%rax), %xmm0	# *_50, _51
# linpackm.cpp:801:       x[i+4] = sa * x[i+4];
	movl	-4(%rbp), %eax	# i, tmp185
	cltq
	addq	$4, %rax	#, _53
	leaq	0(,%rax,4), %rdx	#, _54
	movq	-32(%rbp), %rax	# x, tmp186
	addq	%rdx, %rax	# _54, _55
# linpackm.cpp:801:       x[i+4] = sa * x[i+4];
	mulss	-24(%rbp), %xmm0	# sa, _56
# linpackm.cpp:801:       x[i+4] = sa * x[i+4];
	movss	%xmm0, (%rax)	# _56, *_55
# linpackm.cpp:795:     for ( i = m; i < n; i = i + 5 )
	addl	$5, -4(%rbp)	#, i
# linpackm.cpp:795:     for ( i = m; i < n; i = i + 5 )
	jmp	.L114	#
.L111:
# linpackm.cpp:806:     if ( 0 <= incx )
	cmpl	$0, -36(%rbp)	#, incx
	js	.L115	#,
# linpackm.cpp:808:       ix = 0;
	movl	$0, -8(%rbp)	#, ix
	jmp	.L116	#
.L115:
# linpackm.cpp:812:       ix = ( - n + 1 ) * incx;
	movl	$1, %eax	#, tmp187
	subl	-20(%rbp), %eax	# n, _57
# linpackm.cpp:812:       ix = ( - n + 1 ) * incx;
	movl	-36(%rbp), %edx	# incx, tmp189
	imull	%edx, %eax	# tmp189, tmp188
	movl	%eax, -8(%rbp)	# tmp188, ix
.L116:
# linpackm.cpp:815:     for ( i = 0; i < n; i++ )
	movl	$0, -4(%rbp)	#, i
.L117:
# linpackm.cpp:815:     for ( i = 0; i < n; i++ )
	movl	-4(%rbp), %eax	# i, tmp190
	cmpl	-20(%rbp), %eax	# n, tmp190
	jge	.L119	#,
# linpackm.cpp:817:       x[ix] = sa * x[ix];
	movl	-8(%rbp), %eax	# ix, tmp191
	cltq
	leaq	0(,%rax,4), %rdx	#, _59
	movq	-32(%rbp), %rax	# x, tmp192
	addq	%rdx, %rax	# _59, _60
	movss	(%rax), %xmm0	# *_60, _61
# linpackm.cpp:817:       x[ix] = sa * x[ix];
	movl	-8(%rbp), %eax	# ix, tmp193
	cltq
	leaq	0(,%rax,4), %rdx	#, _63
	movq	-32(%rbp), %rax	# x, tmp194
	addq	%rdx, %rax	# _63, _64
# linpackm.cpp:817:       x[ix] = sa * x[ix];
	mulss	-24(%rbp), %xmm0	# sa, _65
# linpackm.cpp:817:       x[ix] = sa * x[ix];
	movss	%xmm0, (%rax)	# _65, *_64
# linpackm.cpp:818:       ix = ix + incx;
	movl	-36(%rbp), %eax	# incx, tmp195
	addl	%eax, -8(%rbp)	# tmp195, ix
# linpackm.cpp:815:     for ( i = 0; i < n; i++ )
	addl	$1, -4(%rbp)	#, i
	jmp	.L117	#
.L119:
# linpackm.cpp:823:   return;
	nop	
# linpackm.cpp:824: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2339:
	.size	_Z5sscalifPfi, .-_Z5sscalifPfi
	.globl	_Z6isamaxiPfi
	.type	_Z6isamaxiPfi, @function
_Z6isamaxiPfi:
.LFB2340:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movq	%rsi, -32(%rbp)	# dx, dx
	movl	%edx, -24(%rbp)	# incx, incx
# linpackm.cpp:868:   value = 0;
	movl	$0, -16(%rbp)	#, value
# linpackm.cpp:870:   if ( n < 1 || incx <= 0 )
	cmpl	$0, -20(%rbp)	#, n
	jle	.L121	#,
# linpackm.cpp:870:   if ( n < 1 || incx <= 0 )
	cmpl	$0, -24(%rbp)	#, incx
	jg	.L122	#,
.L121:
# linpackm.cpp:872:     return value;
	movl	-16(%rbp), %eax	# value, _33
	jmp	.L123	#
.L122:
# linpackm.cpp:875:   value = 1;
	movl	$1, -16(%rbp)	#, value
# linpackm.cpp:877:   if ( n == 1 )
	cmpl	$1, -20(%rbp)	#, n
	jne	.L124	#,
# linpackm.cpp:879:     return value;
	movl	-16(%rbp), %eax	# value, _33
	jmp	.L123	#
.L124:
# linpackm.cpp:882:   if ( incx == 1 )
	cmpl	$1, -24(%rbp)	#, incx
	jne	.L125	#,
# linpackm.cpp:884:     dmax = r4_abs ( dx[0] );
	movq	-32(%rbp), %rax	# dx, tmp111
	movss	(%rax), %xmm0	# *dx_46(D), _1
	call	_Z6r4_absf	#
	movd	%xmm0, %eax	#, tmp112
	movl	%eax, -4(%rbp)	# tmp112, dmax
# linpackm.cpp:886:     for ( i = 1; i < n; i++ )
	movl	$1, -8(%rbp)	#, i
.L128:
# linpackm.cpp:886:     for ( i = 1; i < n; i++ )
	movl	-8(%rbp), %eax	# i, tmp113
	cmpl	-20(%rbp), %eax	# n, tmp113
	jge	.L126	#,
# linpackm.cpp:888:       if ( dmax < r4_abs ( dx[i] ) )
	movl	-8(%rbp), %eax	# i, tmp114
	cltq
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-32(%rbp), %rax	# dx, tmp115
	addq	%rdx, %rax	# _3, _4
# linpackm.cpp:888:       if ( dmax < r4_abs ( dx[i] ) )
	movss	(%rax), %xmm0	# *_4, _5
	call	_Z6r4_absf	#
# linpackm.cpp:888:       if ( dmax < r4_abs ( dx[i] ) )
	comiss	-4(%rbp), %xmm0	# dmax, _6
	seta	%al	#, retval.0_51
# linpackm.cpp:888:       if ( dmax < r4_abs ( dx[i] ) )
	testb	%al, %al	# retval.0_51
	je	.L127	#,
# linpackm.cpp:890:         value = i + 1;
	movl	-8(%rbp), %eax	# i, tmp119
	addl	$1, %eax	#, tmp118
	movl	%eax, -16(%rbp)	# tmp118, value
# linpackm.cpp:891:         dmax = r4_abs ( dx[i] );
	movl	-8(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-32(%rbp), %rax	# dx, tmp121
	addq	%rdx, %rax	# _8, _9
# linpackm.cpp:891:         dmax = r4_abs ( dx[i] );
	movss	(%rax), %xmm0	# *_9, _10
	call	_Z6r4_absf	#
	movd	%xmm0, %eax	#, tmp122
	movl	%eax, -4(%rbp)	# tmp122, dmax
.L127:
# linpackm.cpp:886:     for ( i = 1; i < n; i++ )
	addl	$1, -8(%rbp)	#, i
	jmp	.L128	#
.L125:
# linpackm.cpp:897:     ix = 0;
	movl	$0, -12(%rbp)	#, ix
# linpackm.cpp:898:     dmax = r4_abs ( dx[0] );
	movq	-32(%rbp), %rax	# dx, tmp123
	movss	(%rax), %xmm0	# *dx_46(D), _11
	call	_Z6r4_absf	#
	movd	%xmm0, %eax	#, tmp124
	movl	%eax, -4(%rbp)	# tmp124, dmax
# linpackm.cpp:899:     ix = ix + incx;
	movl	-24(%rbp), %eax	# incx, tmp125
	addl	%eax, -12(%rbp)	# tmp125, ix
# linpackm.cpp:901:     for ( i = 1; i < n; i++ )
	movl	$1, -8(%rbp)	#, i
.L130:
# linpackm.cpp:901:     for ( i = 1; i < n; i++ )
	movl	-8(%rbp), %eax	# i, tmp126
	cmpl	-20(%rbp), %eax	# n, tmp126
	jge	.L126	#,
# linpackm.cpp:903:       if ( dmax < r4_abs ( dx[ix] ) )
	movl	-12(%rbp), %eax	# ix, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-32(%rbp), %rax	# dx, tmp128
	addq	%rdx, %rax	# _13, _14
# linpackm.cpp:903:       if ( dmax < r4_abs ( dx[ix] ) )
	movss	(%rax), %xmm0	# *_14, _15
	call	_Z6r4_absf	#
# linpackm.cpp:903:       if ( dmax < r4_abs ( dx[ix] ) )
	comiss	-4(%rbp), %xmm0	# dmax, _16
	seta	%al	#, retval.1_62
# linpackm.cpp:903:       if ( dmax < r4_abs ( dx[ix] ) )
	testb	%al, %al	# retval.1_62
	je	.L129	#,
# linpackm.cpp:905:         value = i + 1;
	movl	-8(%rbp), %eax	# i, tmp132
	addl	$1, %eax	#, tmp131
	movl	%eax, -16(%rbp)	# tmp131, value
# linpackm.cpp:906:         dmax = r4_abs ( dx[ix] );
	movl	-12(%rbp), %eax	# ix, tmp133
	cltq
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-32(%rbp), %rax	# dx, tmp134
	addq	%rdx, %rax	# _18, _19
# linpackm.cpp:906:         dmax = r4_abs ( dx[ix] );
	movss	(%rax), %xmm0	# *_19, _20
	call	_Z6r4_absf	#
	movd	%xmm0, %eax	#, tmp135
	movl	%eax, -4(%rbp)	# tmp135, dmax
.L129:
# linpackm.cpp:908:       ix = ix + incx;
	movl	-24(%rbp), %eax	# incx, tmp136
	addl	%eax, -12(%rbp)	# tmp136, ix
# linpackm.cpp:901:     for ( i = 1; i < n; i++ )
	addl	$1, -8(%rbp)	#, i
	jmp	.L130	#
.L126:
# linpackm.cpp:912:   return value;
	movl	-16(%rbp), %eax	# value, _33
.L123:
# linpackm.cpp:913: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2340:
	.size	_Z6isamaxiPfi, .-_Z6isamaxiPfi
	.globl	_Z6r4_absf
	.type	_Z6r4_absf, @function
_Z6r4_absf:
.LFB2341:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# x, x
# linpackm.cpp:939:   if ( 0.0 <= x )
	movss	-4(%rbp), %xmm0	# x, tmp89
	pxor	%xmm1, %xmm1	# tmp90
	comiss	%xmm1, %xmm0	# tmp90, tmp89
	jb	.L136	#,
# linpackm.cpp:941:     return x;
	movss	-4(%rbp), %xmm0	# x, _1
	jmp	.L134	#
.L136:
# linpackm.cpp:945:     return ( -x );
	movss	-4(%rbp), %xmm0	# x, tmp91
	movss	.LC8(%rip), %xmm1	#, tmp92
	xorps	%xmm1, %xmm0	# tmp92, _1
.L134:
# linpackm.cpp:947: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2341:
	.size	_Z6r4_absf, .-_Z6r4_absf
	.globl	_Z10r4_epsilonv
	.type	_Z10r4_epsilonv, @function
_Z10r4_epsilonv:
.LFB2342:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# linpackm.cpp:981:   r = 1.0E+00;
	movss	.LC3(%rip), %xmm0	#, tmp90
	movss	%xmm0, -4(%rbp)	# tmp90, r
.L140:
# linpackm.cpp:983:   while ( 1.0E+00 < ( float ) ( 1.0E+00 + r )  )
	movss	-4(%rbp), %xmm1	# r, tmp91
	movss	.LC3(%rip), %xmm0	#, tmp92
	addss	%xmm1, %xmm0	# tmp91, _1
# linpackm.cpp:983:   while ( 1.0E+00 < ( float ) ( 1.0E+00 + r )  )
	movss	.LC3(%rip), %xmm1	#, tmp93
	comiss	%xmm1, %xmm0	# tmp93, _1
	jbe	.L143	#,
# linpackm.cpp:985:     r = r / 2.0E+00;
	movss	-4(%rbp), %xmm0	# r, tmp95
	movss	.LC15(%rip), %xmm1	#, tmp96
	divss	%xmm1, %xmm0	# tmp96, tmp94
	movss	%xmm0, -4(%rbp)	# tmp94, r
# linpackm.cpp:983:   while ( 1.0E+00 < ( float ) ( 1.0E+00 + r )  )
	jmp	.L140	#
.L143:
# linpackm.cpp:988:   return ( 2.0E+00 * r );
	movss	-4(%rbp), %xmm0	# r, tmp97
	addss	%xmm0, %xmm0	# tmp97, _5
# linpackm.cpp:989: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2342:
	.size	_Z10r4_epsilonv, .-_Z10r4_epsilonv
	.globl	_Z6r4_maxff
	.type	_Z6r4_maxff, @function
_Z6r4_maxff:
.LFB2343:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# x, x
	movss	%xmm1, -8(%rbp)	# y, y
# linpackm.cpp:1015:   if ( y < x )
	movss	-4(%rbp), %xmm0	# x, tmp89
	comiss	-8(%rbp), %xmm0	# y, tmp89
	jbe	.L149	#,
# linpackm.cpp:1017:     return x;
	movss	-4(%rbp), %xmm0	# x, _1
	jmp	.L147	#
.L149:
# linpackm.cpp:1021:     return y;
	movss	-8(%rbp), %xmm0	# y, _1
.L147:
# linpackm.cpp:1023: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2343:
	.size	_Z6r4_maxff, .-_Z6r4_maxff
	.globl	_Z9r4_randomPi
	.type	_Z9r4_randomPi, @function
_Z9r4_randomPi:
.LFB2344:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# iseed, iseed
# linpackm.cpp:1056:   int ipw2 = 4096;
	movl	$4096, -4(%rbp)	#, ipw2
# linpackm.cpp:1061:   int m1 = 494;
	movl	$494, -8(%rbp)	#, m1
# linpackm.cpp:1062:   int m2 = 322;
	movl	$322, -12(%rbp)	#, m2
# linpackm.cpp:1063:   int m3 = 2508;
	movl	$2508, -16(%rbp)	#, m3
# linpackm.cpp:1064:   int m4 = 2549;
	movl	$2549, -20(%rbp)	#, m4
# linpackm.cpp:1065:   float one = 1.0;
	movss	.LC3(%rip), %xmm0	#, tmp171
	movss	%xmm0, -24(%rbp)	# tmp171, one
# linpackm.cpp:1066:   float r = 1.0 / 4096.0;
	movss	.LC16(%rip), %xmm0	#, tmp172
	movss	%xmm0, -28(%rbp)	# tmp172, r
# linpackm.cpp:1071:   it4 = iseed[3] * m4;
	movq	-56(%rbp), %rax	# iseed, tmp173
	addq	$12, %rax	#, _1
	movl	(%rax), %eax	# *_1, _2
# linpackm.cpp:1071:   it4 = iseed[3] * m4;
	imull	-20(%rbp), %eax	# m4, _3
# linpackm.cpp:1071:   it4 = iseed[3] * m4;
	movl	%eax, -48(%rbp)	# _3, it4
# linpackm.cpp:1072:   it3 = it4 / ipw2;
	movl	-48(%rbp), %eax	# it4, it4.2_4
	cltd
	idivl	-4(%rbp)	# ipw2
# linpackm.cpp:1072:   it3 = it4 / ipw2;
	movl	%eax, -44(%rbp)	# _5, it3
# linpackm.cpp:1073:   it4 = it4 - ipw2 * it3;
	movl	-48(%rbp), %edx	# it4, it4.3_6
# linpackm.cpp:1073:   it4 = it4 - ipw2 * it3;
	movl	-44(%rbp), %eax	# it3, it3.4_7
	imull	-4(%rbp), %eax	# ipw2, _8
# linpackm.cpp:1073:   it4 = it4 - ipw2 * it3;
	subl	%eax, %edx	# _8, it4.3_6
	movl	%edx, %eax	# it4.3_6, _9
# linpackm.cpp:1073:   it4 = it4 - ipw2 * it3;
	movl	%eax, -48(%rbp)	# _9, it4
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	movq	-56(%rbp), %rax	# iseed, tmp176
	addq	$8, %rax	#, _10
	movl	(%rax), %eax	# *_10, _11
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imull	-20(%rbp), %eax	# m4, _11
	movl	%eax, %edx	# _11, _12
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	movl	-44(%rbp), %eax	# it3, it3.5_13
	addl	%eax, %edx	# it3.5_13, _14
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	movq	-56(%rbp), %rax	# iseed, tmp177
	addq	$12, %rax	#, _15
	movl	(%rax), %eax	# *_15, _16
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imull	-16(%rbp), %eax	# m3, _17
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	addl	%edx, %eax	# _14, _18
# linpackm.cpp:1074:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	movl	%eax, -44(%rbp)	# _18, it3
# linpackm.cpp:1075:   it2 = it3 / ipw2;
	movl	-44(%rbp), %eax	# it3, it3.6_19
	cltd
	idivl	-4(%rbp)	# ipw2
# linpackm.cpp:1075:   it2 = it3 / ipw2;
	movl	%eax, -40(%rbp)	# _20, it2
# linpackm.cpp:1076:   it3 = it3 - ipw2 * it2;
	movl	-44(%rbp), %edx	# it3, it3.7_21
# linpackm.cpp:1076:   it3 = it3 - ipw2 * it2;
	movl	-40(%rbp), %eax	# it2, it2.8_22
	imull	-4(%rbp), %eax	# ipw2, _23
# linpackm.cpp:1076:   it3 = it3 - ipw2 * it2;
	subl	%eax, %edx	# _23, it3.7_21
	movl	%edx, %eax	# it3.7_21, _24
# linpackm.cpp:1076:   it3 = it3 - ipw2 * it2;
	movl	%eax, -44(%rbp)	# _24, it3
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	movq	-56(%rbp), %rax	# iseed, tmp180
	addq	$4, %rax	#, _25
	movl	(%rax), %eax	# *_25, _26
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imull	-20(%rbp), %eax	# m4, _26
	movl	%eax, %edx	# _26, _27
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	movl	-40(%rbp), %eax	# it2, it2.9_28
	addl	%eax, %edx	# it2.9_28, _29
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	movq	-56(%rbp), %rax	# iseed, tmp181
	addq	$8, %rax	#, _30
	movl	(%rax), %eax	# *_30, _31
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imull	-16(%rbp), %eax	# m3, _32
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	addl	%eax, %edx	# _32, _33
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	movq	-56(%rbp), %rax	# iseed, tmp182
	addq	$12, %rax	#, _34
	movl	(%rax), %eax	# *_34, _35
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imull	-12(%rbp), %eax	# m2, _36
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	addl	%edx, %eax	# _33, _37
# linpackm.cpp:1077:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	movl	%eax, -40(%rbp)	# _37, it2
# linpackm.cpp:1078:   it1 = it2 / ipw2;
	movl	-40(%rbp), %eax	# it2, it2.10_38
	cltd
	idivl	-4(%rbp)	# ipw2
# linpackm.cpp:1078:   it1 = it2 / ipw2;
	movl	%eax, -36(%rbp)	# _39, it1
# linpackm.cpp:1079:   it2 = it2 - ipw2 * it1;
	movl	-40(%rbp), %edx	# it2, it2.11_40
# linpackm.cpp:1079:   it2 = it2 - ipw2 * it1;
	movl	-36(%rbp), %eax	# it1, it1.12_41
	imull	-4(%rbp), %eax	# ipw2, _42
# linpackm.cpp:1079:   it2 = it2 - ipw2 * it1;
	subl	%eax, %edx	# _42, it2.11_40
	movl	%edx, %eax	# it2.11_40, _43
# linpackm.cpp:1079:   it2 = it2 - ipw2 * it1;
	movl	%eax, -40(%rbp)	# _43, it2
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	movq	-56(%rbp), %rax	# iseed, tmp185
	movl	(%rax), %eax	# *iseed_90(D), _44
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	-20(%rbp), %eax	# m4, _44
	movl	%eax, %edx	# _44, _45
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	movl	-36(%rbp), %eax	# it1, it1.13_46
	addl	%eax, %edx	# it1.13_46, _47
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	movq	-56(%rbp), %rax	# iseed, tmp186
	addq	$4, %rax	#, _48
	movl	(%rax), %eax	# *_48, _49
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	-16(%rbp), %eax	# m3, _50
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	addl	%eax, %edx	# _50, _51
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	movq	-56(%rbp), %rax	# iseed, tmp187
	addq	$8, %rax	#, _52
	movl	(%rax), %eax	# *_52, _53
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	-12(%rbp), %eax	# m2, _54
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	addl	%eax, %edx	# _54, _55
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	movq	-56(%rbp), %rax	# iseed, tmp188
	addq	$12, %rax	#, _56
	movl	(%rax), %eax	# *_56, _57
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imull	-8(%rbp), %eax	# m1, _58
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	addl	%edx, %eax	# _55, _59
# linpackm.cpp:1080:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	movl	%eax, -36(%rbp)	# _59, it1
# linpackm.cpp:1081:   it1 = ( it1 % ipw2 );
	movl	-36(%rbp), %eax	# it1, it1.14_60
	cltd
	idivl	-4(%rbp)	# ipw2
	movl	%edx, %eax	# tmp189, _61
# linpackm.cpp:1081:   it1 = ( it1 % ipw2 );
	movl	%eax, -36(%rbp)	# _61, it1
# linpackm.cpp:1085:   iseed[0] = it1;
	movl	-36(%rbp), %edx	# it1, it1.15_62
	movq	-56(%rbp), %rax	# iseed, tmp191
	movl	%edx, (%rax)	# it1.15_62, *iseed_90(D)
# linpackm.cpp:1086:   iseed[1] = it2;
	movq	-56(%rbp), %rax	# iseed, tmp192
	leaq	4(%rax), %rdx	#, _63
# linpackm.cpp:1086:   iseed[1] = it2;
	movl	-40(%rbp), %eax	# it2, it2.16_64
	movl	%eax, (%rdx)	# it2.16_64, *_63
# linpackm.cpp:1087:   iseed[2] = it3;
	movq	-56(%rbp), %rax	# iseed, tmp193
	leaq	8(%rax), %rdx	#, _65
# linpackm.cpp:1087:   iseed[2] = it3;
	movl	-44(%rbp), %eax	# it3, it3.17_66
	movl	%eax, (%rdx)	# it3.17_66, *_65
# linpackm.cpp:1088:   iseed[3] = it4;
	movq	-56(%rbp), %rax	# iseed, tmp194
	leaq	12(%rax), %rdx	#, _67
# linpackm.cpp:1088:   iseed[3] = it4;
	movl	-48(%rbp), %eax	# it4, it4.18_68
	movl	%eax, (%rdx)	# it4.18_68, *_67
# linpackm.cpp:1093:       r * ( ( float ) ( it1 ) 
	movl	-36(%rbp), %eax	# it1, it1.19_69
	cvtsi2ss	%eax, %xmm1	# it1.19_69, _70
# linpackm.cpp:1094:     + r * ( ( float ) ( it2 ) 
	movl	-40(%rbp), %eax	# it2, it2.20_71
	cvtsi2ss	%eax, %xmm2	# it2.20_71, _72
# linpackm.cpp:1095:     + r * ( ( float ) ( it3 ) 
	movl	-44(%rbp), %eax	# it3, it3.21_73
	cvtsi2ss	%eax, %xmm3	# it3.21_73, _74
# linpackm.cpp:1096:     + r * ( ( float ) ( it4 ) ) ) ) );
	movl	-48(%rbp), %eax	# it4, it4.22_75
	cvtsi2ss	%eax, %xmm0	# it4.22_75, _76
# linpackm.cpp:1096:     + r * ( ( float ) ( it4 ) ) ) ) );
	mulss	-28(%rbp), %xmm0	# r, _77
# linpackm.cpp:1096:     + r * ( ( float ) ( it4 ) ) ) ) );
	addss	%xmm3, %xmm0	# _74, _78
# linpackm.cpp:1095:     + r * ( ( float ) ( it3 ) 
	mulss	-28(%rbp), %xmm0	# r, _79
# linpackm.cpp:1095:     + r * ( ( float ) ( it3 ) 
	addss	%xmm2, %xmm0	# _72, _80
# linpackm.cpp:1094:     + r * ( ( float ) ( it2 ) 
	mulss	-28(%rbp), %xmm0	# r, _81
# linpackm.cpp:1094:     + r * ( ( float ) ( it2 ) 
	addss	%xmm1, %xmm0	# _70, _82
# linpackm.cpp:1092:   value = 
	movss	-28(%rbp), %xmm1	# r, tmp196
	mulss	%xmm1, %xmm0	# tmp196, tmp195
	movss	%xmm0, -32(%rbp)	# tmp195, value
# linpackm.cpp:1098:   return value;
	movss	-32(%rbp), %xmm0	# value, _108
# linpackm.cpp:1099: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2344:
	.size	_Z9r4_randomPi, .-_Z9r4_randomPi
	.globl	_Z9r4mat_genii
	.type	_Z9r4mat_genii, @function
_Z9r4mat_genii:
.LFB2345:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# lda, lda
	movl	%esi, -40(%rbp)	# n, n
# linpackm.cpp:1125:   int init[4] = { 1, 2, 3, 1325 };
	movl	$1, -32(%rbp)	#, init
	movl	$2, -28(%rbp)	#, init
	movl	$3, -24(%rbp)	#, init
	movl	$1325, -20(%rbp)	#, init
# linpackm.cpp:1128:   a = new float[lda*n];
	movl	-36(%rbp), %eax	# lda, tmp102
	imull	-40(%rbp), %eax	# n, _1
	cltq
# linpackm.cpp:1128:   a = new float[lda*n];
	movabsq	$2305843009213693950, %rdx	#, tmp103
	cmpq	%rdx, %rax	# tmp103, _23
	ja	.L153	#,
# linpackm.cpp:1128:   a = new float[lda*n];
	salq	$2, %rax	#, iftmp.23_24
	movq	%rax, %rdi	# iftmp.23_24,
	call	_Znam	#
	movq	%rax, -16(%rbp)	# _26, a
# linpackm.cpp:1130:   for ( j = 1; j <= n; j++ )
	movl	$1, -8(%rbp)	#, j
	jmp	.L158	#
.L153:
# linpackm.cpp:1128:   a = new float[lda*n];
	call	__cxa_throw_bad_array_new_length	#
.L158:
# linpackm.cpp:1130:   for ( j = 1; j <= n; j++ )
	movl	-8(%rbp), %eax	# j, tmp105
	cmpl	-40(%rbp), %eax	# n, tmp105
	jg	.L155	#,
# linpackm.cpp:1132:     for ( i = 1; i <= n; i++ )
	movl	$1, -4(%rbp)	#, i
.L157:
# linpackm.cpp:1132:     for ( i = 1; i <= n; i++ )
	movl	-4(%rbp), %eax	# i, tmp106
	cmpl	-40(%rbp), %eax	# n, tmp106
	jg	.L156	#,
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	leaq	-32(%rbp), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	_Z9r4_randomPi	#
	movaps	%xmm0, %xmm1	#, _2
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	movl	-4(%rbp), %eax	# i, tmp108
	leal	-1(%rax), %edx	#, _3
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	movl	-8(%rbp), %eax	# j, tmp109
	subl	$1, %eax	#, _4
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	imull	-36(%rbp), %eax	# lda, _5
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	addl	%edx, %eax	# _3, _6
	cltq
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-16(%rbp), %rax	# a, tmp110
	addq	%rdx, %rax	# _8, _9
# linpackm.cpp:1134:       a[i-1+(j-1)*lda] = r4_random ( init ) - 0.5;
	movss	.LC17(%rip), %xmm0	#, tmp111
	subss	%xmm0, %xmm1	# tmp111, _2
	movaps	%xmm1, %xmm0	# _2, _10
	movss	%xmm0, (%rax)	# _10, *_9
# linpackm.cpp:1132:     for ( i = 1; i <= n; i++ )
	addl	$1, -4(%rbp)	#, i
	jmp	.L157	#
.L156:
# linpackm.cpp:1130:   for ( j = 1; j <= n; j++ )
	addl	$1, -8(%rbp)	#, j
	jmp	.L158	#
.L155:
# linpackm.cpp:1138:   return a;
	movq	-16(%rbp), %rax	# a, _34
# linpackm.cpp:1139: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2345:
	.size	_Z9r4mat_genii, .-_Z9r4mat_genii
	.local	_ZZ9timestampvE11time_buffer
	.comm	_ZZ9timestampvE11time_buffer,40,32
	.section	.rodata
.LC18:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.globl	_Z9timestampv
	.type	_Z9timestampv, @function
_Z9timestampv:
.LFB2346:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# linpackm.cpp:1174:   now = time ( NULL );
	movl	$0, %edi	#,
	call	time	#
# linpackm.cpp:1174:   now = time ( NULL );
	movq	%rax, -24(%rbp)	# _1, now
# linpackm.cpp:1175:   tm = localtime ( &now );
	leaq	-24(%rbp), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	call	localtime	#
	movq	%rax, -8(%rbp)	# tmp89, tm
# linpackm.cpp:1177:   len = strftime ( time_buffer, TIME_SIZE, "%d %B %Y %I:%M:%S %p", tm );
	movq	-8(%rbp), %rax	# tm, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$.LC18, %edx	#,
	movl	$40, %esi	#,
	movl	$_ZZ9timestampvE11time_buffer, %edi	#,
	call	strftime	#
	movq	%rax, -16(%rbp)	# tmp91, len
# linpackm.cpp:1181:   return;
	nop	
# linpackm.cpp:1183: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2346:
	.size	_Z9timestampv, .-_Z9timestampv
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2846:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# linpackm.cpp:1183: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L164	#,
# linpackm.cpp:1183: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L164	#,
# /usr/include/c++/8/iostream:74:   static ios_base::Init __ioinit;
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	call	__cxa_atexit	#
.L164:
# linpackm.cpp:1183: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2846:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2847:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# linpackm.cpp:1183: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2847:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 4
.LC0:
	.long	1030053954
	.align 4
.LC1:
	.long	1310682157
	.align 4
.LC3:
	.long	1065353216
	.align 16
.LC8:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC9:
	.long	1148846080
	.align 8
.LC10:
	.long	0
	.long	1093567616
	.align 8
.LC11:
	.long	0
	.long	-1074790400
	.align 8
.LC12:
	.long	0
	.long	1073741824
	.align 4
.LC14:
	.long	3212836864
	.align 4
.LC15:
	.long	1073741824
	.align 4
.LC16:
	.long	964689920
	.align 4
.LC17:
	.long	1056964608
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
