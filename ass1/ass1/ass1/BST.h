// Adapted from Professor Bernstein's class example

#if !defined(BST_H)
#define BST_H

#include <stack>
#include <string>
#include <utility>
#include <iostream>

// Our typedefs which are required for our iterator class to work properly
typedef std::string Key;
typedef int Value;

class BST {
	// Forward declaring node class
	class Node;

public:	
	// Forward declaring iterator class
	class Iterator;

	// BST constructor. Root and valtoreturn initialized to nullptr.
	BST() : valtoreturn(nullptr), root_(nullptr) {} 

	void print();
	// During looking up, inserting, and rebalancing we save the reference of the value we must return into valtoreturn
	Value* valtoreturn;

#ifdef TREAP
	void verify();
#endif

	// Return a reference to a value for a given key, inserting if needed 
	Value& operator[](const Key& key) {
		// If the tree is empty as it stands, create our root and return its value
		if (!root_) {
			root_ = new Node(key);
			return root_->value(); 
		}
#ifndef TREAP
		// Lookup our given key, inserting if needed
		return root_->lookup(key);
#endif
#ifdef TREAP
		// Lookup our given key, inserting if needed, rebalancing on the way back, updating our root (incase the rebalance does change the root)
		root_ = root_->lookup(root_, key, &valtoreturn); // We pass valtoreturn which we will be updated with the reference of the value we will return
		return *valtoreturn; // We either find our given key, or it is created. Either way valtoreturn is updated and we return it
#endif	
	}

	// Forward declare begin and end iterators. 
	Iterator begin();
	Iterator end();

	// Our custom iterator class
	class Iterator {
	public:
		Iterator(Node* root);

		bool operator==(const Iterator& other);
		bool operator!=(const Iterator& other);

		Iterator& operator++();
		const std::pair<const Key&, Value&> operator*();

	private:
		// Find leftmost node
		void leftmost(Node* p);

		// Setting aside a pointer for a 'current' node
		Node* current_;
		bool firstword_; // Bool used to track if we are on the first word of the tree and fix our right-nodes-all-the-way-down bug
		std::stack<Node*> stack_;
	};

private:
	// Our node class which is contained in the private section of the BST class
	class Node {
	public:
#ifndef TREAP
		Node(Key key) : key_(key), value_(), left_(nullptr), right_(nullptr) {}
#endif

#ifdef TREAP
		// Construct a node and set its priority to a random number
		Node(Key key) : key_(key), value_(), priority_(rand()), left_(nullptr), right_(nullptr) {}
#endif

		const Key& key() { return key_; }
		Value& value() { return value_; }

#ifndef TREAP
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
			if (!right_) {
				right_ = new Node(key);
				return right_->value_;
			}
			// Else move the node to the right and return
			return right_->lookup(key);
			}
#endif

		// Our treap lookup/insert and rebalance functions
#ifdef TREAP
		// We look up our desired key in the tree, if it is found, we return a reference to its value. If not, we insert. Rebalance on the way back up
		Node* lookup(Node* ptr, const Key& key, Value** valtoreturn) { // Takes const ref
			if (ptr->key_ == key) {
				*valtoreturn = &(ptr->value()); // If the key is found, we set valtoreturn to the value associated with that key
			}
			// We recurse left and we recurse right. Inserting and updating valtoreturn if needed
			if (key < ptr->key_) {
				if (!ptr->left_)
				{
					ptr->left_ = new Node(key);
					*valtoreturn = &(ptr->left_->value());
				}
				else
				{
					ptr->left_ = lookup(ptr->left_, key, valtoreturn);
				}
				return rebalance(ptr, valtoreturn); // We rebalance on the way back from recursion
			}

			else
			{
				if (!ptr->right_) {
					ptr->right_ = new Node(key);
					*valtoreturn = &(ptr->right_->value());
				}
				else
				{
					ptr->right_ = lookup(ptr->right_, key, valtoreturn);
				}
				return rebalance(ptr, valtoreturn);
			}
		}

		
		Node* rebalance(Node* ptr, Value** valtoreturn)
		{
			if (ptr->left_)
			{
				if (ptr->left_->priority() > ptr->priority())
				{
					// right rotate
					auto x = std::move(ptr->left_);
					ptr->left_ = std::move(x->right_);
					x->right_ = std::move(ptr);
					ptr = std::move(x);

					// Return new root
					return ptr;
				}
			}
			if (ptr->right_)
			{
				if (ptr->right_->priority() > ptr->priority())
				{
					auto x = std::move(ptr->right_);
					ptr->right_ = std::move(x->left_);
					x->left_ = std::move(ptr);
					ptr = std::move(x);

					return ptr;
				}
			}
			return ptr;
		}
#endif	

		void print(Node* root)
		{
			print_helper(root);
		}

#ifdef TREAP
		unsigned priority() { return priority_; }
#endif

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
#ifndef TREAP
			std::cout << "key: " << ptr->key() << " " << "value: " << ptr->value() << std::endl;
#endif

#ifdef TREAP
			std::cout << "key: " << ptr->key() << " " << "value: " << ptr->value() << " " << "priority: " << ptr->priority() << std::endl;
#endif
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
#ifdef TREAP
		unsigned priority_;
#endif
		Node* left_;
		Node* right_;
	};

#ifdef TREAP
	void verify(Node* root);
#endif
	Node* root_;
};

#endif