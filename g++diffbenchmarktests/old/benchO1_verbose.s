	.file	"benchmark.cpp"
# GNU C++14 (GCC) version 8.3.1 20190223 (Red Hat 8.3.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 8.3.1 20190223 (Red Hat 8.3.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE benchmark.cpp -mtune=generic -march=x86-64
# -auxbase-strip benchO1_verbose.s -O1 -fverbose-asm
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
.LFB1888:
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
# benchmark.cpp:17: {
	movl	$4, %r12d	#, ivtmp.57
	jmp	.L29	#
.L55:
# benchmark.cpp:33: 				k = 100;
	movq	.LC6(%rip), %rax	#, tmp248
	movq	%rax, k(%rip)	# tmp248, k
.L30:
# benchmark.cpp:44: 				while (a <= k)
	movsd	k(%rip), %xmm4	# k, k.3_126
	movsd	x(%rip), %xmm9	# x, x_lsm.32
	movsd	y(%rip), %xmm11	# y, y_lsm.36
	movsd	powcheck(%rip), %xmm0	# powcheck, powcheck_lsm.26
	movl	$0, %ecx	#, y_lsm.37
	movsd	.LC0(%rip), %xmm10	#, b_lsm.34
	movl	$0, %edi	#, x_lsm.33
	movl	$0, %eax	#, d_lsm.31
	movapd	%xmm10, %xmm5	# b_lsm.34, d_lsm.30
	movl	$0, %r8d	#, c_lsm.29
	movapd	%xmm10, %xmm2	# b_lsm.34, c_lsm.28
	movl	$0, %r9d	#, powcheck_lsm.27
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
# if xmm7 is 1, then what does movl do? does it go to edx which is xmm7?
	movapd	%xmm10, %xmm7	# c_lsm.28, tmp224
	movl	$1, %esi	#, d_lsm.31
	movl	%esi, %edx	# d_lsm.31, d_lsm.31
	jmp	.L19	#
.L56:
# benchmark.cpp:35: 				k = 250;
	movq	.LC7(%rip), %rax	#, tmp249
	movq	%rax, k(%rip)	# tmp249, k
	jmp	.L30	#
.L57:
# benchmark.cpp:37: 				k = 500;
	movq	.LC8(%rip), %rax	#, tmp250
	movq	%rax, k(%rip)	# tmp250, k
	jmp	.L30	#
.L58:
# benchmark.cpp:39: 				k = 1000;
	movq	.LC9(%rip), %rax	#, tmp251
	movq	%rax, k(%rip)	# tmp251, k
	jmp	.L30	#
.L59:
# benchmark.cpp:41: 				k = 1500;
	movq	.LC10(%rip), %rax	#, tmp252
	movq	%rax, k(%rip)	# tmp252, k
	jmp	.L30	#
.L16:
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movapd	%xmm4, %xmm0	# k.3_126, tmp166
	addsd	%xmm4, %xmm0	# k.3_126, tmp166
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	addsd	%xmm7, %xmm0	# tmp224, powcheck_lsm.26
.L11:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	comisd	%xmm0, %xmm3	# powcheck_lsm.26, _11
	jb	.L45	#,
# /usr/include/c++/8/cmath:418:       return pow(__type(__x), __type(__y));
	movapd	%xmm0, %xmm1	# powcheck_lsm.26, tmp165
	mulsd	%xmm0, %xmm1	# powcheck_lsm.26, tmp165
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	ucomisd	%xmm1, %xmm2	# tmp165, c_lsm.28
	jp	.L14	#,
	jne	.L14	#,
# benchmark.cpp:54: 							if (c >= d)
	comisd	%xmm5, %xmm2	# d_lsm.30, c_lsm.28
	jb	.L16	#,
# benchmark.cpp:55: 								d = c;
	movapd	%xmm8, %xmm5	# d_lsm.30, d_lsm.30
	movl	%edx, %eax	# d_lsm.31, d_lsm.31
	jmp	.L16	#
.L14:
# benchmark.cpp:60: 							++powcheck;
	addsd	.LC0(%rip), %xmm0	#, powcheck_lsm.26
	jmp	.L11	#
.L45:
# benchmark.cpp:62: 					++a;
	addsd	%xmm12, %xmm6	# tmp169, a_lsm.38
	movapd	%xmm6, %xmm1	# a_lsm.38, _21
