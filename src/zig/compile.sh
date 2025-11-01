#!/bin/bash
# This script compiles the main.zig file.

echo "Compiling original Zig implementation (main.zig)..."
zig build-exe main.zig -O ReleaseFast -femit-bin=zig_scheduler

echo "
Done. Created executable 'zig_scheduler'."
