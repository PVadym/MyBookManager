package bookmanager.dao;

import bookmanager.model.Book;

import java.util.Collection;

/**
 * Created by Вадим on 16.04.2017.
 */
    public interface BookDao {

    void addBook(Book book);
    void updateBook(Book book);
    void deleteBook(int id);
    Book getBook(int id);
    Collection<Book> getAll();
}
