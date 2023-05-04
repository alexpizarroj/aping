#!/usr/bin/env bash
set -euxo pipefail

if [[ -z "${VIRTUAL_ENV:-}" ]]; then
    source ./venv/bin/activate
fi

rm -rf ./dist || true

python setup.py clean bdist_wheel

python -m twine upload --non-interactive --repository pypi ./dist/*
