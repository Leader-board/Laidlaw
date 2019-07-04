	.file	"benchmark.cpp"
# GNU C++14 (GCC) version 8.3.1 20190223 (Red Hat 8.3.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 8.3.1 20190223 (Red Hat 8.3.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE benchmark.cpp -mtune=generic -march=x86-64
# -auxbase-strip benchO0.s -fverbose-asm
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
	.globl	check
	.data
	.align 4
	.type	check, @object
	.size	check, 4
check:
	.long	2
	.globl	a
	.bss
	.align 8
	.type	a, @object
	.size	a, 8
a:
	.zero	8
	.globl	b
	.align 8
	.type	b, @object
	.size	b, 8
b:
	.zero	8
	.globl	powcheck
	.align 8
	.type	powcheck, @object
	.size	powcheck, 8
powcheck:
	.zero	8
	.globl	k
	.align 8
	.type	k, @object
	.size	k, 8
k:
	.zero	8
	.globl	d
	.align 8
	.type	d, @object
	.size	d, 8
d:
	.zero	8
	.globl	x
	.align 8
	.type	x, @object
	.size	x, 8
x:
	.zero	8
	.globl	y
	.align 8
	.type	y, @object
	.size	y, 8
y:
	.zero	8
	.globl	verify
	.align 4
	.type	verify, @object
	.size	verify, 4
verify:
	.zero	4
	.globl	percentage
	.align 4
	.type	percentage, @object
	.size	percentage, 4
percentage:
	.zero	4
	.globl	c
	.align 8
	.type	c, @object
	.size	c, 8
c:
	.zero	8
	.globl	score
	.align 16
	.type	score, @object
	.size	score, 20
score:
	.zero	20
	.globl	totalscore
	.align 4
	.type	totalscore, @object
	.size	totalscore, 4
totalscore:
	.zero	4
	.globl	stagetime
	.align 32
	.type	stagetime, @object
	.size	stagetime, 40
stagetime:
	.zero	40
	.section	.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.type	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, @function
_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_:
.LFB1867:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movsd	%xmm0, -8(%rbp)	# __x, __x
	movl	%edi, -12(%rbp)	# __y, __y
# /usr/include/c++/8/cmath:418:       return pow(__type(__x), __type(__y));
	cvtsi2sd	-12(%rbp), %xmm1	# __y, _1
	movsd	-8(%rbp), %xmm0	# __x, tmp90
	call	pow	#
	movq	%xmm0, %rax	#, _6
# /usr/include/c++/8/cmath:418:       return pow(__type(__x), __type(__y));
	movq	%rax, -24(%rbp)	# _6, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp, <retval>
# /usr/include/c++/8/cmath:419:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1867:
	.size	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_, .-_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_
	.text
	.globl	_Z8mainbasev
	.type	_Z8mainbasev, @function
_Z8mainbasev:
.LFB1866:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	movl	$1, -12(%rbp)	#, q
.L30:
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	cmpl	$5, -12(%rbp)	#, q
	jg	.L37	#,
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	movl	$1, -16(%rbp)	#, p
.L29:
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	cmpl	$5, -16(%rbp)	#, p
	jg	.L5	#,
# benchmark.cpp:26: 			clock_t begin = clock();
	call	clock	#
	movq	%rax, -32(%rbp)	# tmp144, begin
# benchmark.cpp:27: 			a = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp145
	movsd	%xmm0, a(%rip)	# tmp145, a
# benchmark.cpp:28: 			b = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp146
	movsd	%xmm0, b(%rip)	# tmp146, b
# benchmark.cpp:29: 			c = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp147
	movsd	%xmm0, c(%rip)	# tmp147, c
# benchmark.cpp:30: 			d = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp148
	movsd	%xmm0, d(%rip)	# tmp148, d
# benchmark.cpp:31: 			count = 0;// a and b are the base/height.
	movq	$0, -8(%rbp)	#, count
