	.file	"benchmark.cpp"
# GNU C++14 (GCC) version 8.3.1 20190223 (Red Hat 8.3.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 8.3.1 20190223 (Red Hat 8.3.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE benchmark.cpp -mtune=generic -march=x86-64
# -auxbase-strip benchO1_fnotreeloopim.s -O1 -fno-tree-loop-im
# -fverbose-asm
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
# -ftree-loop-if-convert -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra -ftree-ter
# -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

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
	movl	$4, %r12d	#, ivtmp.43
	jmp	.L25	#
.L50:
# benchmark.cpp:33: 				k = 100;
	movq	.LC6(%rip), %rax	#, tmp245
	movq	%rax, k(%rip)	# tmp245, k
.L26:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	.LC5(%rip), %xmm7	#, tmp229
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movapd	%xmm7, %xmm8	# tmp229, tmp231
	jmp	.L20	#
.L51:
# benchmark.cpp:35: 				k = 250;
	movq	.LC7(%rip), %rax	#, tmp246
	movq	%rax, k(%rip)	# tmp246, k
	jmp	.L26	#
.L52:
# benchmark.cpp:37: 				k = 500;
	movq	.LC8(%rip), %rax	#, tmp247
	movq	%rax, k(%rip)	# tmp247, k
	jmp	.L26	#
.L53:
# benchmark.cpp:39: 				k = 1000;
	movq	.LC9(%rip), %rax	#, tmp248
	movq	%rax, k(%rip)	# tmp248, k
	jmp	.L26	#
.L54:
# benchmark.cpp:41: 				k = 1500;
	movq	.LC10(%rip), %rax	#, tmp249
	movq	%rax, k(%rip)	# tmp249, k
	jmp	.L26	#
.L16:
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	addsd	%xmm2, %xmm2	# k.11_9, tmp169
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	addsd	%xmm8, %xmm2	# tmp231, tmp170
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	%xmm2, powcheck(%rip)	# tmp170, powcheck
.L10:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	k(%rip), %xmm2	# k, k.11_9
	movapd	%xmm2, %xmm1	# k.11_9, tmp156
	mulsd	%xmm6, %xmm1	# tmp157, tmp156
	movapd	%xmm1, %xmm0	# tmp156, tmp159
	movapd	%xmm1, %xmm3	# tmp156, tmp160
	andpd	%xmm4, %xmm3	# tmp162, tmp160
	ucomisd	%xmm3, %xmm5	# tmp160, tmp158
	jbe	.L11	#,
	cvttsd2siq	%xmm1, %rax	# tmp156, tmp163
	pxor	%xmm3, %xmm3	# tmp160
	cvtsi2sdq	%rax, %xmm3	# tmp163, tmp160
	cmpnlesd	%xmm3, %xmm0	#, tmp160, tmp165
	andpd	%xmm7, %xmm0	# tmp229, tmp165
	addsd	%xmm3, %xmm0	# tmp160, tmp159
	movapd	%xmm4, %xmm3	# tmp162, tmp167
	andnpd	%xmm1, %xmm3	# tmp156, tmp167
	orpd	%xmm3, %xmm0	# tmp167, tmp159
.L11:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	powcheck(%rip), %xmm1	# powcheck, powcheck.12_12
	comisd	%xmm1, %xmm0	# powcheck.12_12, tmp159
	jb	.L41	#,
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	movsd	c(%rip), %xmm0	# c, c.15_13
# /usr/include/c++/8/cmath:418:       return pow(__type(__x), __type(__y));
	movapd	%xmm1, %xmm3	# powcheck.12_12, tmp168
	mulsd	%xmm1, %xmm3	# powcheck.12_12, tmp168
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	ucomisd	%xmm3, %xmm0	# tmp168, c.15_13
	jp	.L14	#,
	jne	.L14	#,
# benchmark.cpp:54: 							if (c >= d)
	comisd	d(%rip), %xmm0	# d, c.15_13
	jb	.L16	#,
# benchmark.cpp:55: 								d = c;
	movsd	%xmm0, d(%rip)	# c.15_13, d
	jmp	.L16	#
.L14:
# benchmark.cpp:60: 							++powcheck;
	addsd	.LC5(%rip), %xmm1	#, tmp172
	movsd	%xmm1, powcheck(%rip)	# tmp172, powcheck
	jmp	.L10	#
.L41:
# benchmark.cpp:62: 					++a;
	movapd	%xmm9, %xmm0	# tmp175, _21
	addsd	a(%rip), %xmm0	# a, _21
	movsd	%xmm0, a(%rip)	# _21, a
# benchmark.cpp:44: 				while (a <= k)
	comisd	%xmm0, %xmm2	# _21, k.11_9
	jb	.L8	#,
.L19:
# benchmark.cpp:46: 					x = a * a;
	mulsd	%xmm0, %xmm0	# _21, _5
