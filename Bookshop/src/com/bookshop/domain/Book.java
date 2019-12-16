package com.bookshop.domain;
public class Book {
    private String isbn;
    private String title;
    private String author;
    private double price;
    private String category;
    private String imagePath;
    
    public Book(String isbn, String title, String author, double price, String category) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.price = price;
        this.category = category;
    }
    
    public Book(String isbn, String title, String author, double price, String category, String imagePath) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.price = price;
        this.category = category;
        this.imagePath = imagePath;
    }
    public Book(String isbn, String title, String author, double price) {
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.price = price;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public String getISBN() {
        return isbn;
    }
    public void setISBN(String ISBN) {
        this.isbn = ISBN;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public String getImagePath() {
        return imagePath;
    }
    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
    @Override
    public String toString() {
        return getISBN()+ "', " + getTitle() + "', " + getAuthor() + "', " + getPrice() + "', " + getCategory();
    }
}