# benchmark.cpp:32: 			if (p == 1)
	cmpl	$1, -16(%rbp)	#, p
	jne	.L6	#,
# benchmark.cpp:33: 				k = 100;
	movsd	.LC1(%rip), %xmm0	#, tmp149
	movsd	%xmm0, k(%rip)	# tmp149, k
	jmp	.L23	#
.L6:
# benchmark.cpp:34: 			else if (p == 2)
	cmpl	$2, -16(%rbp)	#, p
	jne	.L8	#,
# benchmark.cpp:35: 				k = 250;
	movsd	.LC2(%rip), %xmm0	#, tmp150
	movsd	%xmm0, k(%rip)	# tmp150, k
	jmp	.L23	#
.L8:
# benchmark.cpp:36: 			else if (p == 3)
	cmpl	$3, -16(%rbp)	#, p
	jne	.L9	#,
# benchmark.cpp:37: 				k = 500;
	movsd	.LC3(%rip), %xmm0	#, tmp151
	movsd	%xmm0, k(%rip)	# tmp151, k
	jmp	.L23	#
.L9:
# benchmark.cpp:38: 			else if (p == 4)
	cmpl	$4, -16(%rbp)	#, p
	jne	.L10	#,
# benchmark.cpp:39: 				k = 1000;
	movsd	.LC4(%rip), %xmm0	#, tmp152
	movsd	%xmm0, k(%rip)	# tmp152, k
	jmp	.L23	#
.L10:
# benchmark.cpp:40: 			else if (p == 5)
	cmpl	$5, -16(%rbp)	#, p
	jne	.L23	#,
# benchmark.cpp:41: 				k = 1500;
	movsd	.LC5(%rip), %xmm0	#, tmp153
	movsd	%xmm0, k(%rip)	# tmp153, k
.L23:
# benchmark.cpp:42: 			while (b <= k)
	movsd	b(%rip), %xmm1	# b, b.0_1
	movsd	k(%rip), %xmm0	# k, k.1_2
	comisd	%xmm1, %xmm0	# b.0_1, k.1_2
	jb	.L34	#,
.L22:
# benchmark.cpp:44: 				while (a <= k)
	movsd	a(%rip), %xmm1	# a, a.2_3
	movsd	k(%rip), %xmm0	# k, k.3_4
	comisd	%xmm1, %xmm0	# a.2_3, k.3_4
	jb	.L35	#,
# benchmark.cpp:46: 					x = a * a;
	movsd	a(%rip), %xmm1	# a, a.4_5
	movsd	a(%rip), %xmm0	# a, a.5_6
	mulsd	%xmm1, %xmm0	# a.4_5, _7
# benchmark.cpp:46: 					x = a * a;
	movsd	%xmm0, x(%rip)	# _7, x
# benchmark.cpp:47: 					y = b * b;
	movsd	b(%rip), %xmm1	# b, b.6_8
	movsd	b(%rip), %xmm0	# b, b.7_9
	mulsd	%xmm1, %xmm0	# b.6_8, _10
# benchmark.cpp:47: 					y = b * b;
	movsd	%xmm0, y(%rip)	# _10, y
# benchmark.cpp:48: 					c = x + y;
	movsd	x(%rip), %xmm1	# x, x.8_11
	movsd	y(%rip), %xmm0	# y, y.9_12
	addsd	%xmm1, %xmm0	# x.8_11, _13
# benchmark.cpp:48: 					c = x + y;
	movsd	%xmm0, c(%rip)	# _13, c
# benchmark.cpp:49: 					powcheck = b;	// b as starting point. Meant to speed up execution
	movsd	b(%rip), %xmm0	# b, b.10_14
	movsd	%xmm0, powcheck(%rip)	# b.10_14, powcheck
