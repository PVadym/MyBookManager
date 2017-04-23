package bookmanager.service;

import bookmanager.model.Book;
import bookmanager.dao.BookDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Вадим on 16.04.2017.
 */
@Service
public class BookServiceImpl implements BookService{


    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Transactional
    public void addBook(Book book) {
        this.bookDao.addBook(book);
    }
    @Transactional
    public void updateBook(Book book) {
        this.bookDao.updateBook(book);
    }
    @Transactional
    public void deleteBook(int id) {
        this.bookDao.deleteBook(id);
    }
    @Transactional
    public Book getBookById(int id) {
        return this.bookDao.getBook(id);
    }
    @Transactional
    public Collection<Book> getAllBooks() {
        return this.bookDao.getAll();
    }
}
