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
	.section	.rodata
.LC15:
	.string	" % complete!"
.LC16:
	.string	"Time taken for that stage:- "
	.align 8
.LC17:
	.string	"Score obtained for that stage:- "
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
.L29:
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	cmpl	$5, -12(%rbp)	#, q
	jg	.L37	#,
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	movl	$1, -16(%rbp)	#, p
.L28:
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	cmpl	$5, -16(%rbp)	#, p
	jg	.L3	#,
# benchmark.cpp:26: 			clock_t begin = clock();
	call	clock	#
	movq	%rax, -32(%rbp)	# tmp159, begin
# benchmark.cpp:27: 			a = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp160
	movsd	%xmm0, a(%rip)	# tmp160, a
# benchmark.cpp:28: 			b = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp161
	movsd	%xmm0, b(%rip)	# tmp161, b
# benchmark.cpp:29: 			c = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp162
	movsd	%xmm0, c(%rip)	# tmp162, c
# benchmark.cpp:30: 			d = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp163
	movsd	%xmm0, d(%rip)	# tmp163, d
# benchmark.cpp:31: 			count = 0;// a and b are the base/height.
	movq	$0, -8(%rbp)	#, count
# benchmark.cpp:32: 			if (p == 1)
	cmpl	$1, -16(%rbp)	#, p
	jne	.L4	#,
# benchmark.cpp:33: 				k = 100;
	movsd	.LC1(%rip), %xmm0	#, tmp164
	movsd	%xmm0, k(%rip)	# tmp164, k
	jmp	.L22	#
.L4:
# benchmark.cpp:34: 			else if (p == 2)
	cmpl	$2, -16(%rbp)	#, p
	jne	.L6	#,
# benchmark.cpp:35: 				k = 250;
	movsd	.LC2(%rip), %xmm0	#, tmp165
	movsd	%xmm0, k(%rip)	# tmp165, k
	jmp	.L22	#
.L6:
# benchmark.cpp:36: 			else if (p == 3)
	cmpl	$3, -16(%rbp)	#, p
	jne	.L7	#,
# benchmark.cpp:37: 				k = 500;
	movsd	.LC3(%rip), %xmm0	#, tmp166
	movsd	%xmm0, k(%rip)	# tmp166, k
	jmp	.L22	#
.L7:
# benchmark.cpp:38: 			else if (p == 4)
	cmpl	$4, -16(%rbp)	#, p
	jne	.L8	#,
# benchmark.cpp:39: 				k = 1000;
	movsd	.LC4(%rip), %xmm0	#, tmp167
	movsd	%xmm0, k(%rip)	# tmp167, k
	jmp	.L22	#
.L8:
# benchmark.cpp:40: 			else if (p == 5)
	cmpl	$5, -16(%rbp)	#, p
	jne	.L22	#,
# benchmark.cpp:41: 				k = 1500;
	movsd	.LC5(%rip), %xmm0	#, tmp168
	movsd	%xmm0, k(%rip)	# tmp168, k
.L22:
# benchmark.cpp:42: 			while (b <= k)
	movsd	b(%rip), %xmm1	# b, b.0_1
	movsd	k(%rip), %xmm0	# k, k.1_2
	comisd	%xmm1, %xmm0	# b.0_1, k.1_2
	jb	.L34	#,
.L21:
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
.L20:
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	k(%rip), %xmm1	# k, k.11_15
	movsd	.LC6(%rip), %xmm0	#, tmp169
	mulsd	%xmm1, %xmm0	# k.11_15, _16
	call	ceil	#
	movapd	%xmm0, %xmm1	#, _17
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	movsd	powcheck(%rip), %xmm0	# powcheck, powcheck.12_18
	comisd	%xmm0, %xmm1	# powcheck.12_18, _17
	jb	.L36	#,
# benchmark.cpp:52: 						if (c == (powcheck * powcheck))
	movsd	powcheck(%rip), %xmm1	# powcheck, powcheck.13_19
	movsd	powcheck(%rip), %xmm0	# powcheck, powcheck.14_20
	mulsd	%xmm1, %xmm0	# powcheck.13_19, _21
# benchmark.cpp:52: 						if (c == (powcheck * powcheck))
	movsd	c(%rip), %xmm1	# c, c.15_22
# benchmark.cpp:52: 						if (c == (powcheck * powcheck))
	ucomisd	%xmm1, %xmm0	# c.15_22, _21
	jp	.L15	#,
	ucomisd	%xmm1, %xmm0	# c.15_22, _21
	jne	.L15	#,
