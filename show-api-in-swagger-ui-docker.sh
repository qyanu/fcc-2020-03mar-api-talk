#!/bin/bash
set -eu

MYDIR="$(realpath "$(dirname "$0")")"

NAME="fcc-2020-03mar-swagger-ui"

cd "$MYDIR"
echo "building image:"
docker build \
    --tag "$NAME" \
    --file Dockerfile-swagger-ui \
    .

echo "starting container:"
docker run \
    -p 4300:8080 \
    "$NAME"
