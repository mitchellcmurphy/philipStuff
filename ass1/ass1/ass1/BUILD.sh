#! /bin/bash

echo "build bst level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -o bst_O0 BST.cpp wordcount_bst.cpp

echo "build bst level 1 optimized"
g++ --std=c++14 -O1 -Wall -Werror -pedantic -o bst_O1 BST.cpp wordcount_bst.cpp

echo "build bst level 2 optimized"
g++ --std=c++14 -O2 -Wall -Werror -pedantic -o bst_O2 BST.cpp wordcount_bst.cpp

echo "build bst level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -o bst_O3 BST.cpp wordcount_bst.cpp

echo "build treap level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -D TREAP -o treap_O0 BST.cpp wordcount_bst.cpp

echo "build treap level 1 optimized"
g++ --std=c++14 -O1 -Wall -Werror -pedantic -D TREAP -o treap_O1 BST.cpp wordcount_bst.cpp

echo "build treap level 2 optimized"
g++ --std=c++14 -O2 -Wall -Werror -pedantic -D TREAP -o treap_O2 BST.cpp wordcount_bst.cpp

echo "build treap level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -D TREAP -o treap_O3 BST.cpp wordcount_bst.cpp

echo “create 10k word document”
python generatewords.py 10000 8 > 10kwords.txt

echo “create 10k word document sorted”
sort 10kwords.txt > 10kwordssorted.txt

echo “create 25k word document”
python generatewords.py 25000 8 > 25kwords.txt

echo “create 25k word document sorted”
sort 25kwords.txt > 25kwordssorted.txt

echo “create 50k word document”
python generatewords.py 50000 8 > 50kwords.txt

echo “create 50k word document sorted”
sort 50kwords.txt > 50kwordssorted.txt

echo “create 90k word document”
python generatewords.py 90000 8 > 90kwords.txt

echo “create 90k word document sorted”
sort 90kwords.txt > 90kwordssorted.txt
