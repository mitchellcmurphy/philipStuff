#! /bin/bash
TIMEFORMAT='%3R seconds'

echo “bst_O0 unsorted 25k words:”
time ./bst_O0.out < 25kwords.txt > 25kwordsout.txt 2> bst_O0.stderr
echo ""
