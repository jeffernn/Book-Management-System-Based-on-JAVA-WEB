package com.example.demo.entity;

public class Book {
    private String id; // 保持为Integer或int
    private String bookname;
    private String author;
    private String press;
    private String pubdate; // 修改为java.sql.Date或其他适当的日期类型
    private String isbn;
    private String available;

    public Book(String id, String bookname, String author, String press, String pubdate,  String isbn,String available) {
        this.id = id;
        this.bookname = bookname;
        this.author = author;
        this.press = press;
        this.pubdate = pubdate;
        this.isbn = isbn;
        this.available=available;
    }


    public String getId() {
        return id;
    }

    public String getBookname() {
        return bookname;
    }

    public String getAuthor() {
        return author;
    }

    public String getPress() {
        return press;
    }

    public String getPubdate() {
        return pubdate;
    }

    public String getIsbn() {
        return isbn;
    }
    public String getAvailable(){
        return available;
    }
    // ... 其他代码 ...


}