.L21:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	k(%rip), %xmm1	# k, k.11_15
	movsd	.LC6(%rip), %xmm0	#, tmp154
	mulsd	%xmm1, %xmm0	# k.11_15, _16
	call	ceil	#
	movapd	%xmm0, %xmm1	#, _17
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	powcheck(%rip), %xmm0	# powcheck, powcheck.12_18
	comisd	%xmm0, %xmm1	# powcheck.12_18, _17
	jb	.L36	#,
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	movsd	powcheck(%rip), %xmm0	# powcheck, powcheck.14_19
	movl	$2, %edi	#,
	call	_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_	#
	movapd	%xmm0, %xmm1	#, _20
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	movsd	c(%rip), %xmm0	# c, c.15_21
	ucomisd	%xmm0, %xmm1	# c.15_21, _20
	setnp	%al	#, tmp155
	movl	$0, %edx	#, tmp156
	ucomisd	%xmm0, %xmm1	# c.15_21, _20
	cmovne	%edx, %eax	# tmp155,, tmp156, retval.13_98
# benchmark.cpp:52: 						if (c == pow(powcheck, 2))
	testb	%al, %al	# retval.13_98
	je	.L17	#,
# benchmark.cpp:54: 							if (c >= d)
	movsd	c(%rip), %xmm0	# c, c.16_22
	movsd	d(%rip), %xmm1	# d, d.17_23
# benchmark.cpp:54: 							if (c >= d)
	comisd	%xmm1, %xmm0	# d.17_23, c.16_22
	jb	.L18	#,
# benchmark.cpp:55: 								d = c;
	movsd	c(%rip), %xmm0	# c, c.18_24
	movsd	%xmm0, d(%rip)	# c.18_24, d
.L18:
# benchmark.cpp:56: 							++count;
	addq	$1, -8(%rbp)	#, count
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	k(%rip), %xmm0	# k, k.19_25
	movapd	%xmm0, %xmm1	# k.19_25, k.19_25
	addsd	%xmm0, %xmm1	# k.19_25, k.19_25
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	.LC0(%rip), %xmm0	#, tmp157
	addsd	%xmm1, %xmm0	# _26, _27
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	%xmm0, powcheck(%rip)	# _27, powcheck
	jmp	.L21	#
.L17:
# benchmark.cpp:60: 							++powcheck;
	movsd	powcheck(%rip), %xmm1	# powcheck, powcheck.20_28
	movsd	.LC0(%rip), %xmm0	#, tmp158
	addsd	%xmm1, %xmm0	# powcheck.20_28, _29
	movsd	%xmm0, powcheck(%rip)	# _29, powcheck
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	jmp	.L21	#
.L36:
# benchmark.cpp:62: 					++a;
	movsd	a(%rip), %xmm1	# a, a.21_30
	movsd	.LC0(%rip), %xmm0	#, tmp159
	addsd	%xmm1, %xmm0	# a.21_30, _31
	movsd	%xmm0, a(%rip)	# _31, a
# benchmark.cpp:44: 				while (a <= k)
	jmp	.L22	#
.L35:
# benchmark.cpp:64: 				a = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp160
	movsd	%xmm0, a(%rip)	# tmp160, a
# benchmark.cpp:65: 				++b;
	movsd	b(%rip), %xmm1	# b, b.22_32
	movsd	.LC0(%rip), %xmm0	#, tmp161
	addsd	%xmm1, %xmm0	# b.22_32, _33
	movsd	%xmm0, b(%rip)	# _33, b
# benchmark.cpp:42: 			while (b <= k)
	jmp	.L23	#
.L34:
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
	movq	%rax, -40(%rbp)	# tmp162, end
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	movq	-40(%rbp), %rax	# end, tmp163
	subq	-32(%rbp), %rax	# begin, _34
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	cvtsi2sdq	%rax, %xmm0	# _34, _35
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	movsd	.LC7(%rip), %xmm1	#, tmp165
	divsd	%xmm1, %xmm0	# tmp165, tmp164
	movsd	%xmm0, -48(%rbp)	# tmp164, elapsed_secs
# benchmark.cpp:69: 			timetake[p - 1] = elapsed_secs;
	movl	-16(%rbp), %eax	# p, tmp166
	subl	$1, %eax	#, _36
