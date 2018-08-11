#! /bin/bash
TIMEFORMAT='%3R seconds'

echo “bst_O3 unsorted 25k words:”
time ./bst_O3.out < 25kwords.txt > 25kwordsout.txt 2> bst_O3.stderr
echo ""
