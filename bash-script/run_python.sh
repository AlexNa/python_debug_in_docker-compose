#!/bin/bash

 
if [ "$#" -ne 1 ]; then
    echo "ex: $0 <Python File Path>"
    exit 1
fi

REQUIREMENTS_LOCAL="/app/requirements.txt"

if [ -f "${REQUIREMENTS_LOCAL}" ]; then
  echo "Installing local overrides at ${REQUIREMENTS_LOCAL}"
  pip install --no-cache-dir -r "${REQUIREMENTS_LOCAL}"
else
  echo "Skipping local overrides"
fi

if [ ! -f "$1" ]; then
    echo "no file exist"
    exit 1
fi

python -m debugpy --listen 0.0.0.0:5678 "$1"
