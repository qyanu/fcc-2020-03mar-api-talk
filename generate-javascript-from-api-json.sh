#!/bin/bash
set -eu

MYDIR="$(realpath "$(dirname "$0")")"

cd "$MYDIR"
mkdir -p src-generated/javascript
cd external
cd swagger-codegen
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar \
    generate \
    -i ../../src/api.json \
    -l javascript \
    -Dmodels \
    -o ../../src-generated/javascript
