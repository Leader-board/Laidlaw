	.file	"benchmark.cpp"
# GNU C++14 (GCC) version 8.3.1 20190223 (Red Hat 8.3.1-2) (x86_64-redhat-linux)
#	compiled by GNU C version 8.3.1 20190223 (Red Hat 8.3.1-2), GMP version 6.1.2, MPFR version 3.1.6-p2, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE benchmark.cpp -mtune=generic -march=x86-64
# -auxbase-strip asm/benchO1.s -O1 -fverbose-asm
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
	.globl	_Z8mainbasev
	.type	_Z8mainbasev, @function
_Z8mainbasev:
.LFB1888:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
# benchmark.cpp:17: {
	movl	$5, %r12d	#, ivtmp_99
	jmp	.L29	#
.L55:
# benchmark.cpp:33: 				k = 100;
	movq	.LC6(%rip), %rax	#, tmp229
	movq	%rax, k(%rip)	# tmp229, k
.L3:
# benchmark.cpp:42: 			while (b <= k)
	movsd	k(%rip), %xmm4	# k, k.1_93
.L30:
	movsd	x(%rip), %xmm9	# x, x_lsm.29
	movsd	y(%rip), %xmm11	# y, y_lsm.31
	movsd	k(%rip), %xmm12	# k, k.1_2
	movsd	powcheck(%rip), %xmm0	# powcheck, powcheck_lsm.25
	movl	$0, %ecx	#, c_lsm.34
	movsd	.LC0(%rip), %xmm2	#, c_lsm.33
	movl	$0, %edi	#, y_lsm.32
	movl	$0, %r8d	#, x_lsm.30
	movl	$0, %eax	#, d_lsm.28
	movapd	%xmm2, %xmm5	# c_lsm.33, d_lsm.27
	movl	$0, %r9d	#, powcheck_lsm.26
	movapd	%xmm2, %xmm10	# c_lsm.33, _16
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movapd	%xmm2, %xmm7	# _16, tmp205
	movl	$1, %esi	#, d_lsm.28
	movl	%esi, %edx	# d_lsm.28, d_lsm.28
	jmp	.L19	#
.L56:
# benchmark.cpp:35: 				k = 250;
	movq	.LC7(%rip), %rax	#, tmp230
	movq	%rax, k(%rip)	# tmp230, k
	jmp	.L3	#
.L57:
# benchmark.cpp:37: 				k = 500;
	movq	.LC8(%rip), %rax	#, tmp231
	movq	%rax, k(%rip)	# tmp231, k
	jmp	.L3	#
.L58:
# benchmark.cpp:39: 				k = 1000;
	movq	.LC9(%rip), %rax	#, tmp232
	movq	%rax, k(%rip)	# tmp232, k
	jmp	.L3	#
.L59:
# benchmark.cpp:41: 				k = 1500;
	movq	.LC10(%rip), %rax	#, tmp233
	movq	%rax, k(%rip)	# tmp233, k
	jmp	.L3	#
.L16:
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movapd	%xmm4, %xmm0	# k.1_93, tmp157
	addsd	%xmm4, %xmm0	# k.1_93, tmp157
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	addsd	%xmm7, %xmm0	# tmp205, powcheck_lsm.25
.L11:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	comisd	%xmm0, %xmm3	# powcheck_lsm.25, _8
	jb	.L45	#,
# benchmark.cpp:52: 						if (c == powcheck * powcheck)
	movapd	%xmm0, %xmm1	# powcheck_lsm.25, tmp156
	mulsd	%xmm0, %xmm1	# powcheck_lsm.25, tmp156
# benchmark.cpp:52: 						if (c == powcheck * powcheck)
	ucomisd	%xmm1, %xmm2	# tmp156, c_lsm.33
	jp	.L14	#,
	jne	.L14	#,
# benchmark.cpp:54: 							if (c >= d)
	comisd	%xmm5, %xmm2	# d_lsm.27, c_lsm.33
	jb	.L16	#,
# benchmark.cpp:55: 								d = c;
	movapd	%xmm8, %xmm5	# d_lsm.27, d_lsm.27
	movl	%edx, %eax	# d_lsm.28, d_lsm.28
	jmp	.L16	#
.L14:
# benchmark.cpp:60: 							++powcheck;
	addsd	.LC0(%rip), %xmm0	#, powcheck_lsm.25
	jmp	.L11	#
.L45:
# benchmark.cpp:62: 					++a;
	addsd	%xmm13, %xmm6	# tmp160, _15
# benchmark.cpp:44: 				while (a <= k)
	comisd	%xmm6, %xmm4	# _15, k.1_93
	jb	.L49	#,
.L18:
# benchmark.cpp:46: 					x = a * a;
	movapd	%xmm6, %xmm9	# _15, x_lsm.29
	mulsd	%xmm6, %xmm9	# _15, x_lsm.29