# benchmark.cpp:46: 					x = a * a;
	movsd	%xmm0, x(%rip)	# _5, x
# benchmark.cpp:47: 					y = b * b;
	movsd	b(%rip), %xmm1	# b, b.6_6
	movapd	%xmm1, %xmm2	# b.6_6, _7
	mulsd	%xmm1, %xmm2	# b.6_6, _7
# benchmark.cpp:47: 					y = b * b;
	movsd	%xmm2, y(%rip)	# _7, y
# benchmark.cpp:48: 					c = x + y;
	addsd	%xmm2, %xmm0	# _7, tmp155
# benchmark.cpp:48: 					c = x + y;
	movsd	%xmm0, c(%rip)	# tmp155, c
# benchmark.cpp:49: 					powcheck = b;	// b as starting point. Meant to speed up execution
	movsd	%xmm1, powcheck(%rip)	# b.6_6, powcheck
	jmp	.L10	#
.L8:
# benchmark.cpp:64: 				a = 1;
	movsd	.LC5(%rip), %xmm0	#, tmp176
	movsd	%xmm0, a(%rip)	# tmp176, a
# benchmark.cpp:65: 				++b;
	addsd	b(%rip), %xmm0	# b, _23
	movsd	%xmm0, b(%rip)	# _23, b
# benchmark.cpp:42: 			while (b <= k)
	movsd	k(%rip), %xmm1	# k, k
	comisd	%xmm0, %xmm1	# _23, k
	jb	.L45	#,
.L20:
# benchmark.cpp:44: 				while (a <= k)
	movsd	a(%rip), %xmm0	# a, _21
	movsd	k(%rip), %xmm1	# k, k
	comisd	%xmm0, %xmm1	# _21, k
	jb	.L8	#,
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	.LC11(%rip), %xmm6	#, tmp157
	movsd	.LC12(%rip), %xmm5	#, tmp158
	movsd	.LC13(%rip), %xmm4	#, tmp162
# benchmark.cpp:62: 					++a;
	movsd	.LC5(%rip), %xmm9	#, tmp175
	jmp	.L19	#
.L45:
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r14, %rax	# begin, tmp180
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp181
	cvtsi2sdq	%rax, %xmm0	# tmp180, tmp181
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, tmp181
	movsd	%xmm0, (%rsp)	# tmp181, %sfp
	leal	-1(%rbx), %r14d	#, _132
# benchmark.cpp:71: 			if (p == 1)
	cmpl	$1, %ebx	#, p
	je	.L29	#,
# benchmark.cpp:73: 			if (p == 2)
	cmpl	$2, %ebx	#, p
	je	.L30	#,
.L27:
# benchmark.cpp:75: 			if (p == 3)
	cmpl	$3, %ebx	#, p
	je	.L46	#,
.L21:
# benchmark.cpp:77: 			if (p == 4)
	cmpl	$4, %ebx	#, p
	je	.L47	#,
.L22:
# benchmark.cpp:79: 			if (p == 5)
	cmpl	$5, %ebx	#, p
	je	.L48	#,
.L23:
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movl	%ebp, 12(%rsp)	# r, %sfp
	movss	12(%rsp), %xmm7	# %sfp, r
	pxor	%xmm0, %xmm0	# tmp183
	cvtss2sd	%xmm7, %xmm0	# r, tmp183
	movsd	(%rsp), %xmm7	# %sfp, elapsed_secs
	divsd	%xmm7, %xmm0	# elapsed_secs, tmp184
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	mulsd	.LC15(%rip), %xmm0	#, tmp185
	cvtsd2ss	%xmm0, %xmm0	# tmp185, _30
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movslq	%r14d, %r14	# _132, _132
	movss	%xmm0, score(,%r14,4)	# _30, score
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	pxor	%xmm2, %xmm2	# tmp189
	cvtss2sd	totalscore(%rip), %xmm2	# totalscore, tmp189
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	cvtss2sd	%xmm0, %xmm0	# _30, tmp190
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movsd	.LC16(%rip), %xmm1	#, tmp192
	mulsd	%xmm1, %xmm0	# tmp192, tmp191
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	addsd	%xmm2, %xmm0	# tmp189, tmp193
	pxor	%xmm5, %xmm5	# tmp261
	cvtsd2ss	%xmm0, %xmm5	# tmp193, tmp261
	movss	%xmm5, totalscore(%rip)	# tmp261, totalscore
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	mulsd	%xmm7, %xmm1	# elapsed_secs, tmp198
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	addsd	stagetime(,%r14,8), %xmm1	# stagetime, tmp200
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movsd	%xmm1, stagetime(,%r14,8)	# tmp200, stagetime
# benchmark.cpp:84: 			cout << p * 4 + (q - 1) * 20 << " % complete!" << '\n'; 
	movl	%r13d, %esi	# ivtmp.33,
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
	leaq	31(%rsp), %rsi	#, tmp263
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
	leaq	31(%rsp), %rsi	#, tmp264
	movq	%rax, %rdi	# _97,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# /usr/include/c++/8/ostream:561: 	__ostream_insert(__out, __s,
	movl	$32, %edx	#,
	movl	$.LC19, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movss	.LC20(%rip), %xmm0	#, tmp208
	mulss	score(,%r14,4), %xmm0	# score, tmp206
