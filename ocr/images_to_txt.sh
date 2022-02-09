#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname $0)/.."

for file in pages/*.png
do
  if [ -f "${file}.txt" ]; then
    # skip if a text file for this page exists already
    continue
  fi

  echo -n "$file "
  tesseract \
    --tessdata-dir \
    ./ocr/traineddata \
    "$file" \
    "$file" \
    -l fra \
    --psm 3 2> errors2.log
  echo OK
done
