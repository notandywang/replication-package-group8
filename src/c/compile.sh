#!/bin/bash
# This script compiles the main.c file in multiple ways and translates it to Zig.

echo "Compiling with gcc..."
# gcc -O3 -o c_scheduler_gcc main.c -lpthread

gcc -O3 -march=native -mtune=native -fomit-frame-pointer -flto -lpthread -o c_scheduler_gcc main.c

echo "\nCompiling with zig cc..."
# zig cc -O3 -o c_scheduler_zig_cc main.c -lpthread -lc

zig cc -O3 -march=native -fomit-frame-pointer -flto -lpthread -lc -o c_scheduler_zig_cc main.c

clang -O3 -march=native -mtune=native -fomit-frame-pointer -flto \
    -funroll-loops -ffast-math -lpthread -o c_scheduler_clang main.c


echo "\nDone. Created executables 'c_scheduler_gcc', 'c_scheduler_zig_cc', and the translated file '../zig/main_c.zig'."

