#!/usr/bin/env bash
# simple-interest.sh - calculates simple interest
# Usage: ./simple-interest.sh <principal> <annual_rate_percent> <years>
# Example: ./simple-interest.sh 1000 5 2

set -euo pipefail

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal annual_rate_percent years"
  exit 1
fi

P="$1"
R="$2"
T="$3"

SI=$(awk -v p="$P" -v r="$R" -v t="$T" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple interest for principal $P at $R% for $T year(s) is: $SI"
