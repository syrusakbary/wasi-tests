#!/bin/bash

echo "Building wasm32-wasi target"
cargo build --target=wasm32-wasi
echo "Running with Wasmer"
wasmer run target/wasm32-wasi/debug/wasi-tests.wasm --mapdir=/test:test

