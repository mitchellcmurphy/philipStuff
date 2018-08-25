#! /bin/bash
TIMEFORMAT='%3R seconds'


# BST

touch bst_time_O0.dat bst_time_O3.dat

# 1k words

echo “bst O0 optimization unsorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 1kwords.txt > O0_01k.txt 2> O0_01k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt ./output/bst
mv O0_01k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 1kwords.txt > O3_01k.txt 2> O3_01k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_01k.txt ./output/bst
mv O3_01k.stderr ./stderr/bst

echo “bst O0 optimization sorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 1kwordssorted.txt > O0_01k.txt 2> O0_01k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt ./output/bst/presorted
mv O0_01k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 1kwordssorted.txt > O3_01k.txt 2> O3_01k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_01k.txt ./output/bst/presorted
mv O3_01k.stderr ./stderr/bst/presorted

# 10k words

echo “bst O0 optimization unsorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 10kwords.txt > O0_10k.txt 2> O0_10k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_10k.txt ./output/bst
mv O0_10k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 10kwords.txt > O3_10k.txt 2> O3_10k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_10k.txt ./output/bst
mv O3_10k.stderr ./stderr/bst

echo “bst O0 optimization sorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 10kwordssorted.txt > O0_10k.txt 2> O0_10k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_10k.txt ./output/bst/presorted
mv O0_10k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 10kwordssorted.txt > O3_10k.txt 2> O3_10k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_10k.txt ./output/bst/presorted
mv O3_10k.stderr ./stderr/bst/presorted

# 20k words

echo “bst O0 optimization unsorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 20kwords.txt > O0_20k.txt 2> O0_20k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_20k.txt ./output/bst
mv O0_20k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 20kwords.txt > O3_20k.txt 2> O3_20k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_20k.txt ./output/bst
mv O3_20k.stderr ./stderr/bst

echo “bst O0 optimization sorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 20kwordssorted.txt > O0_20k.txt 2> O0_20k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_20k.txt ./output/bst/presorted
mv O0_20k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 20kwordssorted.txt > O3_20k.txt 2> O3_20k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_20k.txt ./output/bst/presorted
mv O3_20k.stderr ./stderr/bst/presorted

# 30k words

echo “bst O0 optimization unsorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 30kwords.txt > O0_30k.txt 2> O0_30k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_30k.txt ./output/bst
mv O0_30k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 30kwords.txt > O3_30k.txt 2> O3_30k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_30k.txt ./output/bst
mv O3_30k.stderr ./stderr/bst

echo “bst O0 optimization sorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 30kwordssorted.txt > O0_30k.txt 2> O0_30k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_30k.txt ./output/bst/presorted
mv O0_30k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 30kwordssorted.txt > O3_30k.txt 2> O3_30k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_30k.txt ./output/bst/presorted
mv O3_30k.stderr ./stderr/bst/presorted

# 40k words

echo “bst O0 optimization unsorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 40kwords.txt > O0_40k.txt 2> O0_40k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_40k.txt ./output/bst
mv O0_40k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 30kwords.txt > O3_40k.txt 2> O3_40k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_40k.txt ./output/bst
mv O3_40k.stderr ./stderr/bst

echo “bst O0 optimization sorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 40kwordssorted.txt > O0_40k.txt 2> O0_40k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_40k.txt ./output/bst/presorted
mv O0_40k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 40kwordssorted.txt > O3_40k.txt 2> O3_40k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_40k.txt ./output/bst/presorted
mv O3_40k.stderr ./stderr/bst/presorted

# 50k words

echo “bst O0 optimization unsorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 50kwords.txt > O0_50k.txt 2> O0_50k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_50k.txt ./output/bst
mv O0_50k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 50kwords.txt > O3_50k.txt 2> O3_50k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_50k.txt ./output/bst
mv O3_50k.stderr ./stderr/bst

echo “bst O0 optimization sorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 50kwordssorted.txt > O0_50k.txt 2> O0_50k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_50k.txt ./output/bst/presorted
mv O0_50k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 50kwordssorted.txt > O3_50k.txt 2> O3_50k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_50k.txt ./output/bst/presorted
mv O3_50k.stderr ./stderr/bst/presorted

# 60k words

echo “bst O0 optimization unsorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 60kwords.txt > O0_60k.txt 2> O0_60k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_60k.txt ./output/bst
mv O0_60k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 60kwords.txt > O3_60k.txt 2> O3_60k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_60k.txt ./output/bst
mv O3_60k.stderr ./stderr/bst

echo “bst O0 optimization sorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 60kwordssorted.txt > O0_60k.txt 2> O0_60k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_60k.txt ./output/bst/presorted
mv O0_60k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 60kwordssorted.txt > O3_60k.txt 2> O3_60k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_60k.txt ./output/bst/presorted
mv O3_60k.stderr ./stderr/bst/presorted

# 70k words

echo “bst O0 optimization unsorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 70kwords.txt > O0_70k.txt 2> O0_70k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_70k.txt ./output/bst
mv O0_70k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 70kwords.txt > O3_70k.txt 2> O3_70k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_70k.txt ./output/bst
mv O3_70k.stderr ./stderr/bst