# benchmark.cpp:54: 							if (c >= d)
	movsd	c(%rip), %xmm0	# c, c.16_23
	movsd	d(%rip), %xmm1	# d, d.17_24
# benchmark.cpp:54: 							if (c >= d)
	comisd	%xmm1, %xmm0	# d.17_24, c.16_23
	jb	.L17	#,
# benchmark.cpp:55: 								d = c;
	movsd	c(%rip), %xmm0	# c, c.18_25
	movsd	%xmm0, d(%rip)	# c.18_25, d
.L17:
# benchmark.cpp:56: 							++count;
	addq	$1, -8(%rbp)	#, count
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	k(%rip), %xmm0	# k, k.19_26
	movapd	%xmm0, %xmm1	# k.19_26, k.19_26
	addsd	%xmm0, %xmm1	# k.19_26, k.19_26
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	.LC0(%rip), %xmm0	#, tmp170
	addsd	%xmm1, %xmm0	# _27, _28
# benchmark.cpp:57: 							powcheck = 2 * k + 1;
	movsd	%xmm0, powcheck(%rip)	# _28, powcheck
	jmp	.L20	#
.L15:
# benchmark.cpp:60: 							++powcheck;
	movsd	powcheck(%rip), %xmm1	# powcheck, powcheck.20_29
	movsd	.LC0(%rip), %xmm0	#, tmp171
	addsd	%xmm1, %xmm0	# powcheck.20_29, _30
	movsd	%xmm0, powcheck(%rip)	# _30, powcheck
# benchmark.cpp:50: 					while (powcheck <= ceil(1.42 * k)) // Max value of c with relation to a and b is c = root2 of a,b
	jmp	.L20	#
.L36:
# benchmark.cpp:62: 					++a;
	movsd	a(%rip), %xmm1	# a, a.21_31
	movsd	.LC0(%rip), %xmm0	#, tmp172
	addsd	%xmm1, %xmm0	# a.21_31, _32
	movsd	%xmm0, a(%rip)	# _32, a
# benchmark.cpp:44: 				while (a <= k)
	jmp	.L21	#
.L35:
# benchmark.cpp:64: 				a = 1;
	movsd	.LC0(%rip), %xmm0	#, tmp173
	movsd	%xmm0, a(%rip)	# tmp173, a
# benchmark.cpp:65: 				++b;
	movsd	b(%rip), %xmm1	# b, b.22_33
	movsd	.LC0(%rip), %xmm0	#, tmp174
	addsd	%xmm1, %xmm0	# b.22_33, _34
	movsd	%xmm0, b(%rip)	# _34, b
# benchmark.cpp:42: 			while (b <= k)
	jmp	.L22	#
.L34:
# benchmark.cpp:67: 			clock_t end = clock();
	call	clock	#
	movq	%rax, -40(%rbp)	# tmp175, end
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	movq	-40(%rbp), %rax	# end, tmp176
	subq	-32(%rbp), %rax	# begin, _35
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	cvtsi2sdq	%rax, %xmm0	# _35, _36
# benchmark.cpp:68: 			double elapsed_secs = double(end - begin) / CLOCKS_PER_SEC;
	movsd	.LC7(%rip), %xmm1	#, tmp178
	divsd	%xmm1, %xmm0	# tmp178, tmp177
	movsd	%xmm0, -48(%rbp)	# tmp177, elapsed_secs
# benchmark.cpp:69: 			timetake[p - 1] = elapsed_secs;
	movl	-16(%rbp), %eax	# p, tmp179
	subl	$1, %eax	#, _37
# benchmark.cpp:69: 			timetake[p - 1] = elapsed_secs;
	cltq
	movsd	-48(%rbp), %xmm0	# elapsed_secs, tmp181
	movsd	%xmm0, -96(%rbp,%rax,8)	# tmp181, timetake
# benchmark.cpp:71: 			if (p == 1)
	cmpl	$1, -16(%rbp)	#, p
	jne	.L23	#,
# benchmark.cpp:72: 				r = 0.003;
	movss	.LC8(%rip), %xmm0	#, tmp182
	movss	%xmm0, -20(%rbp)	# tmp182, r
.L23:
# benchmark.cpp:73: 			if (p == 2)
	cmpl	$2, -16(%rbp)	#, p
	jne	.L24	#,
# benchmark.cpp:74: 				r = 0.035;
	movss	.LC9(%rip), %xmm0	#, tmp183
	movss	%xmm0, -20(%rbp)	# tmp183, r
