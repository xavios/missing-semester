#!/bin/bash
check () {
  if [[ $1 == "" ]]; then
    echo "no file provided!"
    exit 1
  fi
  echo "running $1 to see a faulty run"
  num=0
  while true; do
    num=$((num+1))
    ./"$1" > /tmp/stdout1 2> /tmp/stderr1
    if [[ $? -ne 0 ]]; then
      echo "stdout: $(cat /tmp/stdout1)"
      echo "stderr: $(cat /tmp/stderr1)"
      echo "Needed to run this command $num times to get a faulty run!"
      exit 1
    fi
  done
}

# call the checking function
check "$1"