echo “bst O0 optimization sorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 70kwordssorted.txt > O0_70k.txt 2> O0_70k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_70k.txt ./output/bst/presorted
mv O0_70k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 70kwordssorted.txt > O3_70k.txt 2> O3_70k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_70k.txt ./output/bst/presorted
mv O3_70k.stderr ./stderr/bst/presorted

# 80k words

echo “bst O0 optimization unsorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 80kwords.txt > O0_80k.txt 2> O0_80k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_80k.txt ./output/bst
mv O0_80k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 80kwords.txt > O3_80k.txt 2> O3_80k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_80k.txt ./output/bst
mv O3_80k.stderr ./stderr/bst

echo “bst O0 optimization sorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 80kwordssorted.txt > O0_80k.txt 2> O0_80k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_80k.txt ./output/bst/presorted
mv O0_80k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 80kwordssorted.txt > O3_80k.txt 2> O3_80k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_80k.txt ./output/bst/presorted
mv O3_80k.stderr ./stderr/bst/presorted

# 90k words

echo “bst O0 optimization unsorted 90k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 90kwords.txt > O0_90k.txt 2> O0_90k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_90k.txt ./output/bst
mv O0_90k.stderr ./stderr/bst

echo “bst O3 optimization unsorted 90k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 90kwords.txt > O3_90k.txt 2> O3_90k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_90k.txt ./output/bst
mv O3_90k.stderr ./stderr/bst

echo “bst O0 optimization sorted 90k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O0.out < 90kwordssorted.txt > O0_90k.txt 2> O0_90k.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_90k.txt ./output/bst/presorted
mv O0_90k.stderr ./stderr/bst/presorted

echo “bst O3 optimization sorted 90k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./bst_O3.out < 90kwordssorted.txt > O3_90k.txt 2> O3_90k.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O3_90k.txt ./output/bst/presorted
mv O3_90k.stderr ./stderr/bst/presorted



#TREAP


# 1k words

echo “treap O0 optimization unsorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 1kwords.txt > O0_01k.txt 2> O0_01k.stderr ; } 2> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt ./output/treap
mv O0_01k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 1kwords.txt > O3_01k.txt 2> O3_01k.stderr ; } 2> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_01k.txt ./output/treap
mv O3_01k.stderr ./stderr/treap

echo “treap O0 optimization sorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 1kwordssorted.txt > O0_01k.txt 2> O0_01k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt ./output/treap/presorted
mv O0_01k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 1k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 1kwordssorted.txt > O3_01k.txt 2> O3_01k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_01k.txt ./output/treap/presorted
mv O3_01k.stderr ./stderr/treap/presorted

# 10k words

echo “treap O0 optimization unsorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 10kwords.txt > O0_10k.txt 2> O0_10k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_10k.txt ./output/treap
mv O0_10k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 10kwords.txt > O3_10k.txt 2> O3_10k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_10k.txt ./output/treap
mv O3_10k.stderr ./stderr/treap

echo “treap O0 optimization sorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 10kwordssorted.txt > O0_10k.txt 2> O0_10k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_10k.txt ./output/treap/presorted
mv O0_10k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 10k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 10kwordssorted.txt > O3_10k.txt 2> O3_10k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_10k.txt ./output/treap/presorted
mv O3_10k.stderr ./stderr/treap/presorted

# 20k words

echo “treap O0 optimization unsorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 20kwords.txt > O0_20k.txt 2> O0_20k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_20k.txt ./output/treap
mv O0_20k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 20kwords.txt > O3_20k.txt 2> O3_20k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_20k.txt ./output/treap
mv O3_20k.stderr ./stderr/treap

echo “treap O0 optimization sorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 20kwordssorted.txt > O0_20k.txt 2> O0_20k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_20k.txt ./output/treap/presorted
mv O0_20k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 20k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 20kwordssorted.txt > O3_20k.txt 2> O3_20k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_20k.txt ./output/treap/presorted
mv O3_20k.stderr ./stderr/treap/presorted

# 30k words

echo “treap O0 optimization unsorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 30kwords.txt > O0_30k.txt 2> O0_30k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_30k.txt ./output/treap
mv O0_30k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 30kwords.txt > O3_30k.txt 2> O3_30k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_30k.txt ./output/treap
mv O3_30k.stderr ./stderr/treap

echo “treap O0 optimization sorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 30kwordssorted.txt > O0_30k.txt 2> O0_30k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_30k.txt ./output/treap/presorted
mv O0_30k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 30k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 30kwordssorted.txt > O3_30k.txt 2> O3_30k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_30k.txt ./output/treap/presorted
mv O3_30k.stderr ./stderr/treap/presorted

# 40k words

echo “treap O0 optimization unsorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 40kwords.txt > O0_40k.txt 2> O0_40k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_40k.txt ./output/treap
mv O0_40k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 30kwords.txt > O3_40k.txt 2> O3_40k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_40k.txt ./output/treap
mv O3_40k.stderr ./stderr/treap