# benchmark.cpp:44: 				while (a <= k)
	comisd	%xmm6, %xmm4	# a_lsm.38, k.3_126
	jb	.L49	#,
.L18:
# benchmark.cpp:46: 					x = a * a;
	mulsd	%xmm1, %xmm1	# _21, _21
	movapd	%xmm1, %xmm9	# _21, x_lsm.32
# benchmark.cpp:48: 					c = x + y;
	movapd	%xmm1, %xmm2	# x_lsm.32, c_lsm.28
	addsd	%xmm11, %xmm2	# y_lsm.36, c_lsm.28
# benchmark.cpp:49: 					powcheck = b;	// b as starting point. Meant to speed up execution
	movapd	%xmm10, %xmm0	# b_lsm.34, powcheck_lsm.26
# benchmark.cpp:55: 								d = c;
	movapd	%xmm2, %xmm8	# c_lsm.28, d_lsm.30
	jmp	.L11	#
.L49:
	movl	%esi, %ecx	# d_lsm.31, y_lsm.37
	movl	%esi, %edi	# d_lsm.31, x_lsm.33
	movl	%esi, %r8d	# d_lsm.31, c_lsm.29
	movl	%esi, %r9d	# d_lsm.31, powcheck_lsm.27
.L8:
# benchmark.cpp:65: 				++b;
	addsd	.LC0(%rip), %xmm10	#, b_lsm.34
# benchmark.cpp:42: 			while (b <= k)
	comisd	%xmm10, %xmm4	# b_lsm.34, k.3_126
	jb	.L50	#,
.L19:
# benchmark.cpp:44: 				while (a <= k)
	comisd	.LC0(%rip), %xmm4	#, k.3_126
	jb	.L8	#,
# benchmark.cpp:47: 					y = b * b;
	movapd	%xmm10, %xmm11	# b_lsm.34, y_lsm.36
	mulsd	%xmm10, %xmm11	# b_lsm.34, y_lsm.36
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
# Q2: what is the use of bit-wise and and XOR in this case?
	movapd	%xmm4, %xmm0	# k.3_126, tmp153
	mulsd	.LC11(%rip), %xmm0	#, tmp153
	movapd	%xmm0, %xmm3	# tmp153, tmp156
	movsd	.LC13(%rip), %xmm2	#, tmp159
	movapd	%xmm0, %xmm1	# tmp153, tmp157
	andpd	%xmm2, %xmm1	# tmp159, tmp157
	movsd	.LC12(%rip), %xmm6	#, tmp155
	ucomisd	%xmm1, %xmm6	# tmp157, tmp155
	jbe	.L10	#,
	cvttsd2siq	%xmm0, %rcx	# tmp153, tmp160
	pxor	%xmm1, %xmm1	# tmp157
	cvtsi2sdq	%rcx, %xmm1	# tmp160, tmp157
	cmpnlesd	%xmm1, %xmm3	#, tmp157, tmp162
	movsd	.LC0(%rip), %xmm6	#, tmp161
	andpd	%xmm6, %xmm3	# tmp161, tmp162
	addsd	%xmm1, %xmm3	# tmp157, tmp156
	andnpd	%xmm0, %xmm2	# tmp153, tmp164
	orpd	%xmm2, %xmm3	# tmp164, tmp156
.L10:
	movsd	.LC0(%rip), %xmm6	#, a_lsm.38
# benchmark.cpp:44: 				while (a <= k)
	movapd	%xmm6, %xmm1	# a_lsm.38, _21
# benchmark.cpp:62: 					++a;
	movapd	%xmm6, %xmm12	# _21, tmp169
	jmp	.L18	#
.L50:
	testb	%r9b, %r9b	# powcheck_lsm.27
	je	.L20	#,
	movsd	%xmm0, powcheck(%rip)	# powcheck_lsm.26, powcheck
.L20:
	testb	%r8b, %r8b	# c_lsm.29
	je	.L21	#,
	movsd	%xmm2, c(%rip)	# c_lsm.28, c
.L21:
	testb	%al, %al	# d_lsm.31
	je	.L22	#,
	movsd	%xmm5, d(%rip)	# d_lsm.30, d
.L22:
	testb	%dil, %dil	# x_lsm.33
	je	.L23	#,
	movsd	%xmm9, x(%rip)	# x_lsm.32, x
