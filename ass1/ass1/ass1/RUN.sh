#! /bin/bash
TIMEFORMAT='%3R'


# BST


# 1k words

echo “bst O0 optimization unsorted 1k words”
{ time ./bst_O0.out < 1kwords.txt > O0_01k.txt 2> bst_O0.stderr ; } 2> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 1k words”
{ time ./bst_O3.out < 1kwords.txt > O3_01k.txt 2> bst_O3.stderr ; } 2> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 1k words”
{ time ./bst_O0.out < 1kwordssorted.txt > O0_01k.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 1k words”
{ time ./bst_O3.out < 1kwordssorted.txt > O3_01k.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 10k words

echo “bst O0 optimization unsorted 10k words”
{ time ./bst_O0.out < 10kwords.txt > O0_10k.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 10k words”
{ time ./bst_O3.out < 10kwords.txt > O3_10k.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 10k words”
{ time ./bst_O0.out < O0_10kwordssorted.txt > O0_10ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 10k words”
{ time ./bst_O3.out < 10kwordssorted.txt > O3_10ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 20k words

echo “bst O0 optimization unsorted 20k words”
{ time ./bst_O0.out < 20kwords.txt > O0_bst20kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 20k words”
{ time ./bst_O3.out < 20kwords.txt > O3_bst20kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 20k words”
{ time ./bst_O0.out < 20kwordssorted.txt > O0_bst20ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 20k words”
{ time ./bst_O3.out < 20kwordssorted.txt > O3_bst20ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 30k words

echo “bst O0 optimization unsorted 30k words”
{ time ./bst_O0.out < 30kwords.txt > O0_bst30kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 30k words”
{ time ./bst_O3.out < 30kwords.txt > O3_bst30kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 30k words”
{ time ./bst_O0.out < 30kwordssorted.txt > O0_bst30ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 30k words”
{ time ./bst_O3.out < 30kwordssorted.txt > O3_bst30ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 40k words

echo “bst O0 optimization unsorted 40k words”
{ time ./bst_O0.out < 40kwords.txt > O0_bst40kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 40k words”
{ time ./bst_O3.out < 30kwords.txt > O3_bst40kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 40k words”
{ time ./bst_O0.out < 40kwordssorted.txt > O0_bst40ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 40k words”
{ time ./bst_O3.out < 40kwordssorted.txt > O3_bst40ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 50k words

echo “bst O0 optimization unsorted 50k words”
{ time ./bst_O0.out < 50kwords.txt > O0_bst50kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 50k words”
{ time ./bst_O3.out < 50kwords.txt > O3_bst50kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 50k words”
{ time ./bst_O0.out < 50kwordssorted.txt > O0_bst50ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 50k words”
{ time ./bst_O3.out < 50kwordssorted.txt > O3_bst50ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 60k words

echo “bst O0 optimization unsorted 60k words”
{ time ./bst_O0.out < 60kwords.txt > O0_bst60kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 60k words”
{ time ./bst_O3.out < 60kwords.txt > O3_bst60kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 60k words”
{ time ./bst_O0.out < 60kwordssorted.txt > O0_bst60ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 60k words”
{ time ./bst_O3.out < 60kwordssorted.txt > O3_bst60ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 70k words

echo “bst O0 optimization unsorted 70k words”
{ time ./bst_O0.out < 70kwords.txt > O0_bst70kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 70k words”
{ time ./bst_O3.out < 70kwords.txt > O3_bst70kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 70k words”
{ time ./bst_O0.out < 70kwordssorted.txt > O0_bst70ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 70k words”
{ time ./bst_O3.out < 70kwordssorted.txt > O3_bst70ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 80k words

echo “bst O0 optimization unsorted 80k words”
{ time ./bst_O0.out < 80kwords.txt > O0_bst80kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 80k words”
{ time ./bst_O3.out < 80kwords.txt > O3_bst80kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 80k words”
{ time ./bst_O0.out < 80kwordssorted.txt > O0_bst80ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 80k words”
{ time ./bst_O3.out < 80kwordssorted.txt > O3_bst80ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

# 90k words

echo “bst O0 optimization unsorted 90k words”
{ time ./bst_O0.out < 90kwords.txt > O0_bst90kwordsout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O3 optimization unsorted 90k words”
{ time ./bst_O3.out < 90kwords.txt > O3_bst90kwordsout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst
mv O0_01k.txt /time/bst

echo “bst O0 optimization sorted 90k words”
{ time ./bst_O0.out < 90kwordssorted.txt > O0_bst90ksortedout.txt 2> bst_O0.stderr ; } 2>> bst_time_O0.dat
echo -e '\n' >> bst_time_O0.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst

echo “bst O3 optimization sorted 90k words”
{ time ./bst_O3.out < 90kwordssorted.txt > O3_bst90ksortedout.txt 2> bst_O3.stderr ; } 2>> bst_time_O3.dat
echo -e '\n' >> bst_time_O3.dat
mv O0_01k.txt /output/bst/presorted
mv O0_01k.txt /time/bst



#TREAP


# 1k words

echo “treap O0 optimization unsorted 1k words”
{ time ./treap_O0.out < 1kwords.txt > O0_treap1kwordsout.txt 2> treap_O0.stderr ; } 2> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 1k words”
{ time ./treap_O3.out < 1kwords.txt > O3_treap1kwordsout.txt 2> treap_O3.stderr ; } 2> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 1k words”
{ time ./treap_O0.out < 1kwordssorted.txt > O0_treap1ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 1k words”
{ time ./treap_O3.out < 1kwordssorted.txt > O3_treap1ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 10k words

echo “treap O0 optimization unsorted 10k words”
{ time ./treap_O0.out < 10kwords.txt > O0_treap10kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 10k words”
{ time ./treap_O3.out < 10kwords.txt > O3_treap10kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 10k words”
{ time ./treap_O0.out < 10kwordssorted.txt > O0_treap10ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 10k words”
{ time ./treap_O3.out < 10kwordssorted.txt > O3_treap10ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 20k words

echo “treap O0 optimization unsorted 20k words”
{ time ./treap_O0.out < 20kwords.txt > O0_treap20kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 20k words”
{ time ./treap_O3.out < 20kwords.txt > O3_treap20kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 20k words”
{ time ./treap_O0.out < 20kwordssorted.txt > O0_treap20ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 20k words”
{ time ./treap_O3.out < 20kwordssorted.txt > O3_treap20ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 30k words

echo “treap O0 optimization unsorted 30k words”
{ time ./treap_O0.out < 30kwords.txt > O0_treap30kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 30k words”
{ time ./treap_O3.out < 30kwords.txt > O3_treap30kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 30k words”
{ time ./treap_O0.out < 30kwordssorted.txt > O0_treap30ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 30k words”
{ time ./treap_O3.out < 30kwordssorted.txt > O3_treap30ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 40k words

echo “treap O0 optimization unsorted 40k words”
{ time ./treap_O0.out < 40kwords.txt > O0_treap40kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 40k words”
{ time ./treap_O3.out < 30kwords.txt > O3_treap40kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 40k words”
{ time ./treap_O0.out < 40kwordssorted.txt > O0_treap40ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 40k words”
{ time ./treap_O3.out < 40kwordssorted.txt > O3_treap40ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 50k words

echo “treap O0 optimization unsorted 50k words”
{ time ./treap_O0.out < 50kwords.txt > O0_treap50kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 50k words”
{ time ./treap_O3.out < 50kwords.txt > O3_treap50kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 50k words”
{ time ./treap_O0.out < 50kwordssorted.txt > O0_treap50ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 50k words”
{ time ./treap_O3.out < 50kwordssorted.txt > O3_treap50ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 60k words

echo “treap O0 optimization unsorted 60k words”
{ time ./treap_O0.out < 60kwords.txt > O0_treap60kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 60k words”
{ time ./treap_O3.out < 60kwords.txt > O3_treap60kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 60k words”
{ time ./treap_O0.out < 60kwordssorted.txt > O0_treap60ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 60k words”
{ time ./treap_O3.out < 60kwordssorted.txt > O3_treap60ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 70k words

echo “treap O0 optimization unsorted 70k words”
{ time ./treap_O0.out < 70kwords.txt > O0_treap70kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 70k words”
{ time ./treap_O3.out < 70kwords.txt > O3_treap70kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 70k words”
{ time ./treap_O0.out < 70kwordssorted.txt > O0_treap70ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 70k words”
{ time ./treap_O3.out < 70kwordssorted.txt > O3_treap70ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 80k words

echo “treap O0 optimization unsorted 80k words”
{ time ./treap_O0.out < 80kwords.txt > O0_treap80kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 80k words”
{ time ./treap_O3.out < 80kwords.txt > O3_treap80kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 80k words”
{ time ./treap_O0.out < 80kwordssorted.txt > O0_treap80ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 80k words”
{ time ./treap_O3.out < 80kwordssorted.txt > O3_treap80ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

# 90k words

echo “treap O0 optimization unsorted 90k words”
{ time ./treap_O0.out < 90kwords.txt > O0_treap90kwordsout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O3 optimization unsorted 90k words”
{ time ./treap_O3.out < 90kwords.txt > O3_treap90kwordsout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap
mv O0_01k.txt /time/treap

echo “treap O0 optimization sorted 90k words”
{ time ./treap_O0.out < 90kwordssorted.txt > O0_treap90ksortedout.txt 2> treap_O0.stderr ; } 2>> treap_time_O0.dat
echo -e '\n' >> treap_time_O0.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap

echo “treap O3 optimization sorted 90k words”
{ time ./treap_O3.out < 90kwordssorted.txt > O3_treap90ksortedout.txt 2> treap_O3.stderr ; } 2>> treap_time_O3.dat
echo -e '\n' >> treap_time_O3.dat
mv O0_01k.txt /output/treap/presorted
mv O0_01k.txt /time/treap




#vim -c "argdo :22d | x" bst_time_O0.dat bst_time_O3.dat
#vim -c "argdo source timeprep.vim" bst_time_O0.dat #bst_time_O3.dat #treap_time_O0.dat #treap_time_O3.dat
#gnuplot5-x11 plot_bst_opt_0.gnu
#gnuplot5-x11 plot_bst_opt_3.gnu
#gnuplot5-x11 plot_treap_opt_0.gnu
#gnuplot5-x11 plot_treap_opt_3.gnu