# benchmark.cpp:48: 					c = x + y;
	movapd	%xmm9, %xmm2	# x_lsm.29, c_lsm.33
	addsd	%xmm11, %xmm2	# y_lsm.31, c_lsm.33
# benchmark.cpp:49: 					powcheck = b;	// b as starting point. Meant to speed up execution
	movapd	%xmm10, %xmm0	# _16, powcheck_lsm.25
# benchmark.cpp:55: 								d = c;
	movapd	%xmm2, %xmm8	# c_lsm.33, d_lsm.27
	jmp	.L11	#
.L49:
	movl	%esi, %ecx	# d_lsm.28, c_lsm.34
	movl	%esi, %edi	# d_lsm.28, y_lsm.32
	movl	%esi, %r8d	# d_lsm.28, x_lsm.30
	movl	%esi, %r9d	# d_lsm.28, powcheck_lsm.26
.L8:
# benchmark.cpp:65: 				++b;
	addsd	.LC0(%rip), %xmm10	#, _16
# benchmark.cpp:42: 			while (b <= k)
	comisd	%xmm10, %xmm12	# _16, k.1_2
	jb	.L50	#,
	movapd	%xmm12, %xmm4	# k.1_2, k.1_93
.L19:
# benchmark.cpp:44: 				while (a <= k)
	comisd	.LC0(%rip), %xmm4	#, k.1_93
	jb	.L8	#,
# benchmark.cpp:47: 					y = b * b;
	movapd	%xmm10, %xmm11	# _16, y_lsm.31
	mulsd	%xmm10, %xmm11	# _16, y_lsm.31
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movapd	%xmm4, %xmm0	# k.1_93, tmp144
	mulsd	.LC11(%rip), %xmm0	#, tmp144
	movapd	%xmm0, %xmm3	# tmp144, tmp147
	movsd	.LC13(%rip), %xmm2	#, tmp150
	movapd	%xmm0, %xmm1	# tmp144, tmp148
	andpd	%xmm2, %xmm1	# tmp150, tmp148
	movsd	.LC12(%rip), %xmm6	#, tmp146
	ucomisd	%xmm1, %xmm6	# tmp148, tmp146
	jbe	.L10	#,
	cvttsd2siq	%xmm0, %rcx	# tmp144, tmp151
	pxor	%xmm1, %xmm1	# tmp148
	cvtsi2sdq	%rcx, %xmm1	# tmp151, tmp148
	cmpnlesd	%xmm1, %xmm3	#, tmp148, tmp153
	movsd	.LC0(%rip), %xmm6	#, tmp152
	andpd	%xmm6, %xmm3	# tmp152, tmp153
	addsd	%xmm1, %xmm3	# tmp148, tmp147
	andnpd	%xmm0, %xmm2	# tmp144, tmp155
	orpd	%xmm2, %xmm3	# tmp155, tmp147
.L10:
# benchmark.cpp:44: 				while (a <= k)
	movsd	.LC0(%rip), %xmm6	#, _15
# benchmark.cpp:62: 					++a;
	movapd	%xmm6, %xmm13	# _15, tmp160
	jmp	.L18	#
.L50:
	testb	%r9b, %r9b	# powcheck_lsm.26
	je	.L20	#,
	movsd	%xmm0, powcheck(%rip)	# powcheck_lsm.25, powcheck
.L20:
	testb	%al, %al	# d_lsm.28
	je	.L21	#,
	movsd	%xmm5, d(%rip)	# d_lsm.27, d
.L21:
	testb	%r8b, %r8b	# x_lsm.30
	je	.L22	#,
	movsd	%xmm9, x(%rip)	# x_lsm.29, x
.L22:
	testb	%dil, %dil	# y_lsm.32
	je	.L23	#,
	movsd	%xmm11, y(%rip)	# y_lsm.31, y
.L23:
	testb	%cl, %cl	# c_lsm.34
	je	.L24	#,
	movsd	%xmm2, c(%rip)	# c_lsm.33, c
.L24:
	movq	.LC0(%rip), %rax	#, tmp242
	movq	%rax, a(%rip)	# tmp242, a
	movsd	%xmm10, b(%rip)	# _16, b
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r13, %rax	# begin, tmp163
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp164
	cvtsi2sdq	%rax, %xmm0	# tmp163, tmp164
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, elapsed_secs
	leal	-1(%rbx), %eax	#, _113
# benchmark.cpp:71: 			if (p == 1)
	cmpl	$1, %ebx	#, p
	je	.L35	#,
