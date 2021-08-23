#!/bin/bash

echo "Starting the program at $(date)"
echo "Running the program $0 with $# arguments and $$ pid"

for file in "$@"; do
	grep foobar "$file" > /dev/null 2> /dev/null
	if [[ $? -ne 0 ]]; then
		echo "$file does not have 'foobar', adding one"
		echo "# foobar" >> "$file"
	fi
done
