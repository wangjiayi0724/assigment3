#!/bin/bash
is_valid() {
	local re='^[1-9][0-9]*$'
	[[ $1 =~ $re ]]
}
if ! is_valid $1 || ! is_valid $2; then
	echo 'invalid input'
	exit 1
fi

row=$1
col=$2

for ((i=1;i<=row;i++)); do
	for ((j=1;j<=col;j++)); do
		sum=$(($i*$j))
		printf "$i*$j=$sum\t"
	done
	echo ""
done
	
