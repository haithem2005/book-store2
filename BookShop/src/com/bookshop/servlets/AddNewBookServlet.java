package com.bookshop.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookshop.database.DatabaseConnection;

public class AddNewBookServlet extends HttpServlet{

	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{

		try {
			
			Connection connection = DatabaseConnection.initializeDatabase();
			PreparedStatement statement = connection.prepareStatement("INSERT INTO Book VALUES(?, ?, ?, ?, ?, ?)");
			statement.setString(1, request.getParameter("ISBN"));
			statement.setString(2, request.getParameter("Title"));
			statement.setString(3, request.getParameter("Author"));
			statement.setDouble(4, Double.valueOf(request.getParameter("Price")));
			statement.setString(5, request.getParameter("Category"));
			statement.setString(6, request.getParameter("ImagePath"));

			statement.executeUpdate();
			statement.close();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		

	}
}
