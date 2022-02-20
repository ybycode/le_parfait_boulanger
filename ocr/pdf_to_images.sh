#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname $0)/.."

for i in {0..693}
do
  echo -n "$i "
  convert \
    -density 150 \
    le_parfait_boulanger.pdf\[$i\] \
    -quality 90 \
    pages/page-%03d.png 2> errors1.log
  echo OK
done
