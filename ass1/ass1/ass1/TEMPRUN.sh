#!/bin/bash
TIMEFORMAT="$VAR %3R seconds"

# BST

touch bst_time_O0.dat bst_time_O3.dat

# 1k words

echo bst O0 optimization unsorted 1k words
echo 1k words: >> bst_time_O0.dat
{ time ./bst_O0.out < 1kwords.txt > O0_01k.txt 2> O0_01k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt ./output/bst
mv O0_01k.stderr ./stderr/bst

echo bst O3 optimization unsorted 1k words
echo 1k words: >> bst_time_O3.dat
{ time ./bst_O3.out < 1kwords.txt > O3_01k.txt 2> O3_01k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_01k.txt ./output/bst
mv O3_01k.stderr ./stderr/bst

mv bst_time_O0.dat ./time
mv bst_time_O3.dat ./time