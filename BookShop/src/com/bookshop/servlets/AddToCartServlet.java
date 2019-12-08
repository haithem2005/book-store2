package com.bookshop.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookshop.database.DatabaseConnection;
import com.bookshop.domain.Book;

public class AddToCartServlet extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws  ServletException,IOException{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String isbn = request.getParameter("isbn");

		Book requiredBook = null;
		List<Book> allBooks = null;
		Connection conn = null;
		Statement stmt = null;

		HttpSession session = request.getSession();
		List<Book> cart = (List<Book>) session.getAttribute("cart");  

		try {

			allBooks = new ArrayList<Book>();
			ResultSet resultSet = null;
			Connection connection = DatabaseConnection.initializeDatabase();
			String query = "SELECT * FROM sys.Book WHERE ISBN =" +"'" +isbn +"'";
			System.out.println(query);
			stmt = connection.createStatement();
			resultSet = stmt.executeQuery(query);


			while(resultSet.next()) {

				String author = resultSet.getString("Author");

				String title = resultSet.getString("Title");
				double price = resultSet.getDouble("Price");
				String category = resultSet.getString("Category");
				requiredBook = new Book(isbn, title, author, price, category);
				allBooks.add(requiredBook);
				System.out.println(allBooks.toString());

				if (cart == null) {
					cart = new ArrayList<Book>();
				}
				cart.add(requiredBook);

			}

			session.setAttribute("cart", cart);
			out.println("<h1>Thanks,You have added the book to your cart</h1>");


			out.close();

		}
		catch (Exception e) {
			e.printStackTrace();
		}

	}
}