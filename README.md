# Mini-C-Compiler

This compiler is for a language called WLP4, which is a subset of C language. It performs tokenization using a discrete finite automata, LR(1) parsing using pushdown automata, semantic analysis by generating and traversing an abstract syntax tree, and code generation targeting MIPS Assembly Language. The compiler was developed for the University of Waterloo's CS 241, which is an introductory course on compilers.

Besides doing... well... what a compiler is supposed to do, this compiler also performs a wealth of complex optimizations to increase the speed of the generated executable while also minimizing the executable's size. Constant folding and constant propagation allow the programmer to write readable code without sacrificing speed; function inlining reduces overhead; and dead-code elimination means that every bit in the executable has purpose. The 'shiniest' optimization I made was allowing some simple functions to be evaluated at compile time, completely removing the need to perform the exact same calculations every time the executable is ran. As a result of all of these, the generated executables' binary sizes were reduced by 34% on average.

Due to the University's Policy 71 regulations, code to this project cannot be posted publicly.
