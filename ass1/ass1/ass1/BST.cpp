// Adapted from Professor Bernstein's class example

#include "BST.h"

#include <iostream>

using namespace std;

void BST::print()
{
	if (root_)
	{
		root_->print(root_);
	}
	else
	{
		cerr << "Cannot print, tree is empty" << endl;
	}
}

// Part of our custom iterator class. Returns leftmost value in the tree
BST::Iterator BST::begin() {
	return Iterator(root_);
}

// Returns one past the last value in the tree
BST::Iterator BST::end() {
	return Iterator(nullptr);
}


bool BST::Iterator::operator==(const BST::Iterator& other) {
	return current_ == other.current_;
}


BST::Iterator::Iterator(BST::Node* root) {
	if (!root) {
		current_ = nullptr;
		return;
	}
	leftmost(root);
	current_ = stack_.top();
	firstword_ = true;
}

#ifdef TREAP
// Verify that the tree maintains heap property and binary search tree rules are still observed
void BST::verify()
{
	cerr << "verifying now... if no error messages, everything is all good" << endl;
	if (root_)
		verify(root_);
	else
		cerr << "nothing in tree" << endl;
}

void BST::verify(Node* ptr)
{
	if (ptr->left())
	{
		if (ptr->left()->key() > ptr->key()) // Double check to make sure left child's key is still lexicographically smaller than parent's key
			cerr << "Uh oh, left child key is larger" << endl; // Print error message if not
		if (ptr->left()->priority() > ptr->priority()) // Check if left child's priority is greater than parent's priority
			cerr << "Uh oh, child priority is greater than parent" << endl; // Print error message if it is
		verify(ptr->left()); // Recurse left
	}
	if (ptr->right())
	{
		if (ptr->right()->key() < ptr->key()) // Double check to make sure right child's key is still lexicographically smaller than parent's key
			cerr << "Uh oh, right child key is smaller" << endl; // Print error message if not
		if (ptr->right()->priority() > ptr->priority()) // Check if right child's priority is greater than parent's priority
			cerr << "Uh oh, child priority is greater than parent" << endl; // Print error message if it is
		verify(ptr->right()); // Recurse right
	}
}
#endif

bool BST::Iterator::operator!=(const BST::Iterator& other) {
	return !(*this == other);
}


BST::Iterator& BST::Iterator::operator++() {
	if (stack_.empty()) {
		current_ = nullptr;
		return *this;
	}
	// If the firstword_ is true, this means we delayed the pop from our iterator constructor
	// This is so we can make it past the above test without the risk of an empty stack. Pop now and rearrange stack
	// to get it ready for the rest of the range-based for loop. Set firstword_ back to false
	if (firstword_ == true)
	{
		if (!stack_.empty())
			stack_.pop();
		leftmost(current_->right());
		if (!stack_.empty())
			current_ = stack_.top();
		firstword_ = false;
	}

	else // If this is not the first word, proceed as normal
	{
		if (!stack_.empty())
			current_ = stack_.top(); // Proceed as normal
	}
	if (!stack_.empty())
		stack_.pop();
	leftmost(current_->right());
	return *this;
}

const std::pair<const Key&, Value&> BST::Iterator::operator*() {
	return pair<const Key&, Value&>(current_->key(), current_->value());
}

void BST::Iterator::leftmost(BST::Node* p) {
	while (p) {
		stack_.push(p);
		p = p->left();
	}
}