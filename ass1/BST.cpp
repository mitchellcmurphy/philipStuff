// Adapted from Professor Bernstein's class example

#include "BST.h"

#include <iostream>

using namespace std;


BST::Iterator BST::begin() {
	return Iterator(root_);
}


BST::Iterator BST::end() {
	return Iterator(nullptr);
}


bool BST::Iterator::operator==(Node::Iterator& other) {
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


BST::Iterator& BST::Iterator::operator++() {
	// If our current stack is empty, return a null pointer
	if (stack_.empty) {
		return nullptr;
	}
	// Else, set the current node to the top of the stack
	current_ = stack_.top();
	// Pop the value
	stack_.pop();
	// Find the leftmost key of the current node's right node
	leftmost(current_->right());
	return *this;
}

const std::pair<const Key&, Value&> BST::Iterator::operator*() {
	return pair<const Key&, Value&>(current_->key(), current_->value());
}

void BST::Iterator::leftmost(BST::Node* p) {
	// While we have a node to operate on (meaning we are moving left)
	while (p) {
		// Push the left node into our stack
		stack_.push(p);
		// Move the node to the left
		p = p->left();
	}
}