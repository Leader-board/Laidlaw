#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <string.h>
#define opt1 132
#define opt2 46
#define opt3 16
// the set of optimisations that get enabled between O0 and O1
const char* optimisations[opt1] = { "-faggressive-loop-optimizations",
"-fauto-inc-dec",
"-fbranch-count-reg",
"-fchkp-check-read",
"-fchkp-check-write",
"-fchkp-narrow-bounds",
"-fchkp-optimize",
"-fchkp-use-static-bounds",
"-fchkp-use-wrappers",
"-fcommon",
"-fcompare-elim",
"-fcprop-registers",
"-fdelete-null-pointer-checks",
"-fdwarf2-cfi-asm",
"-feliminate-unused-debug-types",
"-fexceptions",
"-ffp-int-builtin-inexact",
"-ffunction-cse",
"-fgcse-lm",
"-fgnu-unique",
"-fguess-branch-probability",
"-fident",
"-fif-conversion2",
"-finline",
"-finline-atomics",
"-fipa-profile",
"-fipa-pure-const",
"-fira-hoist-pressure",
"-fira-share-save-slots",
"-fivopts",
"-fkeep-static-consts",
"-flifetime-dse",
"-flto-odr-type-merging",
"-fmath-errno",
"-fmerge-debug-strings",
"-fmove-loop-invariants",
"-fpeephole",
"-fplt",
"-fprefetch-loop-arrays",
"-freorder-blocks",
"-fsched-critical-path-heuristic",
"-fsched-group-heuristic",
"-fsched-interblock",
"-fsched-rank-heuristic",
"-fsched-spec",
"-fsched-stalled-insns-dep",
"-fschedule-fusion",
"-fshow-column",
"-fshrink-wrap",
"-fsigned-zeros",
"-fsplit-ivs-in-unroller",
"-fssa-backprop",
"-fssa-phiopt",
"-fstdarg-opt",
"-fsync-libcalls",
"-ftoplevel-reorder",
"-ftree-bit-ccp",
"-ftree-builtin-call-dce",
"-ftree-ccp",
"-ftree-coalesce-vars",
"-ftree-copy-prop",
"-ftree-cselim",
"-ftree-dce",
"-ftree-dse",
"-ftree-forwprop",
"-ftree-fre",
"-ftree-loop-im",
"-ftree-loop-ivcanon",
"-ftree-parallelize-loops=4",
"-ftree-phiprop",
"-ftree-pta",
"-ftree-scev-cprop",
"-ftree-sink",
"-ftree-slsr",
"-ftree-sra",
"-funit-at-a-time",
"-funwind-tables",
"-fverbose-asm",
"-m128bit-long-double",
"-m64",
"-m80387",
"-mavx256-split-unaligned-load",
"-mfancy-math-387",
"-mfp-ret-in-387",
"-mfxsr",
"-mieee-fp",
"-mlong-double-80",
"-mmmx",
"-mno-sse4",
"-mpush-args",
"-mred-zone",
"-msse2",
"-mstv",
"-mtls-direct-seg-refs",
"-mvzeroupper" };
// the set of optimisations that get enabled between O1 and O2
const char* optimisations2[opt2] = { "-falign-functions",
"-falign-jumps",
"-falign-labels",
"-falign-loops",
"-fcaller-saves",
"-fcode-hoisting",
"-fcrossjumping",
"-fcse-follow-jumps",
"-fcse-skip-blocks",
"-fdelete-null-pointer-checks",
"-fdevirtualize",
"-fdevirtualize-speculatively",
"-fexpensive-optimizations",
"-fgcse",
"-fgcse-lm",
"-fhoist-adjacent-loads",
"-finline-small-functions",
"-findirect-inlining",
"-fipa-bit-cp",
"-fipa-cp",
"-fipa-icf",
"-fipa-ra",
"-fipa-sra",
"-fipa-vrp",
"-fisolate-erroneous-paths-dereference",
"-flra-remat",
"-foptimize-sibling-calls",
"-foptimize-strlen",
"-fpartial-inlining",
"-fpeephole2",
"-freorder-blocks-algorithm=stc",
"-freorder-blocks-and-partition",
"-freorder-functions",
"-frerun-cse-after-loop",
"-fschedule-insns",
"-fschedule-insns2",
"-fsched-interblock",
"-fsched-spec",
"-fstore-merging",
"-fstrict-aliasing",
"-fthread-jumps",
"-ftree-builtin-call-dce",
"-ftree-pre",
"-ftree-switch-conversion",
"-ftree-tail-merge",
"-ftree-vrp" };
const char* optimisations3[opt3] = { "-fgcse-after-reload",
"-finline-functions",
"-fipa-cp-clone",
"-floop-interchange",
"-floop-unroll-and-jam",
"-fpeel-loops",
"-fpredictive-commoning",
"-fsplit-paths",
"-ftree-loop-distribute-patterns",
"-ftree-loop-distribution",
"-ftree-loop-vectorize",
"-ftree-partial-pre",
"-ftree-slp-vectorize",
"-funswitch-loops",
"-fvect-cost-model",
"-fversion-loops-for-strides"
};
using namespace std;
int main(int argc, char* argv[])
{
	int mode = -1; // O1 or O2?
	cout << "OptimisationFactor                Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio\n";
	if (argc == 1)
	{
		mode = 1;
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
		printf("invalid arguments\n");
		exit(-1);
	}
	if (mode == 1)
	{
		for (int i = 0; i < opt1 * 1 - 1; i++)
		{
			string str = "g++";
			str = str + " -o " + "lin " + "linpackm.cpp " + optimisations[i % opt1];
			const char* c = str.c_str();
			cerr << setw(31) << optimisations[i % opt1] << "  ";
			system(c);
			system("./lin");
			system("rm lin");
		}
	}
	else if (mode == 2)
	{
		for (int i = 0; i < opt2 * 1 - 1; i++)
		{
			string str = "g++";
			str = str + " -o " + "lin " + "linpackm.cpp " + optimisations2[i % opt2] + " -O1";
			const char* c = str.c_str();
			cerr << setw(31) << optimisations2[i % opt2] << "  ";
			system(c);
			system("./lin");
		}
	}
	else if (mode == 3)
	{
		for (int i = 0; i < opt3 * 1 - 1; i++)
		{
			string str = "g++";
			str = str + " -o " + "lin " + "linpackm.cpp " + optimisations3[i % opt3] + " -O2";
			const char* c = str.c_str();
			cerr << setw(31) << optimisations3[i % opt3] << "  ";
			system(c);
			system("./lin");
		}
	}
	return 0;
}