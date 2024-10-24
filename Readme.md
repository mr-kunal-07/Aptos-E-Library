# ELibrary Smart Contract

## Vision

The **ELibrary** project aims to create a decentralized library management system that empowers users to manage and borrow books securely and transparently. By leveraging blockchain technology, we ensure the integrity and availability of book records while facilitating an easy borrowing process for users.

## Features

- **Book Management**: 
  - Users can add new books to the library with titles and available copies.
  
- **Borrowing System**:
  - Users can borrow books if copies are available, ensuring fair access to library resources.

- **Decentralization**:
  - The library operates on a blockchain, providing transparent and tamper-proof records of books and transactions.

- **Ownership Tracking**:
  - Each book is associated with its owner, enabling accountability and clarity in borrowing transactions.

## Smart Contract Details

### Contract Address
The smart contract is deployed at the following address:

### Functions

1. **`add_book(owner: &signer, title: String, copies: u64)`**:
   - **Description**: Adds a new book to the library with the specified title and number of copies.
   - **Parameters**:
     - `owner`: The signer who is adding the book.
     - `title`: The title of the book.
     - `copies`: The number of copies available for borrowing.

2. **`borrow_book(_borrower: &signer, book_owner: address)`**:
   - **Description**: Allows a user to borrow a book if copies are available.
   - **Parameters**:
     - `_borrower`: The signer attempting to borrow the book.
     - `book_owner`: The address of the book's owner.


### Transaction 

![Transaction Screenshot](<Insert_Screenshot_URL_Here>)<img width="948" alt="Transition" src="https://github.com/user-attachments/assets/26d8ca57-c096-4eb8-8e91-94825fd54623">


- **Transaction ID**: `0x2383c92827a022c699b77afc9a688ee4a3bdec240f40aa8435de8e8de7e39bf7`


## Future Scope

- **Enhanced User Interface**: Develop a user-friendly web or mobile application to interact with the smart contract, making it easier for users to add and borrow books.

- **Return Functionality**: Implement a feature to allow users to return borrowed books, updating the number of available copies.

- **Search and Filter Options**: Integrate advanced search and filter options for users to find books based on categories, titles, or authors.

- **Analytics Dashboard**: Create an analytics dashboard for owners to view statistics on book borrowing trends and popular titles.

- **Community Features**: Introduce community-driven features such as book reviews, ratings, and recommendations to enhance user engagement.

## Getting Started

To deploy and interact with this smart contract, you will need:

1. An Aptos wallet to manage your account.
2. Access to the Aptos blockchain.
3. The Aptos CLI for deploying and testing the smart contract.

For more information on setting up your environment, please refer to the [Aptos documentation](https://aptos.dev/docs).
