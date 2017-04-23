package bookmanager.service;

import bookmanager.model.Book;

import java.util.Collection;

/**
 * Created by Вадим on 16.04.2017.
 */
public interface BookService {

    void addBook(Book book);
    void updateBook(Book book);
    void deleteBook(int id);
    Book getBookById(int id);
    Collection<Book> getAllBooks();
}
