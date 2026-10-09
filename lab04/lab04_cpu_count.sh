#!/bin/bash

# Validate argument: check that $1 exists AND is a positive number

if [[ -z "$1" || ! "$1" =~ ^[0-9]+$ ]]; then
	echo "Usage: $0 <min_cpu_cores (number)>"
	exit 1
	fi

actual_cores=$(grep -c '^processor' /proc/cpuinfo)

echo "Required CPU cores: $1"
echo "Found CPU cores: $actual_cores"

# Check core count

if [ "$actual_cores" -ge "$1" ]; then
	echo "Passed: VM has enough CPU cores."
else
	echo "Failed: VM needs at least $1 cores, but only has $actual_cores."
exit 1
fi
