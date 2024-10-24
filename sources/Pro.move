module MyModule::ELibrary {

    use aptos_framework::signer;
    use std::string::String;

    /// Struct representing a book in the library.
    struct Book has store, key {
        title: String,
        copies: u64,  // Number of available copies
    }

    /// Function to add a new book to the library.
    public fun add_book(owner: &signer, title: String, copies: u64) {
        assert!(copies > 0, 1);  // Ensure there are positive copies
        let book = Book {
            title,
            copies,
        };
        move_to(owner, book);
    }

    /// Function to borrow a book if copies are available.
    public fun borrow_book(_borrower: &signer, book_owner: address) acquires Book {
        let book = borrow_global_mut<Book>(book_owner);
        assert!(book.copies > 0, 2);  // Ensure at least one copy is available
        book.copies = book.copies - 1;  // Decrease available copies
    }
}