.L23:
	movsd	%xmm10, b(%rip)	# b_lsm.34, b
	testb	%cl, %cl	# y_lsm.37
	je	.L24	#,
	movsd	%xmm11, y(%rip)	# y_lsm.36, y
.L24:
	movq	.LC0(%rip), %rax	#, tmp261
	movq	%rax, a(%rip)	# tmp261, a
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r14, %rax	# begin, tmp172
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp173
	cvtsi2sdq	%rax, %xmm0	# tmp172, tmp173
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, tmp173
	movsd	%xmm0, (%rsp)	# tmp173, %sfp
	leal	-1(%rbx), %r14d	#, _6
# benchmark.cpp:71: 			if (p == 1)
	cmpl	$1, %ebx	#, p
	je	.L34	#,
# benchmark.cpp:73: 			if (p == 2)
	cmpl	$2, %ebx	#, p
	je	.L35	#,
.L31:
# benchmark.cpp:75: 			if (p == 3)
	cmpl	$3, %ebx	#, p
	je	.L51	#,
.L25:
# benchmark.cpp:77: 			if (p == 4)
	cmpl	$4, %ebx	#, p
	je	.L52	#,
.L26:
# benchmark.cpp:79: 			if (p == 5)
	cmpl	$5, %ebx	#, p
	je	.L53	#,
.L27:
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movl	%ebp, 12(%rsp)	# r, %sfp
	movss	12(%rsp), %xmm6	# %sfp, r
	pxor	%xmm0, %xmm0	# tmp175
	cvtss2sd	%xmm6, %xmm0	# r, tmp175
	movsd	(%rsp), %xmm6	# %sfp, elapsed_secs
	divsd	%xmm6, %xmm0	# elapsed_secs, tmp176
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	mulsd	.LC15(%rip), %xmm0	#, tmp177
	cvtsd2ss	%xmm0, %xmm0	# tmp177, _30
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movslq	%r14d, %r14	# _6, _6
	movss	%xmm0, score(,%r14,4)	# _30, score
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	pxor	%xmm2, %xmm2	# tmp181
	cvtss2sd	totalscore(%rip), %xmm2	# totalscore, tmp181
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	cvtss2sd	%xmm0, %xmm0	# _30, tmp182
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movsd	.LC16(%rip), %xmm1	#, tmp184
	mulsd	%xmm1, %xmm0	# tmp184, tmp183
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	addsd	%xmm2, %xmm0	# tmp181, tmp185
	pxor	%xmm7, %xmm7	# tmp266
	cvtsd2ss	%xmm0, %xmm7	# tmp185, tmp266
	movss	%xmm7, totalscore(%rip)	# tmp266, totalscore
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	mulsd	%xmm6, %xmm1	# elapsed_secs, tmp190
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	addsd	stagetime(,%r14,8), %xmm1	# stagetime, tmp192
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movsd	%xmm1, stagetime(,%r14,8)	# tmp192, stagetime
# benchmark.cpp:84: 			cout << p * 4 + (q - 1) * 20 << " % complete!" << '\n'; 
	movl	%r13d, %esi	# ivtmp.47,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movq	%rax, %r15	#, _92
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$12, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# _92,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movb	$10, 31(%rsp)	#, __c
# /usr/include/c++/8/ostream:509:     { return __ostream_insert(__out, &__c, 1); }
	movl	$1, %edx	#,
	leaq	31(%rsp), %rsi	#, tmp268
	movq	%r15, %rdi	# _92,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$28, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/ostream:221:       { return _M_insert(__f); }
	movsd	(%rsp), %xmm0	# %sfp,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movb	$10, 31(%rsp)	#, __c
# /usr/include/c++/8/ostream:509:     { return __ostream_insert(__out, &__c, 1); }
	movl	$1, %edx	#,
	leaq	31(%rsp), %rsi	#, tmp269
	movq	%rax, %rdi	# _97,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$32, %edx	#,
	movl	$.LC19, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movss	.LC20(%rip), %xmm0	#, tmp200
	mulss	score(,%r14,4), %xmm0	# score, tmp198
