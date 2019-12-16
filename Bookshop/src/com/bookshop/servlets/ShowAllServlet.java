package com.bookshop.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookshop.database.DBConnection;
import com.bookshop.domain.Book;

/**
 * Servlet implementation class ShowAllServlet
 */
@WebServlet("/showall.html")
public class ShowAllServlet extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Book book = null;
	        List<Book> allBooks = null;
	        Statement statement = null;
	        PreparedStatement preparedStatement = null;
	        try {
	            allBooks = new ArrayList<Book>();
	            ResultSet resultSet = null;
	            Connection connection = DBConnection.initializeDatabase();
	            String sql = "SELECT * FROM Book";
	            statement = connection.createStatement();
	            resultSet = statement.executeQuery(sql);
	            while(resultSet.next()) {
	                String isbn = resultSet.getString("ISBN");
	                String title = resultSet.getString("Title");
	                String author = resultSet.getString("Author");
	                double price = resultSet.getDouble("Price");
	                String category = resultSet.getString("Category");
	                String imagePath = resultSet.getString("ImagePath");
	                book = new Book(isbn, title, author, price,category, imagePath);
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
