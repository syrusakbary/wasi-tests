#!/bin/bash

echo "Building wasm32-wasix target"
cargo wasix build
echo "Running with Wasmer"
wasmer run target/wasm32-wasmer-wasi/debug/wasi-tests.wasm --mapdir=/test:test