# benchmark.cpp:69: 			timetake[p - 1] = elapsed_secs;
	cltq
	movsd	-48(%rbp), %xmm0	# elapsed_secs, tmp168
	movsd	%xmm0, -96(%rbp,%rax,8)	# tmp168, timetake
# benchmark.cpp:71: 			if (p == 1)
	cmpl	$1, -16(%rbp)	#, p
	jne	.L24	#,
# benchmark.cpp:72: 				r = 0.003;
	movss	.LC8(%rip), %xmm0	#, tmp169
	movss	%xmm0, -20(%rbp)	# tmp169, r
.L24:
# benchmark.cpp:73: 			if (p == 2)
	cmpl	$2, -16(%rbp)	#, p
	jne	.L25	#,
# benchmark.cpp:74: 				r = 0.035;
	movss	.LC9(%rip), %xmm0	#, tmp170
	movss	%xmm0, -20(%rbp)	# tmp170, r
.L25:
# benchmark.cpp:75: 			if (p == 3)
	cmpl	$3, -16(%rbp)	#, p
	jne	.L26	#,
# benchmark.cpp:76: 				r = 0.273;
	movss	.LC10(%rip), %xmm0	#, tmp171
	movss	%xmm0, -20(%rbp)	# tmp171, r
.L26:
# benchmark.cpp:77: 			if (p == 4)
	cmpl	$4, -16(%rbp)	#, p
	jne	.L27	#,
# benchmark.cpp:78: 				r = 2.225;
	movss	.LC11(%rip), %xmm0	#, tmp172
	movss	%xmm0, -20(%rbp)	# tmp172, r
.L27:
# benchmark.cpp:79: 			if (p == 5)
	cmpl	$5, -16(%rbp)	#, p
	jne	.L28	#,
# benchmark.cpp:80: 				r = 7.536;
	movss	.LC12(%rip), %xmm0	#, tmp173
	movss	%xmm0, -20(%rbp)	# tmp173, r
.L28:
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cvtss2sd	-20(%rbp), %xmm0	# r, _37
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movl	-16(%rbp), %eax	# p, tmp174
	subl	$1, %eax	#, _38
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cltq
	movsd	-96(%rbp,%rax,8), %xmm1	# timetake, _39
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	divsd	%xmm1, %xmm0	# _39, _37
	movapd	%xmm0, %xmm1	# _37, _40
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movsd	.LC13(%rip), %xmm0	#, tmp176
	mulsd	%xmm1, %xmm0	# _40, _41
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movl	-16(%rbp), %eax	# p, tmp177
	subl	$1, %eax	#, _42
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cvtsd2ss	%xmm0, %xmm0	# _41, _43
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cltq
	movss	%xmm0, score(,%rax,4)	# _43, score
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movss	totalscore(%rip), %xmm0	# totalscore, totalscore.23_44
	cvtss2sd	%xmm0, %xmm1	# totalscore.23_44, _45
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movl	-16(%rbp), %eax	# p, tmp179
	subl	$1, %eax	#, _46
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	cltq
	movss	score(,%rax,4), %xmm0	# score, _47
	cvtss2sd	%xmm0, %xmm2	# _47, _48
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movsd	.LC14(%rip), %xmm0	#, tmp181
	mulsd	%xmm2, %xmm0	# _48, _49
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	addsd	%xmm1, %xmm0	# _45, _50
	cvtsd2ss	%xmm0, %xmm0	# _50, _51
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movss	%xmm0, totalscore(%rip)	# _51, totalscore
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movl	-16(%rbp), %eax	# p, tmp182
	subl	$1, %eax	#, _52
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	cltq
	movsd	stagetime(,%rax,8), %xmm1	# stagetime, _53
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movsd	-48(%rbp), %xmm2	# elapsed_secs, tmp184
	movsd	.LC14(%rip), %xmm0	#, tmp185
	mulsd	%xmm2, %xmm0	# tmp184, _54
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movl	-16(%rbp), %eax	# p, tmp186
	subl	$1, %eax	#, _55
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	addsd	%xmm1, %xmm0	# _53, _56
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	cltq
	movsd	%xmm0, stagetime(,%rax,8)	# _56, stagetime
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	addl	$1, -16(%rbp)	#, p
	jmp	.L29	#
