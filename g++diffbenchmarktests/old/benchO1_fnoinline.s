	.file	"benchmark.cpp"
# GNU C++14 (GCC) version 8.3.1 20190223 (Red Hat 8.3.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 8.3.1 20190223 (Red Hat 8.3.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE benchmark.cpp -mtune=generic -march=x86-64
# -auxbase-strip benchO1_fnoinline.s -O1 -fno-inline -fverbose-asm
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
# -fif-conversion -fif-conversion2 -finline-atomics
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
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2376:
	.cfi_startproc
	cmpl	$65535, %esi	#, __priority
	jne	.L4	#,
	cmpl	$1, %edi	#, __initialize_p
	je	.L7	#,
.L4:
	ret	
.L7:
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
.LFE2376:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.type	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, @function
_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_:
.LFB1867:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/8/cmath:418:       return pow(__type(__x), __type(__y));
	pxor	%xmm1, %xmm1	#
	cvtsi2sd	%edi, %xmm1	# __y,
	call	pow	#
# /usr/include/c++/8/cmath:419:     }
	addq	$8, %rsp	#,
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
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 64
# benchmark.cpp:17: {
	movl	$4, %r12d	#, ivtmp.43
	jmp	.L34	#
.L59:
# benchmark.cpp:33: 				k = 100;
	movq	.LC6(%rip), %rax	#, tmp228
	movq	%rax, k(%rip)	# tmp228, k
	jmp	.L29	#
.L60:
# benchmark.cpp:35: 				k = 250;
	movq	.LC7(%rip), %rax	#, tmp229
	movq	%rax, k(%rip)	# tmp229, k
	jmp	.L29	#
.L61:
# benchmark.cpp:37: 				k = 500;
	movq	.LC8(%rip), %rax	#, tmp230
	movq	%rax, k(%rip)	# tmp230, k
	jmp	.L29	#
.L62:
# benchmark.cpp:39: 				k = 1000;
	movq	.LC9(%rip), %rax	#, tmp231
	movq	%rax, k(%rip)	# tmp231, k
	jmp	.L29	#
.L63:
# benchmark.cpp:41: 				k = 1500;
	movq	.LC10(%rip), %rax	#, tmp232
	movq	%rax, k(%rip)	# tmp232, k
	jmp	.L29	#
.L25:
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	k(%rip), %xmm0	# k, k
	addsd	%xmm0, %xmm0	# k, tmp173
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	addsd	.LC5(%rip), %xmm0	#, tmp174
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	%xmm0, powcheck(%rip)	# tmp174, powcheck
.L19:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	k(%rip), %xmm3	# k, k.11_9
	movapd	%xmm3, %xmm0	# k.11_9, tmp160
	mulsd	.LC11(%rip), %xmm0	#, tmp160
	movapd	%xmm0, %xmm1	# tmp160, tmp163
	movsd	.LC21(%rip), %xmm2	#, tmp164
	andpd	%xmm0, %xmm2	# tmp160, tmp164
	movsd	.LC12(%rip), %xmm4	#, tmp162
	ucomisd	%xmm2, %xmm4	# tmp164, tmp162
	jbe	.L20	#,
	cvttsd2siq	%xmm0, %rax	# tmp160, tmp167
	pxor	%xmm2, %xmm2	# tmp164
	cvtsi2sdq	%rax, %xmm2	# tmp167, tmp164
	cmpnlesd	%xmm2, %xmm1	#, tmp164, tmp169
	movsd	.LC5(%rip), %xmm4	#, tmp168
	andpd	%xmm4, %xmm1	# tmp168, tmp169
	addsd	%xmm2, %xmm1	# tmp164, tmp163
	movsd	.LC21(%rip), %xmm5	#, tmp171
	andnpd	%xmm0, %xmm5	# tmp160, tmp171
	orpd	%xmm5, %xmm1	# tmp171, tmp163
.L20:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	powcheck(%rip), %xmm0	# powcheck, powcheck.12_12
	comisd	%xmm0, %xmm1	# powcheck.12_12, tmp163
	jb	.L50	#,
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	movl	$2, %edi	#,
	call	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_	#
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	movsd	c(%rip), %xmm1	# c, c.15_14
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	ucomisd	%xmm1, %xmm0	# c.15_14, _13
	jp	.L23	#,
	jne	.L23	#,
# benchmark.cpp:54: 							if (c >= d)
	comisd	d(%rip), %xmm1	# d, c.15_14
	jb	.L25	#,
