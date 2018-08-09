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

void BST::set_valtoreturn(Value value)
{
	valtoreturn = &value;
}

// Part of our custom iterator class. Returns leftmost value in the tree
BST::Iterator BST::begin() {
	return Iterator(root_);
}

// Returns one past the last value in the tree, which is correct
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
	stack_.pop();
}

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
		if (ptr->left()->key() > ptr->key())
			cerr << "Uh oh, left child key is larger" << endl;
		if (ptr->left()->priority() > ptr->priority())
			cerr << "Uh oh, child priority is greater than parent" << endl;
		verify(ptr->left());
	}
	if (ptr->right())
	{
		if (ptr->right()->key() < ptr->key())
			cerr << "Uh oh, right child key is smaller" << endl;
		if (ptr->right()->priority() > ptr->priority())
			cerr << "Uh oh, child priority is greater than parent" << endl;
		verify(ptr->right());
	}
}

bool BST::Iterator::operator!=(const BST::Iterator& other) {
	return !(*this == other);
}


BST::Iterator& BST::Iterator::operator++() {
	if (stack_.empty()) {
		current_ = nullptr;
		return *this;
	}
	current_ = stack_.top();
	stack_.pop();
	// stack size = 1
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