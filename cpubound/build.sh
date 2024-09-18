#!/bin/bash
echo "Running build.sh"

cd /workspace/silly-bench/cpubound/

rustc --codegen opt-level=3 -o code_rs code.rs

gcc -O3 code.c -o code_gcc

clang -O3 code.c -o code_clang

# Uncomment to also build and run the container image
# docker build -t giuliohome/cpu-bound:benchmark .
# docker run -ti --rm giuliohome/cpu-bound:benchmark