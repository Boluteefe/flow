import Library from 0x05

pub fun main(title: String): Library.Book {
    return Library.books[title]!
}
