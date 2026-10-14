#!/bin/bash

### Special Variables ###

echo "All args passed to the script: $@"
echo "Number of args passed to the script: $#"
echo "first variable passed: $1"
echo "script name: $0"
echo "realpath: $(realpath $0)"
echo "who is running current script: $USER"