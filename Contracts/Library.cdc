contract Library {

    pub var books: {String: Book}
    
    pub struct Book {
        pub let title: String
        pub let author: String
        pub let genre: String
        pub let availableCopies: UInt32

        // Initialize with 5 arguments.
        init(_title: String, _author: String, _genre: String, _availableCopies: UInt32) {
            self.title = _title
            self.author = _author
            self.genre = _genre
            self.availableCopies = _availableCopies
        }
    }

    // Function to add a new book to the library.
    pub fun addBook(title: String, author: String, genre: String, availableCopies: UInt32) {
        let newBook = Book(_title: title, _author: author, _genre: genre, _availableCopies: availableCopies)
        self.books[title] = newBook
    }

    // Contract initialization.
    init() {
        self.books = {}
    }

}
