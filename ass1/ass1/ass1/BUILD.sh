#! /bin/bash

echo “generating input text files”

python generatewords.py 1000 8 > 1kwords.txt
sort 1kwords.txt > 1kwordssorted.txt
python generatewords.py 10000 8 > 10kwords.txt
sort 10kwords.txt > 10kwordssorted.txt
python generatewords.py 20000 8 > 20kwords.txt
sort 20kwords.txt > 20kwordssorted.txt
python generatewords.py 30000 8 > 30kwords.txt
sort 30kwords.txt > 30kwordssorted.txt
python generatewords.py 40000 8 > 40kwords.txt
sort 40kwords.txt > 40kwordssorted.txt
python generatewords.py 50000 8 > 50kwords.txt
sort 50kwords.txt > 50kwordssorted.txt
python generatewords.py 60000 8 > 60kwords.txt
sort 60kwords.txt > 60kwordssorted.txt
python generatewords.py 70000 8 > 70kwords.txt
sort 70kwords.txt > 70kwordssorted.txt
python generatewords.py 80000 8 > 80kwords.txt
sort 80kwords.txt > 80kwordssorted.txt
python generatewords.py 90000 8 > 90kwords.txt
sort 90kwords.txt > 90kwordssorted.txt

echo "build bst level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -o bst_O0.out BST.cpp wordcount_bst.cpp

echo "build bst level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -o bst_O3.out BST.cpp wordcount_bst.cpp

echo "build treap level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -D TREAP -o treap_O0.out BST.cpp wordcount_bst.cpp

echo "build treap level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -D TREAP -o treap_O3.out BST.cpp wordcount_bst.cpp