# benchmark.cpp:55: 								d = c;
	movsd	%xmm1, d(%rip)	# c.15_14, d
	jmp	.L25	#
.L23:
# benchmark.cpp:60: 							++powcheck;
	movsd	.LC5(%rip), %xmm0	#, tmp178
	addsd	powcheck(%rip), %xmm0	# powcheck, tmp176
	movsd	%xmm0, powcheck(%rip)	# tmp176, powcheck
	jmp	.L19	#
.L50:
# benchmark.cpp:62: 					++a;
	movsd	.LC5(%rip), %xmm0	#, tmp180
	addsd	a(%rip), %xmm0	# a, _22
	movsd	%xmm0, a(%rip)	# _22, a
# benchmark.cpp:44: 				while (a <= k)
	comisd	%xmm0, %xmm3	# _22, k.11_9
	jb	.L17	#,
.L28:
# benchmark.cpp:46: 					x = a * a;
	mulsd	%xmm0, %xmm0	# _22, _5
# benchmark.cpp:46: 					x = a * a;
	movsd	%xmm0, x(%rip)	# _5, x
# benchmark.cpp:47: 					y = b * b;
	movsd	b(%rip), %xmm1	# b, b.6_6
	movapd	%xmm1, %xmm2	# b.6_6, _7
	mulsd	%xmm1, %xmm2	# b.6_6, _7
# benchmark.cpp:47: 					y = b * b;
	movsd	%xmm2, y(%rip)	# _7, y
# benchmark.cpp:48: 					c = x + y;
	addsd	%xmm2, %xmm0	# _7, tmp159
# benchmark.cpp:48: 					c = x + y;
	movsd	%xmm0, c(%rip)	# tmp159, c
# benchmark.cpp:49: 					powcheck = b;	// b as starting point. Meant to speed up execution
	movsd	%xmm1, powcheck(%rip)	# b.6_6, powcheck
	jmp	.L19	#
.L17:
# benchmark.cpp:64: 				a = 1;
	movsd	.LC5(%rip), %xmm0	#, tmp181
	movsd	%xmm0, a(%rip)	# tmp181, a
# benchmark.cpp:65: 				++b;
	addsd	b(%rip), %xmm0	# b, _24
	movsd	%xmm0, b(%rip)	# _24, b
# benchmark.cpp:42: 			while (b <= k)
	movsd	k(%rip), %xmm1	# k, k
	comisd	%xmm0, %xmm1	# _24, k
	jb	.L54	#,
.L29:
# benchmark.cpp:44: 				while (a <= k)
	movsd	a(%rip), %xmm0	# a, _22
	movsd	k(%rip), %xmm1	# k, k
	comisd	%xmm0, %xmm1	# _22, k
	jnb	.L28	#,
	jmp	.L17	#
.L54:
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r14, %rax	# begin, tmp185
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp186
	cvtsi2sdq	%rax, %xmm0	# tmp185, tmp186
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, tmp186
	movsd	%xmm0, (%rsp)	# tmp186, %sfp
	leal	-1(%rbx), %r14d	#, _133
# benchmark.cpp:71: 			if (p == 1)
	cmpl	$1, %ebx	#, p
	je	.L38	#,
# benchmark.cpp:73: 			if (p == 2)
	cmpl	$2, %ebx	#, p
	je	.L39	#,
.L36:
# benchmark.cpp:75: 			if (p == 3)
	cmpl	$3, %ebx	#, p
	je	.L55	#,
.L30:
# benchmark.cpp:77: 			if (p == 4)
	cmpl	$4, %ebx	#, p
	je	.L56	#,
.L31:
# benchmark.cpp:79: 			if (p == 5)
	cmpl	$5, %ebx	#, p
	je	.L57	#,