# /usr/include/c++/8/ostream:228: 	return _M_insert(static_cast<double>(__f));
	cvtss2sd	%xmm0, %xmm0	# tmp198, tmp201
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movb	$10, 31(%rsp)	#, __c
# /usr/include/c++/8/ostream:509:     { return __ostream_insert(__out, &__c, 1); }
	movl	$1, %edx	#,
	leaq	31(%rsp), %rsi	#, tmp270
	movq	%rax, %rdi	# _99,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	addl	$1, %ebx	#, p
	addl	$4, %r13d	#, ivtmp.47
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	cmpl	$6, %ebx	#, p
	je	.L54	#,
.L28:
# benchmark.cpp:26: 			clock_t begin = clock();
	call	clock	#
	movq	%rax, %r14	#, begin
# benchmark.cpp:27: 			a = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp143
	movsd	%xmm0, a(%rip)	# tmp143, a
# benchmark.cpp:28: 			b = 1;
	movsd	%xmm0, b(%rip)	# tmp143, b
# benchmark.cpp:29: 			c = 1;
	movsd	%xmm0, c(%rip)	# tmp143, c
# benchmark.cpp:30: 			d = 1;
	movsd	%xmm0, d(%rip)	# tmp143, d
# benchmark.cpp:32: 			if (p == 1)
	cmpl	$1, %ebx	#, p
	je	.L55	#,
# benchmark.cpp:34: 			else if (p == 2)
	cmpl	$2, %ebx	#, p
	je	.L56	#,
# benchmark.cpp:36: 			else if (p == 3)
	cmpl	$3, %ebx	#, p
	je	.L57	#,
# benchmark.cpp:38: 			else if (p == 4)
	cmpl	$4, %ebx	#, p
	je	.L58	#,
# benchmark.cpp:40: 			else if (p == 5)
	cmpl	$5, %ebx	#, p
	je	.L59	#,
# benchmark.cpp:42: 			while (b <= k)
	movsd	k(%rip), %xmm0	# k, k
	comisd	.LC0(%rip), %xmm0	#, k
	jnb	.L30	#,
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r14, %rax	# begin, tmp203
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp204
	cvtsi2sdq	%rax, %xmm0	# tmp203, tmp204
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, tmp204
	movsd	%xmm0, (%rsp)	# tmp204, %sfp
	leal	-1(%rbx), %r14d	#, _6
	jmp	.L31	#
.L34:
# benchmark.cpp:72: 				r = 0.003;
	movl	.LC1(%rip), %ebp	#, r
	jmp	.L25	#
.L35:
# benchmark.cpp:74: 				r = 0.035;
	movl	.LC2(%rip), %ebp	#, r
	jmp	.L26	#
.L53:
# benchmark.cpp:80: 				r = 7.536;
	movl	.LC5(%rip), %ebp	#, r
	jmp	.L27	#
.L51:
# benchmark.cpp:76: 				r = 0.273;
	movl	.LC3(%rip), %ebp	#, r
	jmp	.L27	#
.L52:
# benchmark.cpp:78: 				r = 2.225;
	movl	.LC4(%rip), %ebp	#, r
	jmp	.L27	#
.L54:
	addl	$20, %r12d	#, ivtmp.57
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	cmpl	$104, %r12d	#, ivtmp.57
	je	.L60	#,
.L29:
# benchmark.cpp:17: {
	movl	%r12d, %r13d	# ivtmp.57, ivtmp.47
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	movl	$1, %ebx	#, p
	jmp	.L28	#
.L60:
# benchmark.cpp:89: }
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
.LFE1888:
	.size	_Z8mainbasev, .-_Z8mainbasev
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"Arguments: filename optimisationflag"
	.section	.rodata.str1.1
.LC22:
	.string	"a"
.LC23:
	.string	"%s %lf\n"
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"Your system has scored a total of "
	.section	.rodata.str1.1
.LC25:
	.string	" points!"
.LC26:
	.string	"File error! \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1890:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1890
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# benchmark.cpp:92: 	if (argc != 3)
	cmpl	$3, %edi	#, argc
	jne	.L71	#,
	movq	%rsi, %rbx	# argv, argv
.LEHB0:
# benchmark.cpp:97: 	mainbase();
	call	_Z8mainbasev	#
.LEHE0:
# benchmark.cpp:101: 		F = fopen(argv[1], "a");
	movq	8(%rbx), %rdi	# MEM[(char * *)argv_14(D) + 8B], MEM[(char * *)argv_14(D) + 8B]
	movl	$.LC22, %esi	#,
.LEHB1:
	call	fopen	#
.LEHE1:
	jmp	.L72	#
