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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookshop.database.DatabaseConnection;
import com.bookshop.domain.Book;

public class DisplayAllBooksServlet extends HttpServlet{

	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{

		Book book = null;
		List<Book> allBooks = null;
		Statement statement = null;
		PreparedStatement preparedStatement = null;

		try {
			allBooks = new ArrayList<Book>();
			ResultSet resultSet = null;
			Connection connection = DatabaseConnection.initializeDatabase();
			String sql = "SELECT * FROM Book";

			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				String isbn = resultSet.getString("ISBN");
				String title = resultSet.getString("Title");
				String author = resultSet.getString("Author");
				double price = resultSet.getDouble("Price");
				String category = resultSet.getString("Category");
				book = new Book(isbn, title, author, price,category);
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
