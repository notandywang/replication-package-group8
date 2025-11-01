#!/bin/bash
# This script compiles the main.rs file with optimizations.
rustc -C opt-level=3 -o rust_scheduler main.rs
