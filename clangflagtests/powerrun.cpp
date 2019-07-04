#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <string.h>
#define opt1 76
#define opt2 6
#define opt3 2
// the set of optimisations that get enabled between O0 and O1
const char* optimisations[opt1] = { "-targetlibinfo","-tti","-tbaa","-scoped-noalias","-assumption-cache-tracker","-profile-summary-info","-forceattrs","-inferattrs","-ipsccp","-called-value-propagation","-globalopt","-domtree","-mem2reg","-deadargelim","-basicaa","-aa","-loops","-lazy-branch-prob","-lazy-block-freq","-opt-remark-emitter","-instcombine","-simplifycfg","-basiccg","-globals-aa","-prune-eh","-always-inline","-functionattrs","-sroa","-memoryssa","-early-cse-memssa","-speculative-execution","-lazy-value-info","-jump-threading","-correlated-propagation","-libcalls-shrinkwrap","-branch-prob","-block-freq","-pgo-memop-opt","-tailcallelim","-reassociate","-loop-simplify","-lcssa-verification","-lcssa","-scalar-evolution","-loop-rotate","-licm","-loop-unswitch","-indvars","-loop-idiom","-loop-deletion","-loop-unroll","-memdep","-memcpyopt","-sccp","-demanded-bits","-bdce","-dse","-postdomtree","-adce","-barrier","-rpo-functionattrs","-globaldce","-float2int","-loop-accesses","-loop-distribute","-loop-vectorize","-loop-load-elim","-alignment-from-assumptions","-strip-dead-prototypes","-loop-sink","-instsimplify","-div-rem-pairs","-verify","-ee-instrument","-early-cse","-lower-expect" };
// the set of optimisations that get enabled between O1 and O2
const char* optimisations2[opt2] = { "-inline" ,"-mldst-motion", "-gvn", "-elim-avail-extern", "-slp-vectorizer", "-constmerge" };
const char* optimisations3[opt3] = { "-callsite-splitting", "-argpromotion"};
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
		for (int i = 0; i < opt1 * 1; i++)
		{
			string str = "clang";
			str = str + " -emit-llvm -S -c linpackm.cpp -O0";
			const char* c = str.c_str();
			string str2 = "opt -S -o lin.ll linpackm.s ";
			str2 = str2 + optimisations[i % opt1];
			const char* c2 = str2.c_str();
			string str3 = "clang lin.ll -o lin -lstdc++";
			const char* c3 = str3.c_str();
			cerr << setw(31) << optimisations[i % opt1] << "  ";
			system(c);
			system(c2);
			system(c3);
			system("./lin");
		}
	}
	else if (mode == 2)
	{
		for (int i = 0; i < opt2 * 1; i++)
		{
			string str = "clang";
			str = str + " -emit-llvm -S -c linpackm.cpp -O1";
			const char* c = str.c_str();
			string str2 = "opt -S -o lin.ll linpackm.s ";
			str2 = str2 + optimisations2[i % opt2];
			const char* c2 = str2.c_str();
			string str3 = "clang lin.ll -o lin -lstdc++ -O1";
			const char* c3 = str3.c_str();
			cerr << setw(31) << optimisations2[i % opt2] << "  ";
			system(c);
			system(c2);
			system(c3);
			system("./lin");
		}
	}
	else if (mode == 3)
	{
		for (int i = 0; i < opt3 * 1; i++)
		{
			string str = "clang";
			str = str + " -emit-llvm -S -c linpackm.cpp -O2";
			const char* c = str.c_str();
			string str2 = "opt -S -o lin.ll linpackm.s ";
			str2 = str2 + optimisations3[i % opt1];
			const char* c2 = str2.c_str();
			string str3 = "clang lin.ll -o lin -lstdc++";
			const char* c3 = str3.c_str();
			cerr << setw(31) << optimisations3[i % opt3] << "  ";
			system(c);
			system(c2);
			system(c3);
			system("./lin");
		}
	}
	system("rm lin lin.ll linpackm.s"); // cleaning after finishing run
	return 0;
}