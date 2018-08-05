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


bool BST::Iterator::operator!=(const BST::Iterator& other) {
	return !(*this == other);
}

void BST::rebalance()
{
	rebalance(root_);
}

void BST::rebalance(Node* ptr)
{
	if (ptr->left())
	{
		if (ptr->left()->priority() > ptr->priority())
		{
			ptr = rotate_right(ptr);
		}
		rebalance(ptr->left());
	}
	if (ptr->right())
	{
		if (ptr->right()->priority() > ptr->priority())
		{
			ptr = rotate_left(ptr);
		}
		rebalance(ptr->right());
	}
}

BST::Node* BST::rotate_right(Node * ptr)
{
		Node* x = ptr->left();
		Node* T2 = x->right();

		// Perform rotation
		x->set_right(ptr);
		ptr->set_left(T2);

		// Return new root
		return x;
}

BST::Node* BST::rotate_left(Node * ptr)
{
		Node* y = ptr->right();
		Node* T2 = y->left();

		// Perform rotation
		y->set_left(ptr);
		ptr->set_right(T2);

		// Return new root
		return y;
}



BST::Iterator& BST::Iterator::operator++() {
	if (stack_.empty()) {
		current_ = nullptr;
		return *this;
	}
	current_ = stack_.top();
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