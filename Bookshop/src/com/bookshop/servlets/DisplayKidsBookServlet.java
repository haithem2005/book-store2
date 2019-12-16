package com.bookshop.servlets;

import java.io.IOException;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookshop.database.DBConnection;
import com.bookshop.domain.Book;
public class DisplayKidsBookServlet extends HttpServlet{
    public void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException{
        Book book = null;
        List<Book> allBooks = null;
        Statement statement = null;
        try {
            allBooks = new ArrayList<Book>();
            ResultSet resultSet = null;
            Connection connection = DBConnection.initializeDatabase();
            String sql = "SELECT * FROM Book WHERE Category = 'Kids'";
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()) {
                String bookISBN = resultSet.getString("ISBN");
                String bookTitle = resultSet.getString("Title");
                String bookAuthor = resultSet.getString("Author");
                double bookprice = resultSet.getDouble("Price");
                String category = "Kids";
                String imagePath = resultSet.getString("ImagePath");
                book = new Book(bookISBN, bookTitle, bookAuthor, bookprice,category, imagePath);
                allBooks.add(book);
            }
            request.setAttribute("allBooks", allBooks);
            statement.close();
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/DisplayAllBooks.jsp");
            dispatcher.forward(request, response);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
