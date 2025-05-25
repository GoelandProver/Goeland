#!/bin/bash

parseArgs() {
	line=$(cat "$1" | grep "% args:" | awk '{$1="";$2=""}1')
	echo $line
}

parseExpectedRes() {
	line=$(cat "$1" | grep "% result:" | awk '{$1="";$2=""}1')
	echo $line
}

runGoeland() {
	file=$1
	args=$2
	out=$3
	command=""

	if [ -z "$out" ]; then
		command="../src/_build/goeland $args $file"
	else
		command="../src/_build/goeland $args $file > $out"
	fi

	results=$($command)
	echo $results
}

compareOutputs() {
	f=$1
	args=$2
	out=${f%.p}.out

	dummy=$(runGoeland "$f" "$args" "tmp.out")

	if ! [[ -f "$out" ]]; then
		echo "Error: $out not found."
		exit 1
	fi

	echo "$f ;;; $out"
}

runWithExpected() {
	f=$1
	args=$2
	expected=$3

	result=$(runGoeland "$f" "$args")
	actual=$(echo "$result" | sed 's/.*RES\ : \(.*\)\ INF.*/\1/')

	if ! [[ "$expected" == "$actual" ]]; then
		echo "Error: on file $f, expected: '$expected', actual: '$actual'"
		exit 1
	fi
}

for f in $(ls test-suite/**/*.p); do
	args=$(parseArgs "$f")
	if ! [[ -z $(echo $args | grep "proof") ]]; then
		compareOutputs "$f" "$args"
	else
		expectedRes=$(parseExpectedRes "$f")
		runWithExpected "$f" "$args" "$expectedRes"
	fi
done
