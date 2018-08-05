// Adapted from Professor Bernstein's class example

#if !defined(BST_H)
#define BST_H

#include <stack>
#include <string>
#include <utility>
#include <iostream>
// #include <cstdlib>

// Our typedefs which are required for our iterator class to work properly
typedef std::string Key; // Took away const, his latest example did not have it
typedef int Value;
// Unsure about the following
// Question for Classmates. What is the purpose of this *Visit

class BST {
	// Forward declaring node class
	class Node;

public:	
	// Forward declaring iterator class
	class Iterator;

	// BST constructor and root initialized to nullptr.
	BST() : root_(nullptr) {} 

	void print();

	// Here the professor overloaded the square brackets operator as per the instructions. 
	Value& operator[](const Key& key) { // Parameter here must be const because there is no reason for anything down the line to change or mess with the key we pass
		if (!root_) {
			root_ = new Node(key);
			return root_->value(); 
		}
		return root_->lookup(key);
	}

	// Forward declare - or at least I believe this is us forward declaring - begin and end. 
	Iterator begin();
	Iterator end();

	void rebalance();

	// Our custom iterator class
	class Iterator {
	public:
		// Constructor takes a pointer to the root node
		Iterator(Node* root);

		// Overloading the == and =! operator
		// Parameters are a const reference to an iterator
		bool operator==(const Iterator& other);
		bool operator!=(const Iterator& other);

		Iterator& operator++();
		const std::pair<const Key&, Value&> operator*();

	private:
		// Find leftmost node
		void leftmost(Node* p);

		// Setting aside a pointer for a 'current' node
		Node* current_;
		// Stack of node pointers called stack_
		std::stack<Node*> stack_;
	};

private:
	// Our node class which is contained in the private section of the BST class
	class Node {
	public:
		// Ctor, when do we set this to 1? 
		Node(Key key) : key_(key), value_(), priority_(rand()), left_(nullptr), right_(nullptr) {}

		const Key& key() { return key_; } // Need help wrapping my mind around these. This is a reference to a Key, it is const, it's called key(), and it returns key_
		Value& value() { return value_; } // Same here. A reference to a Value called value() and returns value_

		// Look up a value (word count) based on a key (word), return a reference to the wordcount if the word is found, if it is not found, we add
		Value& lookup(const Key& key) { // Takes const ref
			if (key == key_) {
				return value_;
			}
			if (key > key_) {
				if (!right_) {
					right_ = new Node(key);
					// rebalance();
					return right_->value_;
				}
				return right_->lookup(key);
			}
			if (!left_) {
				left_ = new Node(key);
				return left_->value_;
			}
			return left_->lookup(key);
		}

		void print(Node* root)
		{
			print_helper(root);
		}

		unsigned priority() { return priority_; }

		// Public accessor for our private left_ and right_. Why though?
		Node* left() { return left_; }
		Node* right() { return right_; }
		void set_right(Node* ptr)
		{
			right_ = ptr;
		}
		void set_left(Node* ptr)
		{
			left_ = ptr;
		}

	private:
		void print_helper(Node* ptr)
		{
			std::cout << "key: " << ptr->key() << " " << "value: " << ptr->value() << " " << "priority: " << ptr->priority() << std::endl;
			if (ptr->left_)
			{
					print_helper(ptr->left_);
			}
			if (ptr->right_)
			{
					print_helper(ptr->right_);
			}
		}

		

		Key key_;
		Value value_;
		unsigned priority_;
		Node* left_;
		Node* right_;
	};

	void rebalance(Node * ptr);
	Node* root_;
	Node* rotate_right(Node* ptr);
	Node* rotate_left(Node* ptr);
};

#endif