.L32:
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movl	%ebp, 12(%rsp)	# r, %sfp
	movss	12(%rsp), %xmm7	# %sfp, r
	pxor	%xmm0, %xmm0	# tmp188
	cvtss2sd	%xmm7, %xmm0	# r, tmp188
	movsd	(%rsp), %xmm6	# %sfp, elapsed_secs
	divsd	%xmm6, %xmm0	# elapsed_secs, tmp189
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	mulsd	.LC15(%rip), %xmm0	#, tmp190
	cvtsd2ss	%xmm0, %xmm0	# tmp190, _31
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movslq	%r14d, %r14	# _133, _133
	movss	%xmm0, score(,%r14,4)	# _31, score
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	pxor	%xmm2, %xmm2	# tmp194
	cvtss2sd	totalscore(%rip), %xmm2	# totalscore, tmp194
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	cvtss2sd	%xmm0, %xmm0	# _31, tmp195
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movsd	.LC16(%rip), %xmm1	#, tmp197
	mulsd	%xmm1, %xmm0	# tmp197, tmp196
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	addsd	%xmm2, %xmm0	# tmp194, tmp198
	pxor	%xmm7, %xmm7	# tmp242
	cvtsd2ss	%xmm0, %xmm7	# tmp198, tmp242
	movss	%xmm7, totalscore(%rip)	# tmp242, totalscore
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	mulsd	%xmm6, %xmm1	# elapsed_secs, tmp203
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	addsd	stagetime(,%r14,8), %xmm1	# stagetime, tmp205
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movsd	%xmm1, stagetime(,%r14,8)	# tmp205, stagetime
# benchmark.cpp:84: 			cout << p * 4 + (q - 1) * 20 << " % complete!" << '\n'; 
	movl	%r13d, %esi	# ivtmp.33,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# _94,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _96,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
# benchmark.cpp:85: 			cout << "Time taken for that stage:- " << timetake[p - 1] << '\n';
	movl	$.LC18, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# benchmark.cpp:85: 			cout << "Time taken for that stage:- " << timetake[p - 1] << '\n';
	movsd	(%rsp), %xmm0	# %sfp,
	movq	%rax, %rdi	# _99,
	call	_ZNSolsEd	#
# benchmark.cpp:85: 			cout << "Time taken for that stage:- " << timetake[p - 1] << '\n';
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _101,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movl	$.LC19, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movss	.LC20(%rip), %xmm0	#, tmp211
	mulss	score(,%r14,4), %xmm0	# score, tmp209
	movq	%rax, %rdi	# _104,
	call	_ZNSolsEf	#
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _106,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	addl	$1, %ebx	#, p
	addl	$4, %r13d	#, ivtmp.33
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	cmpl	$6, %ebx	#, p
	je	.L58	#,
.L33:
# benchmark.cpp:26: 			clock_t begin = clock();
	call	clock	#
	movq	%rax, %r14	#, begin
# benchmark.cpp:27: 			a = 1;
	movsd	.LC5(%rip), %xmm0	#, tmp149
	movsd	%xmm0, a(%rip)	# tmp149, a
# benchmark.cpp:28: 			b = 1;
	movsd	%xmm0, b(%rip)	# tmp149, b
# benchmark.cpp:29: 			c = 1;
	movsd	%xmm0, c(%rip)	# tmp149, c
# benchmark.cpp:30: 			d = 1;
	movsd	%xmm0, d(%rip)	# tmp149, d
# benchmark.cpp:32: 			if (p == 1)
	cmpl	$1, %ebx	#, p
	je	.L59	#,
# benchmark.cpp:34: 			else if (p == 2)
	cmpl	$2, %ebx	#, p
	je	.L60	#,
# benchmark.cpp:36: 			else if (p == 3)
	cmpl	$3, %ebx	#, p
	je	.L61	#,
# benchmark.cpp:38: 			else if (p == 4)
	cmpl	$4, %ebx	#, p
	je	.L62	#,
# benchmark.cpp:40: 			else if (p == 5)
	cmpl	$5, %ebx	#, p
	je	.L63	#,
# benchmark.cpp:42: 			while (b <= k)
	movsd	k(%rip), %xmm0	# k, k
	comisd	.LC5(%rip), %xmm0	#, k
	jnb	.L29	#,
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r14, %rax	# begin, tmp212
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp213
	cvtsi2sdq	%rax, %xmm0	# tmp212, tmp213
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, tmp213
	movsd	%xmm0, (%rsp)	# tmp213, %sfp
	leal	-1(%rbx), %r14d	#, _133
	jmp	.L36	#
.L38:
# benchmark.cpp:72: 				r = 0.003;
	movl	.LC0(%rip), %ebp	#, r
	jmp	.L30	#
.L39:
# benchmark.cpp:74: 				r = 0.035;
	movl	.LC1(%rip), %ebp	#, r
	jmp	.L31	#
.L57:
# benchmark.cpp:80: 				r = 7.536;
	movl	.LC4(%rip), %ebp	#, r
	jmp	.L32	#
.L55:
# benchmark.cpp:76: 				r = 0.273;
	movl	.LC2(%rip), %ebp	#, r
	jmp	.L32	#
