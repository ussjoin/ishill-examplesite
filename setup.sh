#!env bash
set -euxo pipefail

rm -Rf ishill-venv
python3 -m venv ishill-venv
./ishill-venv/bin/pip3 install -r themes/ishill/requirements.txt
