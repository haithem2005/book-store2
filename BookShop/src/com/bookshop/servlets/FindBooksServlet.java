package com.bookshop.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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

public class FindBooksServlet extends HttpServlet{

	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{

		Book book = null;
		List<Book> allBooks = null;

		PrintWriter out = response.getWriter();

		try {
			ResultSet resultSet = null;
			Connection connection = DatabaseConnection.initializeDatabase();

			Statement statement = null;
			
			String searchString = request.getParameter("searchString");
			String sql = "SELECT * FROM Book WHERE Title LIKE " + "'%" + searchString + "%' OR Author LIKE "+ "'%" + searchString + "%'"
					+ " OR ISBN LIKE" + "'%" + searchString + "%'" + " OR Category LIKE" + "'%" + searchString + "%'";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			allBooks = new ArrayList<Book>();
			while(resultSet.next()) {
				String bookISBN = resultSet.getString("ISBN");
				String bookTitle = resultSet.getString("Title");
				String bookAuthor = resultSet.getString("Author");
				double bookPrice = resultSet.getDouble("Price");
				String bookCategory = resultSet.getString("Category");
				book = new Book(bookISBN, bookTitle, bookAuthor, bookPrice, bookCategory);
				allBooks.add(book);
			}
//			String operation = request.getParameter("operation");

//			if (operation.equalsIgnoreCase("author")) {
//
//				String author = request.getParameter("Author");
//				String sql = "SELECT * FROM Book WHERE Author LIKE " + "'%"+ author + "%'";
//				statement = connection.createStatement();
//				resultSet = statement.executeQuery(sql);
//				allBooks = new ArrayList<Book>();
//				while(resultSet.next()) {
//					
//					String bookAuthor = resultSet.getString("Author");
//					String isbn = resultSet.getString("ISBN");
//					String title = resultSet.getString("Title");
//					double price = resultSet.getDouble("Price");
//					book = new Book(isbn, title, bookAuthor, price);
//					allBooks.add(book);
//					
//				}
//
//			}
//			else if(operation.equalsIgnoreCase("title")){
//				String title = request.getParameter("Title");
//				String sql = "SELECT * FROM Book WHERE Title LIKE " + "'%" + title + "%'";
//				statement = connection.createStatement();
//				resultSet = statement.executeQuery(sql);
//				allBooks = new ArrayList<Book>();
//				while(resultSet.next()) {
//					String bookTitle = resultSet.getString("Title");
//					String isbn = resultSet.getString("ISBN");
//					String author = resultSet.getString("Author");
//					double price = resultSet.getDouble("Price");
//					book = new Book(isbn, bookTitle, author, price);
//					allBooks.add(book);
//				}
//			}

			request.setAttribute("allBooks", allBooks);
			statement.close();
			connection.close();
			
			RequestDispatcher dispatcher =getServletContext().getRequestDispatcher("/DisplayBooksBySearch.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
