package com.bookshop.servlets;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookshop.database.DBConnection;
import com.bookshop.domain.Register;



/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("register.html")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Register.jsp");
         dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try { 
			java.sql.Connection con = DBConnection.initializeDatabase();
			String sql = "SELECT id FROM Users WHERE email ='"+request.getParameter("email")+"'";
			request.setAttribute("result",null);
			java.sql.PreparedStatement query = con.prepareStatement(sql);
			ResultSet sr =  query.executeQuery();
	        if(sr.next() == false) {
	        java.sql.PreparedStatement st = con 
	        .prepareStatement("insert into Users (firstName, lastName, country, city, street, postNr, email, password ) values(?, ?, ?, ?, ?, ?, ?, ?)"); 
	     
	        st.setString(1, request.getParameter("firstName"));
	        
	        st.setString(2, request.getParameter("lastName")); 
	       
	        st.setString(3, request.getParameter("country")); 
	        
	        st.setString(4, request.getParameter("city")); 
	        
	        st.setString(5, request.getParameter("street")); 
	        
	        st.setString(6, request.getParameter("postNr")); 
	        
	        st.setString(7, request.getParameter("email")); 
	        
	        st.setString(8, request.getParameter("password")); 

	        st.executeUpdate(); 
	        st.close(); 
	        con.close(); 
	        request.setAttribute("result", "<div class=\"alert alert-success\">Successfully Registered</div>") ;
	        		PrintWriter out = response.getWriter(); 
	        out.println("<html><body><b>Successfully Inserted"
	                    + "</b></body></html>"); 
	        }else {
		        request.setAttribute("result", "<div class=\"alert alert-danger\">This email address already exit</div>") ;

	        	 PrintWriter out = response.getWriter(); 
	 	        out.println("<html><body><b> This email address already exit"
	 	                    + "</b></body></html>"); 	
	        }   
	    } 
	    catch (Exception e) { 
	        e.printStackTrace(); 
	    } 
			doGet(request, response);
		}
}

