package com.bookshop.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

	public static Connection initializeDatabase() throws SQLException, ClassNotFoundException{
		String dbDriver = "com.mysql.jdbc.Driver"; 
		String dbURL = "jdbc:mysql://localhost:3306/sys";

//		String dbName = "sys"; 
		String dbUsername = "root"; 
		String dbPassword = "123456";

		Class.forName(dbDriver); 
		Connection con = DriverManager.getConnection(dbURL, 
													 dbUsername,  
													 dbPassword); 
		return con; 
	}

}
