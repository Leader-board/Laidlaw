#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <string.h>
#define opt1 132
#define opt2 46
#define opt3 15
// the set of optimisations that get enabled between O0 and O1
const char* optimisations[opt1] = { "-fno-aggressive-loop-optimizations",
"-fno-asynchronous-unwind-tables",
"-fno-auto-inc-dec",
"-fno-branch-count-reg",
"-fno-chkp-check-incomplete-type",
"-fno-chkp-check-read",
"-fno-chkp-check-write",
"-fno-chkp-instrument-calls",
"-fno-chkp-narrow-bounds",
"-fno-chkp-optimize",
"-fno-chkp-store-bounds",
"-fno-chkp-use-static-bounds",
"-fno-chkp-use-static-const-bounds",
"-fno-chkp-use-wrappers",
"-fno-combine-stack-adjustments",
"-fno-common",
"-fno-compare-elim",
"-fno-cprop-registers",
"-fno-defer-pop",
"-fno-delete-null-pointer-checks",
"-fno-dwarf2-cfi-asm",
"-fno-early-inlining",
"-fno-eliminate-unused-debug-types",
"-fno-exceptions",
"-fno-forward-propagate",
"-fno-fp-int-builtin-inexact",
"-fno-function-cse",
"-fno-gcse-lm",
"-fno-gnu-runtime",
"-fno-gnu-unique",
"-fno-guess-branch-probability",
"-fno-ident",
"-fno-if-conversion",
"-fno-if-conversion2",
"-fno-inline",
"-fno-inline-atomics",
"-fno-inline-functions-called-once",
"-fno-ipa-profile",
"-fno-ipa-pure-const",
"-fno-ipa-reference",
"-fno-ira-hoist-pressure",
"-fno-ira-share-save-slots",
"-fno-ira-share-spill-slots",
"-fno-ivopts",
"-fno-keep-static-consts",
"-fno-leading-underscore",
"-fno-lifetime-dse",
"-fno-lto-odr-type-merging",
"-fno-math-errno",
"-fno-merge-constants",
"-fno-merge-debug-strings",
"-fno-move-loop-invariants",
"-fno-omit-frame-pointer",
"-fno-peephole",
"-fno-plt",
"-fno-prefetch-loop-arrays",
"-fno-reg-struct-return",
"-fno-reorder-blocks",
"-fno-sched-critical-path-heuristic",
"-fno-sched-dep-count-heuristic",
"-fno-sched-group-heuristic",
"-fno-sched-interblock",
"-fno-sched-last-insn-heuristic",
"-fno-sched-rank-heuristic",
"-fno-sched-spec",
"-fno-sched-spec-insn-heuristic",
"-fno-sched-stalled-insns-dep",
"-fno-schedule-fusion",
"-fno-semantic-interposition",
"-fno-show-column",
"-fno-shrink-wrap",
"-fno-shrink-wrap-separate",
"-fno-signed-zeros",
"-fno-split-ivs-in-unroller",
"-fno-split-wide-types",
"-fno-ssa-backprop",
"-fno-ssa-phiopt",
"-fno-stdarg-opt",
"-fno-strict-volatile-bitfields",
"-fno-sync-libcalls",
"-fno-toplevel-reorder",
"-fno-trapping-math",
"-fno-tree-bit-ccp",
"-fno-tree-builtin-call-dce",
"-fno-tree-ccp",
"-fno-tree-ch",
"-fno-tree-coalesce-vars",
"-fno-tree-copy-prop",
"-fno-tree-cselim",
"-fno-tree-dce",
"-fno-tree-dominator-opts",
"-fno-tree-dse",
"-fno-tree-forwprop",
"-fno-tree-fre",
"-fno-tree-loop-if-convert",
"-fno-tree-loop-im",
"-fno-tree-loop-ivcanon",
"-fno-tree-loop-optimize",
"-fno-tree-parallelize-loops=4",
"-fno-tree-phiprop",
"-fno-tree-pta",
"-fno-tree-reassoc",
"-fno-tree-scev-cprop",
"-fno-tree-sink",
"-fno-tree-slsr",
"-fno-tree-sra",
"-fno-tree-ter",
"-fno-unit-at-a-time",
"-fno-unwind-tables",
"-fno-verbose-asm",
"-fno-zero-initialized-in-bss",
"-mno-128bit-long-double",
"-mno-64",
"-mno-80387",
"-mno-align-stringops",
"-mno-avx256-split-unaligned-load",
"-mno-avx256-split-unaligned-store",
"-mno-fancy-math-387",
"-mno-fp-ret-in-387",
"-mno-fxsr",
"-mno-glibc",
"-mno-ieee-fp",
"-mno-long-double-80",
"-mno-mmx",
"-mno-sse4",
"-mno-push-args",
"-mno-red-zone",
"-mno-sse",
"-mno-sse2",
"-mno-stv",
"-mno-tls-direct-seg-refs",
"-mno-vzeroupper" };
// the set of optimisations that get enabled between O1 and O2
const char* optimisations2[opt2] = { "-fno-align-functions",
"-fno-align-jumps",
"-fno-align-labels",
"-fno-align-loops",
"-fno-caller-saves",
"-fno-code-hoisting",
"-fno-crossjumping",
"-fno-cse-follow-jumps",
"-fno-cse-skip-blocks",
"-fno-delete-null-pointer-checks",
"-fno-devirtualize",
"-fno-devirtualize-speculatively",
"-fno-expensive-optimizations",
"-fno-gcse",
"-fno-gcse-lm",
"-fno-hoist-adjacent-loads",
"-fno-inline-small-functions",
"-fno-indirect-inlining",
"-fno-ipa-bit-cp",
"-fno-ipa-cp",
"-fno-ipa-icf",
"-fno-ipa-ra",
"-fno-ipa-sra",
"-fno-ipa-vrp",
"-fno-isolate-erroneous-paths-dereference",
"-fno-lra-remat",
"-fno-optimize-sibling-calls",
"-fno-optimize-strlen",
"-fno-partial-inlining",
"-fno-peephole2",
"-fno-reorder-blocks-algorithm=stc",
"-fno-reorder-blocks-and-partition",
"-fno-reorder-functions",
"-fno-rerun-cse-after-loop",
"-fno-schedule-insns",
"-fno-schedule-insns2",
"-fno-sched-interblock",
"-fno-sched-spec",
"-fno-store-merging",
"-fno-strict-aliasing",
"-fno-thread-jumps",
"-fno-tree-builtin-call-dce",
"-fno-tree-pre",
"-fno-tree-switch-conversion",
"-fno-tree-tail-merge",
"-fno-tree-vrp" };
// the set of optimisations that get enabled between O2 and O3
const char* optimisations3[opt3] = { "-fno-gcse-after-reload",
"-fno-inline-functions",
"-fno-ipa-cp-clone",
"-fno-loop-interchange",
"-fno-loop-unroll-and-jam",
"-fno-peel-loops",
"-fno-predictive-commoning",
"-fno-split-paths",
"-fno-tree-loop-distribute-patterns",
"-fno-tree-loop-distribution",
"-fno-tree-loop-vectorize",
"-fno-tree-partial-pre",
"-fno-tree-slp-vectorize",
"-fno-unswitch-loops",
"-fno-vect-cost-model"
};
using namespace std;
int main(int argc, char* argv[])
{
	int mode = -1; // O1 or O2?
	if (argc !=3)
	{
		printf("Arguments: flag filename\n");
		exit(-1);
	}
	else if (strcmp(argv[1], "O0") == 0)
	{
		mode = 1;
	}
	else if (strcmp(argv[1], "O1") == 0)
	{
		mode = 2;
	}
	else if (strcmp(argv[1], "O2") == 0)
	{
		mode = 3;
	}
	else
	{
		printf("Arguments: flag filename\n");
		exit(-1);
	}
	if (mode == 1)
	{
		
		for (int i = 0; i <= opt1 * 1 - 1; i++)
		{
			system("g++ -S -o benchO0.s benchmark.cpp -O1");
			string str = "g++";
			str = str + " -S -o " + "benchO0F.s " + "benchmark.cpp -O1 " + optimisations[i % opt1];
			const char* c = str.c_str();
			system(c);
			cerr << setw(37) << optimisations[i % opt1] << '\t';
			system("diff -y --suppress-common-lines benchO0F.s benchO0.s | wc -l");
			system("rm benchO0.s benchO0F.s");
		}
	}
	else if (mode == 2)
	{
		for (int i = 0; i <= opt2 * 1 - 1; i++)
		{
			system("g++ -S -o benchO1.s benchmark.cpp -O1");
			string str = "g++";
			str = str + " -S -o " + "benchO1F.s " + "benchmark.cpp " + optimisations2[i % opt2];
			const char* c = str.c_str();
			system(c);
			cerr << optimisations2[i % opt2] << '\t';
			system("diff -y --suppress-common-lines benchO1F.s benchO1.s | wc -l");
			system("rm benchO1.s benchO1F.s");
		}
	}
	else if (mode == 3)
	{
		for (int i = 0; i <= opt3 * 1 - 1; i++)
		{
			system("g++ -S -o benchO2.s benchmark.cpp -O2");
			string str = "g++";
			str = str + " -S -o " + "benchO2F.s " + "benchmark.cpp " + optimisations3[i % opt3];
			const char* c = str.c_str();
			system(c);
			cerr << optimisations3[i % opt3] << '\t';
			system("diff -y --suppress-common-lines benchO2F.s benchO2.s | wc -l");
			system("rm benchO2.s benchO2F.s");
		}
	}

	return 0;
}
