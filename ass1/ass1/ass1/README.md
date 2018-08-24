# How to compile the code

The code is compiled with the following command: (Currently only Linux is supported.)

```
./BUILD.sh
```

# How to run the solution

Before you run the solution, please ensure you have the latest version of gnuplot. This is done using

``` 
gnuplot5-x11 --version
```

If you do not have gnuplot, please install it using the following command

``` 
sudo apt install gnuplot5-x11
```

In order to run the solution run the following command: (Currently only Linux is supported.)

```
./runn.sh
```

### What this does

1. This is going to run both versions of the BST and TREAP using input files ranging from 10k to 100k words. It will be ran using four optimization levels.

### Output

1. In the output directory will be the alphabetized and word-count-included versions of the input files.
2. Performance data is available in the time directory.
3. Graphs are available in the graphs directory.

### Cleanup

1. To restore the directories use the following command

``` 
./CLEAN.sh
```

# TESTING

To test the program using the included small data file, run the following command

``` 
./treap_O2.out < smallinputfile.txt > testoutput.txt 2> hello.stderr
```

"treap_O2.out" may be substituted with any of the .out files in the directory.