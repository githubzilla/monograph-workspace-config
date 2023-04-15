#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 FILE_NAME LINE_NUMBER [LINE_RANGE]"
  exit 1
fi

FILE_NAME="$1"
LINE_NUMBER="$2"
LINE_RANGE="${3:-5}"

awk -v line="$LINE_NUMBER" -v range="$LINE_RANGE" 'NR>=line-range && NR<=line+range {printf "%d: %s\n", NR, $0}' "$FILE_NAME"

