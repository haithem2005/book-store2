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

import com.bookshop.database.DatabaseConnection;
import com.bookshop.domain.Book;

public class MainPageServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{

		Book book = null;
		List<Book> allBooks = null;
		Statement statement = null;
		
		try {
			allBooks = new ArrayList<Book>();
			ResultSet resultSet = null;
			Connection connection = DatabaseConnection.initializeDatabase();
			String sql = "SELECT * FROM Book WHERE Category = 'Bestseller'";
			
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			while(resultSet.next()) {
				
				String bookISBN = resultSet.getString("ISBN");
				String bookTitle = resultSet.getString("Title");
				String bookAuthor = resultSet.getString("Author");
				double bookprice = resultSet.getDouble("Price");
				String bookImagePath = resultSet.getString("ImagePath");
				String category = "Bestseller";
				
				book = new Book(bookISBN, bookTitle, bookAuthor, bookprice,category, bookImagePath);
				allBooks.add(book);
				
			}
			request.setAttribute("allBooks", allBooks);
			statement.close();
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Index.jsp");
			dispatcher.forward(request, response);
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
