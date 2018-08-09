// Adapted from Professor Bernstein's class example
// wordcount_bst.cpp
//
// Copyright 2013, 2018 Systems Deployment, LLC
// Author: Morris Bernstein (morris@systems-deployment.com)

#include <iostream>
#include <string>
#include <ctime>
// #include <cstdlib>

#include "bst.h"

using namespace std;

void print_count(const string& key, int& value) {
	cout << value << "\t" << key << endl;

}

int main() {
	// Create our BST
	BST count;
	// Create the variable string for each work in the file
	string word;
	// Create a seed which will keep our randos nice and random
	srand((int)time(0));

	// int linenumber = 0;
	// While there are words in the file, feed them into our string object
	while (cin >> word) {
		// Analyze the word
		++count[word];
		// Log that word is being processed
		cerr << "*****> " << word << endl;
		// linenumber++;
	}
	// Alert the user that we are about to graph
	cerr << "=====> walking....";
	count.print();
	count.verify();
	// Graph the values
	for (auto& item : count) {
		print_count(item.first, item.second);
	}


	return 0;
}