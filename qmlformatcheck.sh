#!/bin/bash

FILES=$(find . -name "$1")
RESULT=0

for f in $FILES
do
  colordiff $f <(C:/Qt/6.4.0/msvc2019_64/bin/qmlformat $f)
  RESULT=$(($RESULT || $?))
done

exit $RESULT
