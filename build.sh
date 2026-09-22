#!/bin/bash
set -xe

[ -d build ] || git clone http://192.168.121.66:3000/Abd/halium-generic-adaptation-build-tools -b halium-11.0_local build
./build/build.sh "$@"
