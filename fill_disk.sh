#!/bin/sh

# Allocate 10GB, but only write the first zero to
# make things fast
dd if=/dev/zero of=zeros.img count=1 bs=1 seek=$((10 * 1024 * 1024 * 1024 - 1))