# /usr/include/c++/8/ostream:228: 	return _M_insert(static_cast<double>(__f));
	cvtss2sd	%xmm0, %xmm0	# tmp206, tmp209
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSo9_M_insertIdEERSoT_	#
	movb	$10, 31(%rsp)	#, __c
# /usr/include/c++/8/ostream:509:     { return __ostream_insert(__out, &__c, 1); }
	movl	$1, %edx	#,
	leaq	31(%rsp), %rsi	#, tmp265
	movq	%rax, %rdi	# _99,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	addl	$1, %ebx	#, p
	addl	$4, %r13d	#, ivtmp.33
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	cmpl	$6, %ebx	#, p
	je	.L49	#,
.L24:
# benchmark.cpp:26: 			clock_t begin = clock();
	call	clock	#
	movq	%rax, %r14	#, begin
# benchmark.cpp:27: 			a = 1;
	movsd	.LC5(%rip), %xmm0	#, tmp145
	movsd	%xmm0, a(%rip)	# tmp145, a
# benchmark.cpp:28: 			b = 1;
	movsd	%xmm0, b(%rip)	# tmp145, b
# benchmark.cpp:29: 			c = 1;
	movsd	%xmm0, c(%rip)	# tmp145, c
# benchmark.cpp:30: 			d = 1;
	movsd	%xmm0, d(%rip)	# tmp145, d
# benchmark.cpp:32: 			if (p == 1)
	cmpl	$1, %ebx	#, p
	je	.L50	#,
# benchmark.cpp:34: 			else if (p == 2)
	cmpl	$2, %ebx	#, p
	je	.L51	#,
# benchmark.cpp:36: 			else if (p == 3)
	cmpl	$3, %ebx	#, p
	je	.L52	#,
# benchmark.cpp:38: 			else if (p == 4)
	cmpl	$4, %ebx	#, p
	je	.L53	#,
# benchmark.cpp:40: 			else if (p == 5)
	cmpl	$5, %ebx	#, p
	je	.L54	#,
# benchmark.cpp:42: 			while (b <= k)
	movsd	k(%rip), %xmm0	# k, k
	comisd	.LC5(%rip), %xmm0	#, k
	jnb	.L26	#,
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r14, %rax	# begin, tmp211
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp212
	cvtsi2sdq	%rax, %xmm0	# tmp211, tmp212
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, tmp212
	movsd	%xmm0, (%rsp)	# tmp212, %sfp
	leal	-1(%rbx), %r14d	#, _132
	jmp	.L27	#
.L29:
# benchmark.cpp:72: 				r = 0.003;
	movl	.LC0(%rip), %ebp	#, r
	jmp	.L21	#
.L30:
# benchmark.cpp:74: 				r = 0.035;
	movl	.LC1(%rip), %ebp	#, r
	jmp	.L22	#
.L48:
# benchmark.cpp:80: 				r = 7.536;
	movl	.LC4(%rip), %ebp	#, r
	jmp	.L23	#
.L46:
# benchmark.cpp:76: 				r = 0.273;
	movl	.LC2(%rip), %ebp	#, r
	jmp	.L23	#
.L47:
# benchmark.cpp:78: 				r = 2.225;
	movl	.LC3(%rip), %ebp	#, r
	jmp	.L23	#
.L49:
	addl	$20, %r12d	#, ivtmp.43
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	cmpl	$104, %r12d	#, ivtmp.43
	je	.L55	#,
.L25:
# benchmark.cpp:17: {
	movl	%r12d, %r13d	# ivtmp.43, ivtmp.33
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	movl	$1, %ebx	#, p
	jmp	.L24	#
.L55:
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
	jne	.L66	#,
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
	jmp	.L67	#
.L66:
# benchmark.cpp:94: 		printf("Arguments: filename optimisationflag\n");
	movl	$.LC21, %edi	#,
.LEHB2:
	call	puts	#
.LEHE2:
# benchmark.cpp:95: 		exit(-1);
	movl	$-1, %edi	#,
	call	exit	#
.L67:
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
	jmp	.L60	#
.L62:
	movq	%rax, %rdi	#, tmp109
	cmpq	$1, %rdx	#, tmp108
	je	.L59	#,
.LEHB4:
	call	_Unwind_Resume	#
.LEHE4:
.L59:
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
.L60:
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
.L63:
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
	.uleb128 .L62-.LFB1890
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB1890
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1890
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L62-.LFB1890
	.uleb128 0x1
	.uleb128 .LEHB4-.LFB1890
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1890
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L63-.LFB1890
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
