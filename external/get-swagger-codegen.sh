#!/bin/bash
set -eu

MYDIR="$(realpath "$(dirname "$0")")"

cd "$MYDIR"
git clone https://github.com/swagger-api/swagger-codegen.git
cd swagger-codegen
git checkout 3.0.18
mvn clean package
