#!/usr/bin/env bash

# Applies sed in place on all pages/*.todo.txt files.

if [ $# -ne 1 ]; then
  >&2 echo "USAGE EXAMPLE: $0 's/from/to/g'"
  exit 1
fi

find pages \
  -type f \
  -name '*.todo.txt' \
  -exec sed -i "$1" {} \;
