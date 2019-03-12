#!/usr/bin/env bash
i=0
declare -A results=()
while [[ $i -lt ${1:-100} ]]; do
  result=$( ( ( echo red ; echo green 1>&2 ) | echo blue) 2>&1)
  if [[ ! -v results[$result] ]]; then
    results[$result]=0
  fi
  results[$result]=$((${results[$result]}+1))
  let i++
done
for key in "${!results[@]}"; do
  echo "$key: ${results[$key]}"
done
