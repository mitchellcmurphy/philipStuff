#! /bin/bash

echo "bst O0 optimization unsorted 10k words"
{ time ./bst_O0.out < 10kwords.txt > 10kwordsout.txt 2> bst_O0.stderr ; } 2> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv ./bst_time_O0.dat ./time/