# benchmark.cpp:73: 			if (p == 2)
	cmpl	$2, %ebx	#, p
	je	.L36	#,
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
	movss	12(%rsp), %xmm7	# %sfp, r
	pxor	%xmm1, %xmm1	# tmp166
	cvtss2sd	%xmm7, %xmm1	# r, tmp166
	divsd	%xmm0, %xmm1	# elapsed_secs, tmp167
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	mulsd	.LC15(%rip), %xmm1	#, tmp168
	cvtsd2ss	%xmm1, %xmm1	# tmp168, _23
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cltq
	movss	%xmm1, score(,%rax,4)	# _23, score
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	pxor	%xmm2, %xmm2	# tmp172
	cvtss2sd	totalscore(%rip), %xmm2	# totalscore, tmp172
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	cvtss2sd	%xmm1, %xmm1	# _23, tmp173
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movsd	.LC16(%rip), %xmm3	#, tmp175
	mulsd	%xmm3, %xmm1	# tmp175, tmp174
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	addsd	%xmm2, %xmm1	# tmp172, tmp176
	pxor	%xmm7, %xmm7	# tmp245
	cvtsd2ss	%xmm1, %xmm7	# tmp176, tmp245
	movss	%xmm7, totalscore(%rip)	# tmp245, totalscore
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	mulsd	%xmm3, %xmm0	# tmp175, tmp181
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	addsd	stagetime(,%rax,8), %xmm0	# stagetime, tmp183
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movsd	%xmm0, stagetime(,%rax,8)	# tmp183, stagetime
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	addl	$1, %ebx	#, p
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	cmpl	$6, %ebx	#, p
	je	.L54	#,
.L28:
# benchmark.cpp:26: 			clock_t begin = clock();
	call	clock	#
	movq	%rax, %r13	#, begin
# benchmark.cpp:27: 			a = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp134
	movsd	%xmm0, a(%rip)	# tmp134, a
# benchmark.cpp:28: 			b = 1;
	movsd	%xmm0, b(%rip)	# tmp134, b
# benchmark.cpp:29: 			c = 1;
	movsd	%xmm0, c(%rip)	# tmp134, c
# benchmark.cpp:30: 			d = 1;
	movsd	%xmm0, d(%rip)	# tmp134, d
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
	movsd	k(%rip), %xmm4	# k, k.1_93
	comisd	.LC0(%rip), %xmm4	#, k.1_93
	jnb	.L30	#,
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	subq	%r13, %rax	# begin, tmp185
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	pxor	%xmm0, %xmm0	# tmp186
	cvtsi2sdq	%rax, %xmm0	# tmp185, tmp186
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	divsd	.LC14(%rip), %xmm0	#, elapsed_secs
	leal	-1(%rbx), %eax	#, _113
	jmp	.L31	#
.L35:
# benchmark.cpp:72: 				r = 0.003;
	movl	.LC1(%rip), %ebp	#, r
	jmp	.L25	#
.L36:
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
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	subl	$1, %r12d	#, ivtmp_99
	je	.L60	#,
.L29:
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	movl	$1, %ebx	#, p
	jmp	.L28	#
.L60:
# benchmark.cpp:89: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE1888:
	.size	_Z8mainbasev, .-_Z8mainbasev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC17:
	.string	"Arguments: filename optimisationflag"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC18:
	.string	"a"
.LC19:
	.string	"%s %lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1889:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# benchmark.cpp:92: 	if (argc != 3)
	cmpl	$3, %edi	#, argc
	jne	.L64	#,
	movq	%rsi, %rbx	# argv, argv
# benchmark.cpp:97: 	mainbase();
	call	_Z8mainbasev	#
# benchmark.cpp:99: 		F = fopen(argv[1], "a");
	movq	8(%rbx), %rdi	# MEM[(char * *)argv_10(D) + 8B], MEM[(char * *)argv_10(D) + 8B]
	movl	$.LC18, %esi	#,
	call	fopen	#
	movq	%rax, %rbp	#, _12
# benchmark.cpp:100: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	pxor	%xmm0, %xmm0	# tmp96
	cvtss2sd	totalscore(%rip), %xmm0	# totalscore, tmp96
	movq	16(%rbx), %rdx	# MEM[(char * *)argv_10(D) + 16B], MEM[(char * *)argv_10(D) + 16B]
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# _12,
	movl	$1, %eax	#,
	call	fprintf	#
# benchmark.cpp:101: 		fclose(F);
	movq	%rbp, %rdi	# _12,
	call	fclose	#
# benchmark.cpp:103: }
	movl	$0, %eax	#,
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L64:
	.cfi_restore_state
# benchmark.cpp:94: 		printf("Arguments: filename optimisationflag\n");
	movl	$.LC17, %edi	#,
	call	puts	#
# benchmark.cpp:95: 		exit(-1);
	movl	$-1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE1889:
	.size	main, .-main
	.type	_GLOBAL__sub_I_check, @function
_GLOBAL__sub_I_check:
.LFB2388:
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
# benchmark.cpp:103: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE2388:
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
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
