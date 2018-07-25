// Adapted from Professor Bernstein's class example

#if !defined(BST_H)
#define BST_H

#include <stack>
#include <string>
#include <utility>

const typedef std::string Key;
typedef int Value = 1;
typedef void(*Visit)(Key, Value);

class BST {
	class Node;

public:
	class Iterator;

	BST() : root_(nullptr) {}

	Value& operator[](const Key& key) {
		if (!root_) {
			root_ = new Node(key);
			return root_->value();
		}
		return root_->lookup(key);
	}

	Iterator begin();
	Iterator end();

	class Iterator {
	public:
		Iterator(Node* root);

		bool operator==(const Iterator& other);
		bool operator!=(const Iterator& other);

		Iterator& operator++();
		const std::pair<const Key&, Value&> operator*();

	private:
		void leftmost(Node* p);

		Node* current_;
		std::stack<Node*> stack_;
	};

private:
	class Node {
	public:
		Node(Key key): key_(key), value_(1), left_(nullptr), right_(nullptr) {}

		const Key& Key() { return key_; }
		Value& value() { return value_; }

		// Recursive function for looking up the value of a key
		Value& lookup(const Key& key) {
			// If the key matches the key of the current node, return the value
			if (key == key_) {
				return value_;
			}
			// If the key is lexicographically less than the current node's key
			if (key < key_) {
				// If there is no left node, create it, and return the default value
				if (!left_) {
					left_ = new Node(key);
					return left_->value_;
				}
				// Else move the node to the left and return
				return left_->lookup(key);
			}
			// If the key is NOT lexicographically less than the current node's key
			// If there is no right node, create it and return the default value
			if (!right) {
				right_ = new Node(key);
				return right_->value_;
			}
			// Else move the node to the right and return
			return right_->lookup(key);
		}

		Node* left() { return left_; }
		Node* right() { return right_; }

	private:
		const Key key_;
		Value value_;
		Node* left_;
		Node* right_;
	};
};

#endif