.L24:
# benchmark.cpp:75: 			if (p == 3)
	cmpl	$3, -16(%rbp)	#, p
	jne	.L25	#,
# benchmark.cpp:76: 				r = 0.273;
	movss	.LC10(%rip), %xmm0	#, tmp184
	movss	%xmm0, -20(%rbp)	# tmp184, r
.L25:
# benchmark.cpp:77: 			if (p == 4)
	cmpl	$4, -16(%rbp)	#, p
	jne	.L26	#,
# benchmark.cpp:78: 				r = 2.225;
	movss	.LC11(%rip), %xmm0	#, tmp185
	movss	%xmm0, -20(%rbp)	# tmp185, r
.L26:
# benchmark.cpp:79: 			if (p == 5)
	cmpl	$5, -16(%rbp)	#, p
	jne	.L27	#,
# benchmark.cpp:80: 				r = 7.536;
	movss	.LC12(%rip), %xmm0	#, tmp186
	movss	%xmm0, -20(%rbp)	# tmp186, r
.L27:
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cvtss2sd	-20(%rbp), %xmm0	# r, _38
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movl	-16(%rbp), %eax	# p, tmp187
	subl	$1, %eax	#, _39
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cltq
	movsd	-96(%rbp,%rax,8), %xmm1	# timetake, _40
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	divsd	%xmm1, %xmm0	# _40, _38
	movapd	%xmm0, %xmm1	# _38, _41
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movsd	.LC13(%rip), %xmm0	#, tmp189
	mulsd	%xmm1, %xmm0	# _41, _42
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	movl	-16(%rbp), %eax	# p, tmp190
	subl	$1, %eax	#, _43
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cvtsd2ss	%xmm0, %xmm0	# _42, _44
# benchmark.cpp:81: 			score[p - 1] = 200 * (r / timetake[p - 1]);
	cltq
	movss	%xmm0, score(,%rax,4)	# _44, score
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movss	totalscore(%rip), %xmm0	# totalscore, totalscore.23_45
	cvtss2sd	%xmm0, %xmm1	# totalscore.23_45, _46
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movl	-16(%rbp), %eax	# p, tmp192
	subl	$1, %eax	#, _47
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	cltq
	movss	score(,%rax,4), %xmm0	# score, _48
	cvtss2sd	%xmm0, %xmm2	# _48, _49
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movsd	.LC14(%rip), %xmm0	#, tmp194
	mulsd	%xmm2, %xmm0	# _49, _50
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	addsd	%xmm1, %xmm0	# _46, _51
	cvtsd2ss	%xmm0, %xmm0	# _51, _52
# benchmark.cpp:82: 			totalscore = totalscore + (0.2 * (score[p - 1]));
	movss	%xmm0, totalscore(%rip)	# _52, totalscore
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movl	-16(%rbp), %eax	# p, tmp195
	subl	$1, %eax	#, _53
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	cltq
	movsd	stagetime(,%rax,8), %xmm1	# stagetime, _54
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movsd	-48(%rbp), %xmm2	# elapsed_secs, tmp197
	movsd	.LC14(%rip), %xmm0	#, tmp198
	mulsd	%xmm2, %xmm0	# tmp197, _55
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	movl	-16(%rbp), %eax	# p, tmp199
	subl	$1, %eax	#, _56
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	addsd	%xmm1, %xmm0	# _54, _57
# benchmark.cpp:83: 			stagetime[p - 1] = stagetime[p - 1] + 0.2 * elapsed_secs;
	cltq
	movsd	%xmm0, stagetime(,%rax,8)	# _57, stagetime
# benchmark.cpp:84: 			cout << p * 4 + (q - 1) * 20 << " % complete!" << '\n'; 
	movl	-12(%rbp), %eax	# q, tmp201
	leal	-1(%rax), %edx	#, _58
# benchmark.cpp:84: 			cout << p * 4 + (q - 1) * 20 << " % complete!" << '\n'; 
	movl	%edx, %eax	# _58, tmp202
	sall	$2, %eax	#, tmp202
	addl	%eax, %edx	# tmp202, _59
	movl	-16(%rbp), %eax	# p, tmp203
	addl	%edx, %eax	# _59, _60
