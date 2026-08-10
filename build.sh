#!env bash
set -euxo pipefail

rm -Rf public/*
hugo -F
source thevenv/bin/activate
cd public
bash zineify.sh
cd ..
