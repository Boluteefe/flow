import Library from 0x05

transaction(title: String, author: String, genre: String, availableCopies: UInt32) {

    prepare(signer: AuthAccount) {}

    execute {
        Library.addBook(title: title, author: author, genre: genre, availableCopies: availableCopies)
        log("Added successfully.")
    }
}