echo “treap O0 optimization sorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 40kwordssorted.txt > O0_40k.txt 2> O0_40k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_40k.txt ./output/treap/presorted
mv O0_40k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 40k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 40kwordssorted.txt > O3_40k.txt 2> O3_40k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_40k.txt ./output/treap/presorted
mv O3_40k.stderr ./stderr/treap/presorted

# 50k words

echo “treap O0 optimization unsorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 50kwords.txt > O0_50k.txt 2> O0_50k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_50k.txt ./output/treap
mv O0_50k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 50kwords.txt > O3_50k.txt 2> O3_50k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_50k.txt ./output/treap
mv O3_50k.stderr ./stderr/treap

echo “treap O0 optimization sorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 50kwordssorted.txt > O0_50k.txt 2> O0_50k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_50k.txt ./output/treap/presorted
mv O0_50k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 50k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 50kwordssorted.txt > O3_50k.txt 2> O3_50k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_50k.txt ./output/treap/presorted
mv O3_50k.stderr ./stderr/treap/presorted

# 60k words

echo “treap O0 optimization unsorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 60kwords.txt > O0_60k.txt 2> O0_60k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_60k.txt ./output/treap
mv O0_60k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 60kwords.txt > O3_60k.txt 2> O3_60k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_60k.txt ./output/treap
mv O3_60k.stderr ./stderr/treap

echo “treap O0 optimization sorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 60kwordssorted.txt > O0_60k.txt 2> O0_60k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_60k.txt ./output/treap/presorted
mv O0_60k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 60k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 60kwordssorted.txt > O3_60k.txt 2> O3_60k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_60k.txt ./output/treap/presorted
mv O3_60k.stderr ./stderr/treap/presorted

# 70k words

echo “treap O0 optimization unsorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 70kwords.txt > O0_70k.txt 2> O0_70k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_70k.txt ./output/treap
mv O0_70k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 70kwords.txt > O3_70k.txt 2> O3_70k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_70k.txt ./output/treap
mv O3_70k.stderr ./stderr/treap

echo “treap O0 optimization sorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 70kwordssorted.txt > O0_70k.txt 2> O0_70k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_70k.txt ./output/treap/presorted
mv O0_70k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 70k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 70kwordssorted.txt > O3_70k.txt 2> O3_70k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_70k.txt ./output/treap/presorted
mv O3_70k.stderr ./stderr/treap/presorted

# 80k words

echo “treap O0 optimization unsorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 80kwords.txt > O0_80k.txt 2> O0_80k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_80k.txt ./output/treap
mv O0_80k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 80kwords.txt > O3_80k.txt 2> O3_80k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_80k.txt ./output/treap
mv O3_80k.stderr ./stderr/treap

echo “treap O0 optimization sorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 80kwordssorted.txt > O0_80k.txt 2> O0_80k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_80k.txt ./output/treap/presorted
mv O0_80k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 80k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O3.out < 80kwordssorted.txt > O3_80k.txt 2> O3_80k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_80k.txt ./output/treap/presorted
mv O3_80k.stderr ./stderr/treap/presorted

# 90k words

echo “treap O0 optimization unsorted 90k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 90kwords.txt > O0_90k.txt 2> O0_90k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_90k.txt ./output/treap
mv O0_90k.stderr ./stderr/treap

echo “treap O3 optimization unsorted 90k words”
echo "1k words: " >> bst_time_O3.dat
{ time ./treap_O3.out < 90kwords.txt > O3_90k.txt 2> O3_90k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_90k.txt ./output/treap
mv O3_90k.stderr ./stderr/treap

echo “treap O0 optimization sorted 90k words”
echo "1k words: " >> bst_time_O0.dat
{ time ./treap_O0.out < 90kwordssorted.txt > O0_90k.txt 2> O0_90k.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_90k.txt ./output/treap/presorted
mv O0_90k.stderr ./stderr/treap/presorted

echo “treap O3 optimization sorted 90k words”
echo "1k words: " >> bst_time_O3.dat
{ time ./treap_O3.out < 90kwordssorted.txt > O3_90k.txt 2> O3_90k.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O3_90k.txt ./output/treap/presorted
mv O3_90k.stderr ./stderr/treap/presorted

mv bst_time_O0.dat ./time/
mv bst_time_O3.dat ./time/
mv treap_time_O0.dat ./time/
mv treap_time_O3.dat ./time/

./CLEAN.sh some

#vim -c "argdo :22d | x" bst_time_O0.dat bst_time_O3.dat
#vim -c "argdo source timeprep.vim" bst_time_O0.dat #bst_time_O3.dat #treap_time_O0.dat #treap_time_O3.dat
#gnuplot5-x11 plot_bst_opt_0.gnu
#gnuplot5-x11 plot_bst_opt_3.gnu
#gnuplot5-x11 plot_treap_opt_0.gnu
#gnuplot5-x11 plot_treap_opt_3.gnu

