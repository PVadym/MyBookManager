package bookmanager.controller;

import bookmanager.model.Book;
import bookmanager.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Вадим on 16.04.2017.
 */

@Controller
public class BookController {

    private BookService bookService;

    @Autowired
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "books", method = RequestMethod.GET)
    public ModelAndView booksList() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("listBooks", bookService.getAllBooks());
        modelAndView.setViewName("books");
        return modelAndView;
    }

    @RequestMapping(value = "/books/add/new", method = RequestMethod.GET)
    public String getNewBookPage() {
        return "add_book";
    }

    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book) {
        this.bookService.addBook(book);
        return "redirect:/books";
    }

    @RequestMapping(value = "/remove/{id}")
    public String deleteBook(@PathVariable(value = "id") int id) {
        this.bookService.deleteBook(id);
        return "redirect:/books";
    }


    @RequestMapping("edit/{id}")
    public ModelAndView getPageEditBook(@PathVariable("id") int id) {
        ModelAndView model = new ModelAndView();
        model.addObject("book", this.bookService.getBookById(id));
        model.setViewName("edit_book");
        return model;
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.POST)
    public String updateBook(@PathVariable("id") int id,
                             @RequestParam("title") String title,
                             @RequestParam("autor") String autor,
                             @RequestParam("price") int price,
                             @RequestParam("description") String description) {
        Book book = bookService.getBookById(id);
        book.setTitle(title);
        book.setAutor(autor);
        book.setDescription(description);
        book.setPrice(price);
        bookService.updateBook(book);
        return "redirect:/books";
    }


    @RequestMapping("book_data/{id}")
    public ModelAndView bookData(@PathVariable("id") int id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("book", this.bookService.getBookById(id));
        modelAndView.setViewName("book_data");

        return modelAndView;
    }

}
