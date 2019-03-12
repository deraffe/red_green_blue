#!/usr/bin/env zsh
i=0
declare -A results=()
while [[ $i -lt ${1:-100} ]]; do
	result=$((( echo red ; echo green 1>&2 ) | echo blue) 2>&1)
	results[$result]=$(($results[$result]+1))
	let i++
done

for key val in ${(kv)results}; do
	echo "$key: $val"
done
