#!env bash
set -euxo pipefail

rm -Rf thevenv
python3 -m venv thevenv
./thevenv/bin/pip3 install -r requirements.txt