.L71:
# benchmark.cpp:94: 		printf("Arguments: filename optimisationflag\n");
	movl	$.LC21, %edi	#,
.LEHB2:
	call	puts	#
.LEHE2:
# benchmark.cpp:95: 		exit(-1);
	movl	$-1, %edi	#,
	call	exit	#
.L72:
# benchmark.cpp:101: 		F = fopen(argv[1], "a");
	movq	%rax, %rbp	#, _16
# benchmark.cpp:102: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	pxor	%xmm0, %xmm0	# tmp103
	cvtss2sd	totalscore(%rip), %xmm0	# totalscore, tmp103
	movq	16(%rbx), %rdx	# MEM[(char * *)argv_14(D) + 16B], MEM[(char * *)argv_14(D) + 16B]
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# _16,
	movl	$1, %eax	#,
.LEHB3:
	call	fprintf	#
# benchmark.cpp:103: 		fclose(F);
	movq	%rbp, %rdi	# _16,
	call	fclose	#
.LEHE3:
	jmp	.L65	#
.L67:
	movq	%rax, %rdi	#, tmp109
	cmpq	$1, %rdx	#, tmp108
	je	.L64	#,
.LEHB4:
	call	_Unwind_Resume	#
.LEHE4:
.L64:
# /usr/include/c++/8/bits/exception.h:60:   class exception
	movq	$_ZTVSt9exception+16, 8(%rsp)	#, e._vptr.exception
# benchmark.cpp:105: 	catch (exception e)
	call	__cxa_begin_catch	#
# benchmark.cpp:107: 		cerr << "File error! \n";
	movl	$.LC26, %esi	#,
	movl	$_ZSt4cerr, %edi	#,
.LEHB5:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
.LEHE5:
# benchmark.cpp:105: 	catch (exception e)
	leaq	8(%rsp), %rdi	#, tmp117
	call	_ZNSt9exceptionD1Ev	#
	call	__cxa_end_catch	#
.L65:
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$34, %edx	#,
	movl	$.LC24, %esi	#,
	movl	$_ZSt4cout, %edi	#,
.LEHB6:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/ostream:228: 	return _M_insert(static_cast<double>(__f));
	pxor	%xmm0, %xmm0	# tmp105
	cvtss2sd	totalscore(%rip), %xmm0	# totalscore, tmp105
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movq	%rax, %rbx	#, _27
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$8, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# _27,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movb	$10, 8(%rsp)	#, __c
# /usr/include/c++/8/ostream:509:     { return __ostream_insert(__out, &__c, 1); }
	movl	$1, %edx	#,
	leaq	8(%rsp), %rsi	#, tmp116
	movq	%rbx, %rdi	# _27,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# benchmark.cpp:110: }
	movl	$0, %eax	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L68:
	.cfi_restore_state
	movq	%rax, %rbx	#, tmp113
# benchmark.cpp:105: 	catch (exception e)
	leaq	8(%rsp), %rdi	#, tmp118
	call	_ZNSt9exceptionD1Ev	#
	call	__cxa_end_catch	#
	movq	%rbx, %rdi	# tmp113,
	call	_Unwind_Resume	#
.LEHE6:
	.cfi_endproc
.LFE1890:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA1890:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1890-.LLSDATTD1890
.LLSDATTD1890:
	.byte	0x1
	.uleb128 .LLSDACSE1890-.LLSDACSB1890
.LLSDACSB1890:
	.uleb128 .LEHB0-.LFB1890
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1890
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L67-.LFB1890
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB1890
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1890
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L67-.LFB1890
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB1890
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1890
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L68-.LFB1890
	.uleb128 0
	.uleb128 .LEHB6-.LFB1890
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE1890:
	.byte	0x1
	.byte	0
	.align 4
	.long	_ZTISt9exception
.LLSDATT1890:
	.text
	.size	main, .-main
	.type	_GLOBAL__sub_I_check, @function
_GLOBAL__sub_I_check:
.LFB2398:
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
# benchmark.cpp:110: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE2398:
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
.LC0:
	.long	0
	.long	1072693248
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	994352038
	.align 4
.LC2:
	.long	1024416809
	.align 4
.LC3:
	.long	1049347752
	.align 4
.LC4:
	.long	1074685542
	.align 4
.LC5:
	.long	1089545961
	.section	.rodata.cst8
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
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
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
