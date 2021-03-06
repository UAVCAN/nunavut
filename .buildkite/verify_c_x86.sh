#!/bin/bash

set -o errexit
cd "${0%/*}/.."

function run()
{
    .buildkite/verify.py --verbose --force --language c $*
}

run  --endianness any  --platform native32  --build-type Debug
run  --endianness any  --platform native32  --build-type Release
run  --endianness any  --platform native32  --build-type MinSizeRel  --disable-asserts
