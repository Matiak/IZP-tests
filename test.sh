#!/bin/bash
echo "TEST 1"
make
var="$(./keyfilter Brno) <in1.txt"

if [[ $var =~ "Found: Brno" ]]; then
	echo "OK"
else
	echo "Failed: \nyour result: $var \ncorrect result: Found: Brno"
fi
