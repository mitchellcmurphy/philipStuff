#! /bin/bash
TIMEFORMAT='%3R seconds'

echo “bst_O1 unsorted 25k words:”
time ./bst_O1.out < 25kwords.txt > 25kwordsout.txt 2> bst_O1.stderr
echo ""
