# Library Smart Contract

## Overview

This repository contains the source code for a Library smart contract, designed to manage books in the library on the blockchain. The contract provides functionality for adding and retrieving library books.

## Table of Contents

- [Features](#features)
- [Details](#details)
- [Transaction](#transaction-code)
- [Script](#script-code)
- [Author](#author)

## Details

### User Profile

The contract defines a `Book` struct with the following properties:

- `title` (String)
- `author` (String)
- `genre` (String)
- `availableCopies` (UInt32)

## Features

- **Adding Books**: Users can add books with their titles, authors, genres and no of copies.
- **Retrieving Books**: Retrieve info about library books based on their titles.

## Transaction Code

### Create User Profile

```cadence
import Library from 0x05

transaction(title: String, author: String, genre: String, availableCopies: UInt32) {

    prepare(signer: AuthAccount) {}

    execute {
        Library.addBook(title: title, author: author, genre: genre, availableCopies: availableCopies)
        log("Added successfully")
    }
}
```

## Script Code

### Create User Profile

```cadence
import Library from 0x05

pub fun main(title: String): Library.Book {
    return Library.books[title]!
}

```

## Author

### Boluwatife
