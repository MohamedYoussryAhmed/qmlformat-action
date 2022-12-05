#!/bin/bash

FILES=$(find . -name "$1")
RESULT=0

for f in $FILES
do
  colordiff $f <(qmlformat --inplace --normalize $f)
  RESULT=$(($RESULT || $?))
done

exit $RESULT
