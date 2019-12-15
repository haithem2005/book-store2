package com.bookshop.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookshop.database.DatabaseConnection;

public class AdminLoginServlet extends HttpServlet{

	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out = response.getWriter();

		try {
			ResultSet resultSet = null;
			Connection connection = DatabaseConnection.initializeDatabase();
			PreparedStatement preparedStatement = null;
			String targetPage;
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String sql = "SELECT * FROM Admin WHERE Username = '" + username + "' AND Password = '" + password + "'";

			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();

			if(resultSet.next()) {
				out.println("Login success");
				targetPage = "/AddNewBook.jsp";

			}
			else {
				out.println("Login Failed, Please try again!");
				targetPage = "/AdminLogin.jsp";
			}

			RequestDispatcher dispatch =getServletContext().getRequestDispatcher(targetPage);
			dispatch.forward(request, response);
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
