#! /bin/bash
TIMEFORMAT='%3R'

echo “bst O0 optimization unsorted 10k words”
{ time ./bst_O0.out < 10kwords.txt > 10kwordsout.txt 2> bst_O0.stderr ; } 2> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization unsorted 10k words”
{ time ./bst_O1.out < 10kwords.txt > 10kwordsout.txt 2> bst_O1.stderr ; } 2> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization unsorted 10k words”
{ time ./bst_O2.out < 10kwords.txt > 10kwordsout.txt 2> bst_O2.stderr ; } 2> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization unsorted 10k words”
{ time ./bst_O3.out < 10kwords.txt > 10kwordsout.txt 2> bst_O3.stderr ; } 2> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat

echo “bst O0 optimization sorted 10k words”
{ time ./bst_O0.out < 10kwordssorted.txt > 10ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization sorted 10k words”
{ time ./bst_O1.out < 10kwordssorted.txt > 10ksortedout.txt 2> bst_O1.stderr ; } 2>> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization sorted 10k words”
{ time ./bst_O2.out < 10kwordssorted.txt > 10ksortedout.txt 2> bst_O2.stderr ; } 2>> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization sorted 10k words”
{ time ./bst_O3.out < 10kwordssorted.txt > 10ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat


echo “bst O0 optimization unsorted 25k words”
{ time ./bst_O0.out < 25kwords.txt > 25kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization unsorted 25k words”
{ time ./bst_O1.out < 25kwords.txt > 25kwordsout.txt 2> bst_O1.stderr ; } 2>> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization unsorted 25k words”
{ time ./bst_O2.out < 25kwords.txt > 25kwordsout.txt 2> bst_O2.stderr ; } 2>> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization unsorted 25k words”
{ time ./bst_O3.out < 25kwords.txt > 25kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat

echo “bst O0 optimization sorted 25k words”
{ time ./bst_O0.out < 25kwordssorted.txt > 25ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization sorted 25k words”
{ time ./bst_O1.out < 25kwordssorted.txt > 25ksortedout.txt 2> bst_O1.stderr ; } 2>> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization sorted 25k words”
{ time ./bst_O2.out < 25kwordssorted.txt > 25ksortedout.txt 2> bst_O2.stderr ; } 2>> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization sorted 25k words”
{ time ./bst_O3.out < 25kwordssorted.txt > 25ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat


echo “bst O0 optimization unsorted 50k words”
{ time ./bst_O0.out < 50kwords.txt > 50kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization unsorted 50k words”
{ time ./bst_O1.out < 50kwords.txt > 50kwordsout.txt 2> bst_O1.stderr ; } 2>> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization unsorted 50k words”
{ time ./bst_O2.out < 50kwords.txt > 50kwordsout.txt 2> bst_O2.stderr ; } 2>> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization unsorted 50k words”
{ time ./bst_O3.out < 50kwords.txt > 50kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat

echo “bst O0 optimization sorted 50k words”
{ time ./bst_O0.out < 50kwordssorted.txt > 50ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization sorted 50k words”
{ time ./bst_O1.out < 50kwordssorted.txt > 50ksortedout.txt 2> bst_O1.stderr ; } 2>> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization sorted 50k words”
{ time ./bst_O2.out < 50kwordssorted.txt > 50ksortedout.txt 2> bst_O2.stderr ; } 2>> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization sorted 50k words”
{ time ./bst_O3.out < 50kwordssorted.txt > 50ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat


echo “bst O0 optimization unsorted 90k words”
{ time ./bst_O0.out < 90kwords.txt > 90kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization unsorted 90k words”
{ time ./bst_O1.out < 90kwords.txt > 90kwordsout.txt 2> bst_O1.stderr ; } 2>> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization unsorted 90k words”
{ time ./bst_O2.out < 90kwords.txt > 90kwordsout.txt 2> bst_O2.stderr ; } 2>> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization unsorted 90k words”
{ time ./bst_O3.out < 90kwords.txt > 90kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat

echo “bst O0 optimization sorted 90k words”
{ time ./bst_O0.out < 90kwordssorted.txt > 90ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat

echo “bst O1 optimization sorted 90k words”
{ time ./bst_O1.out < 90kwordssorted.txt > 90ksortedout.txt 2> bst_O1.stderr ; } 2>> bst_time_O1.dat
echo -e '\n' >> bst_time_O1.dat

echo “bst O2 optimization sorted 90k words”
{ time ./bst_O2.out < 90kwordssorted.txt > 90ksortedout.txt 2> bst_O2.stderr ; } 2>> bst_time_O2.dat
echo -e '\n' >> bst_time_O2.dat

echo “bst O3 optimization sorted 90k words”
{ time ./bst_O3.out < 90kwordssorted.txt > 90ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat



echo “treap O0 optimization unsorted 10k words”
{ time ./treap_O0.out < 10kwords.txt > 10kwordsout.txt 2> treap_O0.stderr ; } 2> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization unsorted 10k words”
{ time ./treap_O1.out < 10kwords.txt > 10kwordsout.txt 2> treap_O1.stderr ; } 2> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization unsorted 10k words”
{ time ./treap_O2.out < 10kwords.txt > 10kwordsout.txt 2> treap_O2.stderr ; } 2> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization unsorted 10k words”
{ time ./treap_O3.out < 10kwords.txt > 10kwordsout.txt 2> treap_O3.stderr ; } 2> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat

echo “treap O0 optimization sorted 10k words”
{ time ./treap_O0.out < 10kwordssorted.txt > 10ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization sorted 10k words”
{ time ./treap_O1.out < 10kwordssorted.txt > 10ksortedout.txt 2> treap_O1.stderr ; } 2>> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization sorted 10k words”
{ time ./treap_O2.out < 10kwordssorted.txt > 10ksortedout.txt 2> treap_O2.stderr ; } 2>> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization sorted 10k words”
{ time ./treap_O3.out < 10kwordssorted.txt > 10ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat


echo “treap O0 optimization unsorted 25k words”
{ time ./treap_O0.out < 25kwords.txt > 25kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization unsorted 25k words”
{ time ./treap_O1.out < 25kwords.txt > 25kwordsout.txt 2> treap_O1.stderr ; } 2>> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization unsorted 25k words”
{ time ./treap_O2.out < 25kwords.txt > 25kwordsout.txt 2> treap_O2.stderr ; } 2>> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization unsorted 25k words”
{ time ./treap_O3.out < 25kwords.txt > 25kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat

echo “treap O0 optimization sorted 25k words”
{ time ./treap_O0.out < 25kwordssorted.txt > 25ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization sorted 25k words”
{ time ./treap_O1.out < 25kwordssorted.txt > 25ksortedout.txt 2> treap_O1.stderr ; } 2>> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization sorted 25k words”
{ time ./treap_O2.out < 25kwordssorted.txt > 25ksortedout.txt 2> treap_O2.stderr ; } 2>> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization sorted 25k words”
{ time ./treap_O3.out < 25kwordssorted.txt > 25ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat


echo “treap O0 optimization unsorted 50k words”
{ time ./treap_O0.out < 50kwords.txt > 50kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization unsorted 50k words”
{ time ./treap_O1.out < 50kwords.txt > 50kwordsout.txt 2> treap_O1.stderr ; } 2>> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization unsorted 50k words”
{ time ./treap_O2.out < 50kwords.txt > 50kwordsout.txt 2> treap_O2.stderr ; } 2>> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization unsorted 50k words”
{ time ./treap_O3.out < 50kwords.txt > 50kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat

echo “treap O0 optimization sorted 50k words”
{ time ./treap_O0.out < 50kwordssorted.txt > 50ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization sorted 50k words”
{ time ./treap_O1.out < 50kwordssorted.txt > 50ksortedout.txt 2> treap_O1.stderr ; } 2>> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization sorted 50k words”
{ time ./treap_O2.out < 50kwordssorted.txt > 50ksortedout.txt 2> treap_O2.stderr ; } 2>> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization sorted 50k words”
{ time ./treap_O3.out < 50kwordssorted.txt > 50ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat


echo “treap O0 optimization unsorted 90k words”
{ time ./treap_O0.out < 90kwords.txt > 90kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization unsorted 90k words”
{ time ./treap_O1.out < 90kwords.txt > 90kwordsout.txt 2> treap_O1.stderr ; } 2>> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization unsorted 90k words”
{ time ./treap_O2.out < 90kwords.txt > 90kwordsout.txt 2> treap_O2.stderr ; } 2>> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization unsorted 90k words”
{ time ./treap_O3.out < 90kwords.txt > 90kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat

echo “treap O0 optimization sorted 90k words”
{ time ./treap_O0.out < 90kwordssorted.txt > 90ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat

echo “treap O1 optimization sorted 90k words”
{ time ./treap_O1.out < 90kwordssorted.txt > 90ksortedout.txt 2> treap_O1.stderr ; } 2>> treap_time_O1.dat
echo -e '\n' >> treap_time_O1.dat

echo “treap O2 optimization sorted 90k words”
{ time ./treap_O2.out < 90kwordssorted.txt > 90ksortedout.txt 2> treap_O2.stderr ; } 2>> treap_time_O2.dat
echo -e '\n' >> treap_time_O2.dat

echo “treap O3 optimization sorted 90k words”
{ time ./treap_O3.out < 90kwordssorted.txt > 90ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat



vim -c "argdo :22d | x" bst_time_O0.dat bst_time_O3.dat
vim -c "argdo source timeprep.vim" bst_time_O0.dat bst_time_O1.dat bst_time_O2.dat bst_time_O3.dat treap_time_O0.dat treap_time_O1.dat treap_time_O2.dat treap_time_O3.dat
gnuplot5-x11 plot_bst_opt_0.gnu
gnuplot5-x11 plot_bst_opt_1.gnu
gnuplot5-x11 plot_bst_opt_2.gnu
gnuplot5-x11 plot_bst_opt_3.gnu
gnuplot5-x11 plot_treap_opt_0.gnu
gnuplot5-x11 plot_treap_opt_1.gnu
gnuplot5-x11 plot_treap_opt_2.gnu
gnuplot5-x11 plot_treap_opt_3.gnu