# benchmark.cpp:84: 			cout << p * 4 + (q - 1) * 20 << " % complete!" << '\n'; 
	sall	$2, %eax	#, _61
	movl	%eax, %esi	# _61,
	movl	$_ZSt4cout, %edi	#,
	call	_ZNSolsEi	#
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# _62,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _63,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
# benchmark.cpp:85: 			cout << "Time taken for that stage:- " << timetake[p - 1] << '\n';
	movl	$.LC16, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movq	%rax, %rdx	#, _64
# benchmark.cpp:85: 			cout << "Time taken for that stage:- " << timetake[p - 1] << '\n';
	movl	-16(%rbp), %eax	# p, tmp204
	subl	$1, %eax	#, _65
# benchmark.cpp:85: 			cout << "Time taken for that stage:- " << timetake[p - 1] << '\n';
	cltq
	movsd	-96(%rbp,%rax,8), %xmm0	# timetake, _66
	movq	%rdx, %rdi	# _64,
	call	_ZNSolsEd	#
# benchmark.cpp:85: 			cout << "Time taken for that stage:- " << timetake[p - 1] << '\n';
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _67,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movl	$.LC17, %esi	#,
	movl	$_ZSt4cout, %edi	#,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movq	%rax, %rdx	#, _68
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movl	-16(%rbp), %eax	# p, tmp206
	subl	$1, %eax	#, _69
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	cltq
	movss	score(,%rax,4), %xmm1	# score, _70
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movss	.LC18(%rip), %xmm0	#, tmp208
	mulss	%xmm1, %xmm0	# _70, _71
	movq	%rdx, %rdi	# _68,
	call	_ZNSolsEf	#
# benchmark.cpp:86: 			cout << "Score obtained for that stage:- " << score[p - 1] * 5 << '\n';
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _72,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
# benchmark.cpp:24: 		for (int p = 1; p <= 5; p++)
	addl	$1, -16(%rbp)	#, p
	jmp	.L28	#
.L3:
# benchmark.cpp:22: 	for (int q = 1; q <= 5; q++)
	addl	$1, -12(%rbp)	#, q
	jmp	.L29	#
.L37:
# benchmark.cpp:89: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1866:
	.size	_Z8mainbasev, .-_Z8mainbasev
	.section	.text._ZNSt9exceptionC2ERKS_,"axG",@progbits,_ZNSt9exceptionC5ERKS_,comdat
	.align 2
	.weak	_ZNSt9exceptionC2ERKS_
	.type	_ZNSt9exceptionC2ERKS_, @function
_ZNSt9exceptionC2ERKS_:
.LFB1869:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# D.3158, D.3158
# /usr/include/c++/8/bits/exception.h:60:   class exception
	movl	$_ZTVSt9exception+16, %edx	#, _1
	movq	-8(%rbp), %rax	# this, tmp88
	movq	%rdx, (%rax)	# _1, this_3(D)->_vptr.exception
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1869:
	.size	_ZNSt9exceptionC2ERKS_, .-_ZNSt9exceptionC2ERKS_
	.weak	_ZNSt9exceptionC1ERKS_
	.set	_ZNSt9exceptionC1ERKS_,_ZNSt9exceptionC2ERKS_
	.section	.rodata
	.align 8
.LC19:
	.string	"Arguments: filename optimisationflag"
.LC20:
	.string	"a"
.LC21:
	.string	"%s %lf\n"
	.align 8
.LC22:
	.string	"Your system has scored a total of "
.LC23:
	.string	" points!"
.LC24:
	.string	"File error! \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1867:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA1867
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
# benchmark.cpp:92: 	if (argc != 3)
	cmpl	$3, -36(%rbp)	#, argc
	je	.L40	#,
# benchmark.cpp:94: 		printf("Arguments: filename optimisationflag\n");
	movl	$.LC19, %edi	#,
.LEHB0:
	call	puts	#
# benchmark.cpp:95: 		exit(-1);
	movl	$-1, %edi	#,
	call	exit	#
.L40:
# benchmark.cpp:97: 	mainbase();
	call	_Z8mainbasev	#
.LEHE0:
# benchmark.cpp:101: 		F = fopen(argv[1], "a");
	movq	-48(%rbp), %rax	# argv, tmp106
	addq	$8, %rax	#, _1
# benchmark.cpp:101: 		F = fopen(argv[1], "a");
	movq	(%rax), %rax	# *_1, _2
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# _2,
.LEHB1:
	call	fopen	#
	movq	%rax, -24(%rbp)	# _23, F
# benchmark.cpp:102: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	movss	totalscore(%rip), %xmm0	# totalscore, totalscore.24_3
	cvtss2sd	%xmm0, %xmm0	# totalscore.24_3, _4
