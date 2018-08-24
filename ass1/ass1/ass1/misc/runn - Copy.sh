#! /bin/bash
TIMEFORMAT='%3R'

echo “O0 optimization unsorted 10k words”
{ time ./bst_wordcount_O0 < 10kwords.txt > 10kwordsout.txt 2> bst_wordcount_O0.stderr ; } 2> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization unsorted 10k words”
{ time ./bst_wordcount_O1 < 10kwords.txt > 10kwordsout.txt 2> bst_wordcount_O1.stderr ; } 2> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization unsorted 10k words”
{ time ./bst_wordcount_O2 < 10kwords.txt > 10kwordsout.txt 2> bst_wordcount_O2.stderr ; } 2> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization unsorted 10k words”
{ time ./bst_wordcount_O3 < 10kwords.txt > 10kwordsout.txt 2> bst_wordcount_O3.stderr ; } 2> time_O3.dat
echo -e '\n' >> time_O3.dat

echo “O0 optimization sorted 10k words”
{ time ./bst_wordcount_O0 < 10kwordssorted.txt > 10ksortedout.txt 2> bst_wordcount_O0.stderr ; } 2>> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization sorted 10k words”
{ time ./bst_wordcount_O1 < 10kwordssorted.txt > 10ksortedout.txt 2> bst_wordcount_O1.stderr ; } 2>> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization sorted 10k words”
{ time ./bst_wordcount_O2 < 10kwordssorted.txt > 10ksortedout.txt 2> bst_wordcount_O2.stderr ; } 2>> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization sorted 10k words”
{ time ./bst_wordcount_O3 < 10kwordssorted.txt > 10ksortedout.txt 2> bst_wordcount_O3.stderr ; } 2>> time_O3.dat
echo -e '\n' >> time_O3.dat


echo “O0 optimization unsorted 25k words”
{ time ./bst_wordcount_O0 < 25kwords.txt > 25kwordsout.txt 2> bst_wordcount_O0.stderr ; } 2>> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization unsorted 25k words”
{ time ./bst_wordcount_O1 < 25kwords.txt > 25kwordsout.txt 2> bst_wordcount_O1.stderr ; } 2>> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization unsorted 25k words”
{ time ./bst_wordcount_O2 < 25kwords.txt > 25kwordsout.txt 2> bst_wordcount_O2.stderr ; } 2>> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization unsorted 25k words”
{ time ./bst_wordcount_O3 < 25kwords.txt > 25kwordsout.txt 2> bst_wordcount_O3.stderr ; } 2>> time_O3.dat
echo -e '\n' >> time_O3.dat

echo “O0 optimization sorted 25k words”
{ time ./bst_wordcount_O0 < 25kwordssorted.txt > 25ksortedout.txt 2> bst_wordcount_O0.stderr ; } 2>> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization sorted 25k words”
{ time ./bst_wordcount_O1 < 25kwordssorted.txt > 25ksortedout.txt 2> bst_wordcount_O1.stderr ; } 2>> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization sorted 25k words”
{ time ./bst_wordcount_O2 < 25kwordssorted.txt > 25ksortedout.txt 2> bst_wordcount_O2.stderr ; } 2>> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization sorted 25k words”
{ time ./bst_wordcount_O3 < 25kwordssorted.txt > 25ksortedout.txt 2> bst_wordcount_O3.stderr ; } 2>> time_O3.dat
echo -e '\n' >> time_O3.dat


echo “O0 optimization unsorted 50k words”
{ time ./bst_wordcount_O0 < 50kwords.txt > 50kwordsout.txt 2> bst_wordcount_O0.stderr ; } 2>> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization unsorted 50k words”
{ time ./bst_wordcount_O1 < 50kwords.txt > 50kwordsout.txt 2> bst_wordcount_O1.stderr ; } 2>> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization unsorted 50k words”
{ time ./bst_wordcount_O2 < 50kwords.txt > 50kwordsout.txt 2> bst_wordcount_O2.stderr ; } 2>> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization unsorted 50k words”
{ time ./bst_wordcount_O3 < 50kwords.txt > 50kwordsout.txt 2> bst_wordcount_O3.stderr ; } 2>> time_O3.dat
echo -e '\n' >> time_O3.dat

echo “O0 optimization sorted 50k words”
{ time ./bst_wordcount_O0 < 50kwordssorted.txt > 50ksortedout.txt 2> bst_wordcount_O0.stderr ; } 2>> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization sorted 50k words”
{ time ./bst_wordcount_O1 < 50kwordssorted.txt > 50ksortedout.txt 2> bst_wordcount_O1.stderr ; } 2>> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization sorted 50k words”
{ time ./bst_wordcount_O2 < 50kwordssorted.txt > 50ksortedout.txt 2> bst_wordcount_O2.stderr ; } 2>> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization sorted 50k words”
{ time ./bst_wordcount_O3 < 50kwordssorted.txt > 50ksortedout.txt 2> bst_wordcount_O3.stderr ; } 2>> time_O3.dat
echo -e '\n' >> time_O3.dat


echo “O0 optimization unsorted 90k words”
{ time ./bst_wordcount_O0 < 90kwords.txt > 90kwordsout.txt 2> bst_wordcount_O0.stderr ; } 2>> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization unsorted 90k words”
{ time ./bst_wordcount_O1 < 90kwords.txt > 90kwordsout.txt 2> bst_wordcount_O1.stderr ; } 2>> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization unsorted 90k words”
{ time ./bst_wordcount_O2 < 90kwords.txt > 90kwordsout.txt 2> bst_wordcount_O2.stderr ; } 2>> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization unsorted 90k words”
{ time ./bst_wordcount_O3 < 90kwords.txt > 90kwordsout.txt 2> bst_wordcount_O3.stderr ; } 2>> time_O3.dat
echo -e '\n' >> time_O3.dat

echo “O0 optimization sorted 90k words”
{ time ./bst_wordcount_O0 < 90kwordssorted.txt > 90ksortedout.txt 2> bst_wordcount_O0.stderr ; } 2>> time_O0.dat
echo -e '\n' >> time_O0.dat

echo “O1 optimization sorted 90k words”
{ time ./bst_wordcount_O1 < 90kwordssorted.txt > 90ksortedout.txt 2> bst_wordcount_O1.stderr ; } 2>> time_O1.dat
echo -e '\n' >> time_O1.dat

echo “O2 optimization sorted 90k words”
{ time ./bst_wordcount_O2 < 90kwordssorted.txt > 90ksortedout.txt 2> bst_wordcount_O2.stderr ; } 2>> time_O2.dat
echo -e '\n' >> time_O2.dat

echo “O3 optimization sorted 90k words”
{ time ./bst_wordcount_O3 < 90kwordssorted.txt > 90ksortedout.txt 2> bst_wordcount_O3.stderr ; } 2>> time_O3.dat
echo -e '\n' >> time_O3.dat

vim -c "argdo :22d | x" time_O0.dat time_O3.dat
vim -c "argdo source timeprep.vim" time_O0.dat time_O1.dat time_O2.dat time_O3.dat
gnuplot5-x11 plot_opt_0.gnu
gnuplot5-x11 plot_opt_1.gnu
gnuplot5-x11 plot_opt_2.gnu
gnuplot5-x11 plot_opt_3.gnu
