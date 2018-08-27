# How to compile the code

The code is compiled with the following command: (Currently only Linux is supported.)

```
./BUILD.sh
```

The input files that will be processed will be visible in the directory in case you'd look to give them a once-over. After the BST/TREAP is finished processing the in files, it will erase them. Output, standard error, and performance data will be stashed in the output, stderr, and time directories respectively.

## To compile the code separately

``` 
g++ --std=c++14 -O0 -Wall -Werror -pedantic -o bst_O0.out BST.cpp wordcount_bst.cpp
```

This will compile the O0 version of BST. To compile as a TREAP or use a different optimization level, use the -D TREAP flag and/or replace -O0 with -O3 respectively. 

# How to run the solution

In order to run the solution, run the following command: (Currently only Linux is tested.)

```
./RUN.sh
```

### What this does

1. This is going to run both versions of the BST and TREAP using input files ranging from 1k to 90k words. It will be performed using two optimization levels, O0 and O3.

### Output

1. In the output directory will be the output files.
2. Performance data is available in the time directory.
3. In the stderr directory will be the standard error files.

### Cleanup

1. To restore the directory use the following command.

``` 
./CLEAN.sh
```

# TESTING

To test the program using the included small data files, run the following command

``` 
./treap_O2.out < numbers.txt > numbers_output.txt
```

"treap_O2.out" may be substituted with any of the .out files in the directory. "two.txt" may be substituted with any of the test files located in the test files directory.