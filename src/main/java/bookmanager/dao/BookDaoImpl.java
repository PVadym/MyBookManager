package bookmanager.dao;

import bookmanager.model.Book;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


import java.util.List;

/**
 * Created by Вадим on 16.04.2017.
 */
@Repository
public class BookDaoImpl implements BookDao {

    private static final Logger LOGGER = Logger.getLogger(BookDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
        LOGGER.info("Book save successfully - " + book);
    }

    public void updateBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
        LOGGER.info("Book updated successfully - " + book);

    }

    public void deleteBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = session.get(Book.class,id);
        if (book!=null) {
            session.delete(book);
        }
        LOGGER.info("Book deleted successfully - " + book);
    }

    public Book getBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = session.get(Book.class, id);
        LOGGER.info("Book loaded successfully - " + book);
        return book;
    }

    @SuppressWarnings("unchecked")
    public List<Book> getAll() {
        Session session = this.sessionFactory.getCurrentSession();;
        List<Book> bookList = session.createQuery("from Book").list();
        for (Book book : bookList) {
            LOGGER.info("Book : " + book);

        }
        return bookList;
    }
}
