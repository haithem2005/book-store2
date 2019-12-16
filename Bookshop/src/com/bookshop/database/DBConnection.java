package com.bookshop.database;


import java.sql.Connection; 

import java.sql.DriverManager; 
import java.sql.SQLException;

public class DBConnection {

  public static Connection initializeDatabase() 
	        throws SQLException, ClassNotFoundException 
	    { 
	        // Initialize all the information regarding 
	        // Database Connection 
	        //String dbDriver = "com.mysql.jdbc.Driver"; 
	        String dbURL = "jdbc:mysql://localhost:3306/store"; 
	        // Database name to access 
	        //String dbName = "demoprj"; 
	        String dbUsername = "root"; 
	        String dbPassword = "Shawqi1983!"; 
	        
    //Class.forName(dbDriver); 
    Connection con = DriverManager.getConnection(dbURL, dbUsername, dbPassword); 
	        return con; 
	    } 
}

