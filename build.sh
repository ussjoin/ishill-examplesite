#!env bash
set -euxo pipefail

rm -Rf public/*
hugo -F
source ishill-venv/bin/activate
cd public
bash zineify.sh
cd ..
