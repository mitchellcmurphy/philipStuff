#! /bin/bash

rm *.txt
rm *.out

if [ "$1" != "some" ]; then
  rm -r time
  rm -r output
  rm -r stderr
fi