#!/bin/bash
set -eu

MYDIR="$(realpath "$(dirname "$0")")"

cd "$MYDIR"

publishurl="$(cat "src/publish-url.txt")"
outfilepath="./src-generated/qrcode-github-link.png"

mkdir -p "$(dirname "$outfilepath")"
qrencode -t PNG -d 600 -o "$outfilepath" -s 50 \
    "$publishurl"
