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

public class FindBookByAuthorServlet extends HttpServlet{



	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		Book book = null;
		List<Book> allBooks = null;
		PrintWriter out = response.getWriter();
		

		try {
			ResultSet resultSet = null;
			Connection connection = DatabaseConnection.initializeDatabase();
			//			String author = request.getParameter("Author");
			//			PreparedStatement statement = connection.prepareStatement("SELECT * FROM Book WHERE Author = ?" + author);
			//
			//			
			//			resultSet = statement.executeQuery();
			//			out.println("###########");
			//			while(resultSet.next()) {
			//
			//				out.println(resultSet.getString(2));
			//				//				String title = resultSet.getString("Title");
			//				//				String author = resultSet.getString("Author")
			//				statement.close();
			//				connection.close();
			String author = request.getParameter("Author");
			String sql = "SELECT * FROM Book WHERE Author LIKE " + "'%"+ author + "%'";
			Statement st = connection.createStatement();
			resultSet = st.executeQuery(sql);
			allBooks = new ArrayList<Book>();
			while (resultSet.next()) {
				
				String isbn = resultSet.getString("ISBN");
				String title = resultSet.getString("Title");
				double price = resultSet.getDouble("Price");
				String category = resultSet.getString("Category");
				
				book = new Book(isbn, title, author, price, category);
				allBooks.add(book);
				
			}
			
			request.setAttribute("allBooks", allBooks);
			st.close();


			RequestDispatcher dispatch =getServletContext().getRequestDispatcher("/DisplayBookByAuthor.jsp");
			dispatch.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
