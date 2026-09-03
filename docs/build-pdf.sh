#!/usr/bin/env bash
# Usage: ./build-pdf.sh <input.html> [output.pdf]
set -e
IN="$1"; OUT="${2:-${1%.html}.pdf}"
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
WIN_IN="$(cygpath -w "$(realpath "$IN")" 2>/dev/null || realpath "$IN")"
WIN_OUT="$(cygpath -w "$(realpath -m "$OUT")" 2>/dev/null || realpath -m "$OUT")"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$WIN_OUT" "file:///${WIN_IN//\//}"
echo "PDF: $OUT"