# benchmark.cpp:102: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	movq	-48(%rbp), %rax	# argv, tmp107
	addq	$16, %rax	#, _5
# benchmark.cpp:102: 		fprintf(F, "%s %lf\n", argv[2], totalscore);
	movq	(%rax), %rdx	# *_5, _6
	movq	-24(%rbp), %rax	# F, tmp108
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$1, %eax	#,
	call	fprintf	#
# benchmark.cpp:103: 		fclose(F);
	movq	-24(%rbp), %rax	# F, tmp109
	movq	%rax, %rdi	# tmp109,
	call	fclose	#
.LEHE1:
.L44:
# benchmark.cpp:109: 	cout << "Your system has scored a total of " << totalscore << " points!" << '\n';
	movl	$.LC22, %esi	#,
	movl	$_ZSt4cout, %edi	#,
.LEHB2:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
# benchmark.cpp:109: 	cout << "Your system has scored a total of " << totalscore << " points!" << '\n';
	movss	totalscore(%rip), %xmm0	# totalscore, totalscore.25_11
# benchmark.cpp:109: 	cout << "Your system has scored a total of " << totalscore << " points!" << '\n';
	movq	%rax, %rdi	# _10,
	call	_ZNSolsEf	#
# benchmark.cpp:109: 	cout << "Your system has scored a total of " << totalscore << " points!" << '\n';
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# _12,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _13,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c	#
# benchmark.cpp:110: }
	movl	$0, %eax	#, _34
	jmp	.L48	#
.L46:
	movq	%rax, %rbx	#, tmp112
	movq	%rdx, %rax	#, tmp111
	cmpq	$1, %rax	#, D.48226
	je	.L43	#,
	movq	%rbx, %rax	# tmp112, D.48227
	movq	%rax, %rdi	# D.48227,
	call	_Unwind_Resume	#
.LEHE2:
.L43:
# benchmark.cpp:105: 	catch (exception e)
	movq	%rbx, %rax	# tmp112, _7
	movq	%rax, %rdi	# _7,
	call	__cxa_get_exception_ptr	#
	movq	%rax, %rdx	#, _8
	leaq	-32(%rbp), %rax	#, tmp113
	movq	%rdx, %rsi	# _8,
	movq	%rax, %rdi	# tmp113,
	call	_ZNSt9exceptionC1ERKS_	#
	movq	%rbx, %rax	# tmp112, _9
	movq	%rax, %rdi	# _9,
	call	__cxa_begin_catch	#
# benchmark.cpp:107: 		cerr << "File error! \n";
	movl	$.LC24, %esi	#,
	movl	$_ZSt4cerr, %edi	#,
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	#
.LEHE3:
# benchmark.cpp:105: 	catch (exception e)
	leaq	-32(%rbp), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_ZNSt9exceptionD1Ev	#
	call	__cxa_end_catch	#
	jmp	.L44	#
.L47:
	movq	%rax, %rbx	#, tmp117
	leaq	-32(%rbp), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	_ZNSt9exceptionD1Ev	#
	call	__cxa_end_catch	#
	movq	%rbx, %rax	# tmp116, D.48228
	movq	%rax, %rdi	# D.48228,
.LEHB4:
	call	_Unwind_Resume	#
.LEHE4:
.L48:
# benchmark.cpp:110: }
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1867:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA1867:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT1867-.LLSDATTD1867
.LLSDATTD1867:
	.byte	0x1
	.uleb128 .LLSDACSE1867-.LLSDACSB1867
.LLSDACSB1867:
	.uleb128 .LEHB0-.LFB1867
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1867
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L46-.LFB1867
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB1867
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1867
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L47-.LFB1867
	.uleb128 0
	.uleb128 .LEHB4-.LFB1867
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1867:
	.byte	0x1
	.byte	0
	.align 4
	.long	_ZTISt9exception
.LLSDATT1867:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2375:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# benchmark.cpp:110: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L51	#,
# benchmark.cpp:110: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L51	#,
# /usr/include/c++/8/iostream:74:   static ios_base::Init __ioinit;
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	call	__cxa_atexit	#
.L51:
# benchmark.cpp:110: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2375:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_check, @function
_GLOBAL__sub_I_check:
.LFB2376:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# benchmark.cpp:110: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2376:
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
	.align 4
.LC18:
	.long	1084227584
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.3.1 20190223 (Red Hat 8.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
