#! /bin/bash

echo "build bst level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -o bst_O0.out BST.cpp wordcount_bst.cpp

echo "build bst level 1 optimized"
g++ --std=c++14 -O1 -Wall -Werror -pedantic -o bst_O1.out BST.cpp wordcount_bst.cpp

echo "build bst level 2 optimized"
g++ --std=c++14 -O2 -Wall -Werror -pedantic -o bst_O2.out BST.cpp wordcount_bst.cpp

echo "build bst level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -o bst_O3.out BST.cpp wordcount_bst.cpp

echo "build treap level 0 optimized"
g++ --std=c++14 -O0 -Wall -Werror -pedantic -D TREAP -o treap_O0.out BST.cpp wordcount_bst.cpp

echo "build treap level 1 optimized"
g++ --std=c++14 -O1 -Wall -Werror -pedantic -D TREAP -o treap_O1.out BST.cpp wordcount_bst.cpp

echo "build treap level 2 optimized"
g++ --std=c++14 -O2 -Wall -Werror -pedantic -D TREAP -o treap_O2.out BST.cpp wordcount_bst.cpp

echo "build treap level 3 optimized"
g++ --std=c++14 -O3 -Wall -Werror -pedantic -D TREAP -o treap_O3.out BST.cpp wordcount_bst.cpp
