#!/bin/bash -i

# Fail on errors.
set -e

export PYTHONUSERBASE=/tmp
cd /src

if [ -f requirements.txt ]; then
    pip install -r requirements.txt --user
fi # [ -f requirements.txt ]

echo "$@"

if [[ "$@" == "" ]]; then
    pyinstaller --clean -y --dist ./dist/linux --workpath /tmp *.spec
    chown -R --reference=. ./dist/linux
else
    sh -c "$@"
fi # [[ "$@" == "" ]]