.L56:
# benchmark.cpp:78: 				r = 2.225;
	movl	.LC3(%rip), %ebp	#, r
	jmp	.L32	#
.L58:
	addl	$20, %r12d	#, ivtmp.43
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	cmpl	$104, %r12d	#, ivtmp.43
	je	.L64	#,
.L34:
# benchmark.cpp:17: {
	movl	%r12d, %r13d	# ivtmp.43, ivtmp.33
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	movl	$1, %ebx	#, p
	jmp	.L33	#
.L64:
# benchmark.cpp:89: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
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
# /usr/include/c++/8/bits/exception.h:60:   class exception
	movq	$_ZTVSt9exception+16, (%rdi)	#, this_2(D)->_vptr.exception
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
	jne	.L76	#,
	movq	%rsi, %rbx	# argv, argv
.LEHB0:
# benchmark.cpp:97: 	mainbase();
	call	_Z8mainbasev	#
.LEHE0:
# benchmark.cpp:101: 		F = fopen(argv[1], "a");
	movq	8(%rbx), %rdi	# MEM[(char * *)argv_16(D) + 8B], MEM[(char * *)argv_16(D) + 8B]
	movl	$.LC23, %esi	#,
.LEHB1:
	call	fopen	#
.LEHE1:
	jmp	.L77	#
.L76:
# benchmark.cpp:94: 		printf("Arguments: filename optimisationflag\n");
	movl	$.LC22, %edi	#,
.LEHB2:
	call	puts	#
.LEHE2:
# benchmark.cpp:95: 		exit(-1);
	movl	$-1, %edi	#,
	call	exit	#
.L77:
# benchmark.cpp:101: 		F = fopen(argv[1], "a");
	movq	%rax, %rbp	#, _18
# benchmark.cpp:102: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	pxor	%xmm0, %xmm0	# tmp106
	cvtss2sd	totalscore(%rip), %xmm0	# totalscore, tmp106
	movq	16(%rbx), %rdx	# MEM[(char * *)argv_16(D) + 16B], MEM[(char * *)argv_16(D) + 16B]
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# _18,
	movl	$1, %eax	#,
.LEHB3:
	call	fprintf	#
# benchmark.cpp:103: 		fclose(F);
	movq	%rbp, %rdi	# _18,
	call	fclose	#
.LEHE3:
	jmp	.L70	#
.L72:
	movq	%rax, %rbx	#, tmp110
	cmpq	$1, %rdx	#, tmp109
	je	.L69	#,
	movq	%rax, %rdi	# tmp110,
.LEHB4:
	call	_Unwind_Resume	#
.LEHE4:
.L69:
# benchmark.cpp:105: 	catch (exception e)
	movq	%rax, %rdi	# tmp110,
	call	__cxa_get_exception_ptr	#
	movq	%rax, %rsi	# _6,
	leaq	8(%rsp), %rdi	#, tmp118
	call	_ZNSt9exceptionC1ERKS_	#
	movq	%rbx, %rdi	# tmp110,
	call	__cxa_begin_catch	#
# benchmark.cpp:107: 		cerr << "File error! \n";
	movl	$.LC27, %esi	#,
	movl	$_ZSt4cerr, %edi	#,
.LEHB5:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
.LEHE5:
# benchmark.cpp:105: 	catch (exception e)
	leaq	8(%rsp), %rdi	#, tmp119
	call	_ZNSt9exceptionD1Ev	#
	call	__cxa_end_catch	#
.L70:
# benchmark.cpp:109: 	cout << "Your system has scored a total of " << totalscore << " points!" << '\n';
	movl	$.LC25, %esi	#,
	movl	$_ZSt4cout, %edi	#,
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# benchmark.cpp:109: 	cout << "Your system has scored a total of " << totalscore << " points!" << '\n';
	movss	totalscore(%rip), %xmm0	# totalscore,
	movq	%rax, %rdi	# _22,
	call	_ZNSolsEf	#
# benchmark.cpp:109: 	cout << "Your system has scored a total of " << totalscore << " points!" << '\n';
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# _24,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _26,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
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
.L73:
	.cfi_restore_state
	movq	%rax, %rbx	#, tmp115
# benchmark.cpp:105: 	catch (exception e)
	leaq	8(%rsp), %rdi	#, tmp120
	call	_ZNSt9exceptionD1Ev	#
	call	__cxa_end_catch	#
	movq	%rbx, %rdi	# tmp115,
	call	_Unwind_Resume	#
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
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# benchmark.cpp:110: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	addq	$8, %rsp	#,
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
