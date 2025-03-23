//Library Management System
//Create a system to manage books in a library.
//Implement a Book class with properties like title, author, isbn, and isAvailable.
//Implement a Library class with methods:- addBook(Book book): Adds a book to the library.
//- borrowBook(String isbn): Marks a book as borrowed if available.
//- returnBook(String isbn): Marks a book as available again.- searchByTitle(String title): Returns books matching the title.
//Ensure that the system correctly updates the book's availability

import 'dart:io';

void main() {
  Library MyLibrary = Library();
  while (true) {
    print('Select an option:');
    print('1. Add a book');
    print('2. Borrow a book');
    print('3. Return a book');
    print('4. Search by title');
    print('5. Exit');
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print('Enter book title:');
        String title = stdin.readLineSync()!;
        print('Enter book author:');
        String author = stdin.readLineSync()!;
        print('Enter book ISBN:');
        String isbn = stdin.readLineSync()!;
        Book book = Book(title, author, isbn);
        MyLibrary.addBook(book);
        print('Book added successfully: $title by $author (ISBN: $isbn)');
        break;
      case 2:
        print('Enter book ISBN:');
        String isbn = stdin.readLineSync()!;
        MyLibrary.borrowBook(isbn);
        print('Book borrowed successfully');
        break;
      case 3:
        print('Enter book ISBN:');
        String isbn = stdin.readLineSync()!;
        MyLibrary.returnBook(isbn);
        print('book returned successfully');
        break;
      case 4:
        print('Enter book title:');
        String title = stdin.readLineSync()!;

        List<Book> books = [];
        for (Book book in MyLibrary.books) {
          if (book.title.toLowerCase().contains(title.toLowerCase())) {
            books.add(book);
          }
        }

        if (books.isEmpty) {
          print('No books found with title: $title');
        } else {
          for (Book book in books) {
            print(
              'Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}',
            );
          }
        }
        break;
      case 5:
        break;
      default:
        print('Invalid choice');
    }
  }
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable = true;
  Book(this.title, this.author, this.isbn);
}

class Library {
  List<Book> books = [];
  void addBook(Book book) {
    books.add(book);
  }

  void borrowBook(String isbn) {
    for (Book book in books) {
      if (book.isbn == isbn && book.isAvailable) {
        book.isAvailable = false;
        print(
          'Book borrowed: ${book.title} by ${book.author} (ISBN: ${book.isbn})',
        );
        break;
      }
    }
  }

  void returnBook(String isbn) {
    for (Book book in books) {
      if (book.isbn == isbn && !book.isAvailable) {
        book.isAvailable = true;
        print(
          'Book returned: ${book.title} by ${book.author} (ISBN: ${book.isbn})',
        );
        break;
      }
    }
  }
}
