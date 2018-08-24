#! /bin/bash

echo "bst O1 optimization unsorted 10k words"
{ time ./bst_O1.out < 10kwords.txt > 10kwordsout.txt 2> bst_O1.stderr ; } 2> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat
mv ./bst_time_O1.dat ./time/
