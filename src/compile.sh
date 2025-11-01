#!/bin/bash
# This script runs all the compile scripts for C, Rust, and Zig.
# It must be run from the 'src' directory.

# Ensure the script exits if any command fails
set -e

# Get the directory of the script itself
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "--- Running C compiler script --- (in $SCRIPT_DIR/c)"
(cd "$SCRIPT_DIR/c" && ./compile.sh)

echo "
--- Running Rust compiler script --- (in $SCRIPT_DIR/rust)"
(cd "$SCRIPT_DIR/rust" && ./compile.sh)

echo "
--- Running Zig compiler script --- (in $SCRIPT_DIR/zig)"
(cd "$SCRIPT_DIR/zig" && ./compile.sh)


