#!/usr/bin/env bash

# Renames a given filename to mark is as 'done', for instance
# from pages/page-003.todo.txt to pages/page-003.done.txt.
# Files named *.done.txt are ignored by the `sed_all.sh` script.

if [ $# -ne 1 ]; then
  >&2 echo "USAGE EXAMPLE: $0 pages/page-019.todo.txt"
  exit 1
fi

orig="$1"
dest="${orig%.todo.txt}".done.txt
mv "$orig" "$dest"
