package bookmanager.model;

import javax.persistence.*;

/**
 * Created by Вадим on 16.04.2017.
 */
@Entity
@Table(name = "books")
public class Book {
    @Id
    @Column(name = "id", nullable = false,unique = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name  = "title", nullable = false)
    private String title;

    @Column(name = "autor",nullable = false)
    private String autor;

    @Column(name = "price", nullable = false)
    private int price;

    @Column(name = "discription", nullable = false)
    private String description;

//    public Book() {
//    }
//
//    public Book(String title, String autor, int price, String description) {
//        this.setTitle(title);
//        this.setAutor(autor);
//        this.setPrice(price);
//        this.setDescription(description);
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title!=null?title:"";
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor!=null?autor:"";
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price<0?0:price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description!=null?description:"";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Book book = (Book) o;

        if (price != book.price) return false;
        if (!title.equals(book.title)) return false;
        if (!autor.equals(book.autor)) return false;
        return description.equals(book.description);

    }

    @Override
    public int hashCode() {
        int result = title.hashCode();
        result = 31 * result + autor.hashCode();
        result = 31 * result + price;
        result = 31 * result + description.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", autor='" + autor + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }
}
