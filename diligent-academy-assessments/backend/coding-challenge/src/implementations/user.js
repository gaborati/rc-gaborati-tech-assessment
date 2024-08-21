export class User {
  constructor() {
    this.books = [];
  }

  borrow(book, library) {
    
    if (!library.getBooks().includes(book)) {
      console.error(`The library does not have the book: ${book.name}`);
      return false;
    }

    this.books.push(book);
    library.removeBook(book);
   
  }

  hasBook(book) {
    return this.books.includes(book);
  }

  return(book, library) {
    const index = this.books.indexOf(book);

    if (index === -1) {
      console.error(`Cannot return book: ${book.name}, not borrowed.`);
      return false;
    }
    this.books.splice(index, 1);
    library.addBook(book);
    return true;
  }

  getBookNames() {
    if (this.books && Array.isArray(this.books)) {
      return this.books.map((book) => book.name);
    } else {
      console.error("Books is not an array");
      return [];
    }
  }
}