.L5:
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	addl	$1, -12(%rbp)	#, q
	jmp	.L30	#
.L37:
# benchmark.cpp:89: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1866:
	.size	_Z8mainbasev, .-_Z8mainbasev
	.section	.rodata
	.align 8
.LC15:
	.string	"Arguments: filename optimisationflag"
.LC16:
	.string	"a"
.LC17:
	.string	"%s %lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1868:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# argc, argc
	movq	%rsi, -32(%rbp)	# argv, argv
# benchmark.cpp:92: 	if (argc != 3)
	cmpl	$3, -20(%rbp)	#, argc
	je	.L39	#,
# benchmark.cpp:94: 		printf("Arguments: filename optimisationflag\n");
	movl	$.LC15, %edi	#,
	call	puts	#
# benchmark.cpp:95: 		exit(-1);
	movl	$-1, %edi	#,
	call	exit	#
.L39:
# benchmark.cpp:97: 	mainbase();
	call	_Z8mainbasev	#
# benchmark.cpp:99: 		F = fopen(argv[1], "a");
	movq	-32(%rbp), %rax	# argv, tmp96
	addq	$8, %rax	#, _1
# benchmark.cpp:99: 		F = fopen(argv[1], "a");
	movq	(%rax), %rax	# *_1, _2
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# _2,
	call	fopen	#
	movq	%rax, -8(%rbp)	# _14, F
# benchmark.cpp:100: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	movss	totalscore(%rip), %xmm0	# totalscore, totalscore.24_3
	cvtss2sd	%xmm0, %xmm0	# totalscore.24_3, _4
# benchmark.cpp:100: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	movq	-32(%rbp), %rax	# argv, tmp97
	addq	$16, %rax	#, _5
# benchmark.cpp:100: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	movq	(%rax), %rdx	# *_5, _6
	movq	-8(%rbp), %rax	# F, tmp98
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp98,
	movl	$1, %eax	#,
	call	fprintf	#
# benchmark.cpp:101: 		fclose(F);
	movq	-8(%rbp), %rax	# F, tmp99
	movq	%rax, %rdi	# tmp99,
	call	fclose	#
# benchmark.cpp:103: }
	movl	$0, %eax	#, _18
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1868:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2367:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# benchmark.cpp:103: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L43	#,
# benchmark.cpp:103: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L43	#,
# /usr/include/c++/8/iostream:74:   static ios_base::Init __ioinit;
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	call	__cxa_atexit	#
.L43:
# benchmark.cpp:103: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2367:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_check, @function
_GLOBAL__sub_I_check:
.LFB2368:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# benchmark.cpp:103: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2368:
	.size	_GLOBAL__sub_I_check, .-_GLOBAL__sub_I_check
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_check
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1079574528
	.align 8
.LC2:
	.long	0
	.long	1081032704
	.align 8
.LC3:
	.long	0
	.long	1082081280
	.align 8
.LC4:
	.long	0
	.long	1083129856
	.align 8
.LC5:
	.long	0
	.long	1083666432
	.align 8
.LC6:
	.long	3951369912
	.long	1073133649
	.align 8
.LC7:
	.long	0
	.long	1093567616
	.align 4
.LC8:
	.long	994352038
	.align 4
.LC9:
	.long	1024416809
	.align 4
.LC10:
	.long	1049347752
	.align 4
.LC11:
	.long	1074685542
	.align 4
.LC12:
	.long	1089545961
	.align 8
.LC13:
	.long	0
	.long	1080623104
	.align 8
.LC14:
	.long	2576980378
	.long	1070176665
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
