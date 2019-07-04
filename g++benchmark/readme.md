# g++ flagtests benchmark

This program used all the g++ flags as given in the f-verbose-asm output to iterate through each one of them, and output the results for each flag to a file which is user-configurable.

Files with the _exclude suffix start from an optimised config (usually /O1 only), and then the flags are of the f-no type (i.e, they disable rather than enable).