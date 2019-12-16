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
import javax.servlet.http.HttpSession;

import com.bookshop.database.DBConnection;
import com.bookshop.domain.Login;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.html")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Login.jsp");
         dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameterMap().containsKey("email")) {
			  HttpSession session = request.getSession();
			  String url = "/Login.jsp";	
		try { 
			java.sql.Connection con = DBConnection.initializeDatabase();
			String sql = "SELECT firstName, lastName, email, password FROM Users WHERE email ='"+request.getParameter("email")+"' AND password='"+request.getParameter("password")+"'";
			
			java.sql.PreparedStatement query = con.prepareStatement(sql);
			ResultSet sr=  query.executeQuery();
			
	        if(sr.next() == false) {
	        	PrintWriter out = response.getWriter();  
	        	request.setAttribute("result", "<div class=\"alert alert-danger\">Email or Password is wrong</div>") ;
	        	

	        	out.println("<html><body><b> Email or Password is wrong"
	 	                    + "</b></body></html>"); 
	        
	        }else {
	        	Login login = new Login(sr.getString("email"), sr.getString("password"), sr.getString("firstName"), sr.getString("lastName"));
	        	request.setAttribute("Login", login);
	        	request.setAttribute("UserID",sr.getString("email"));
	        	session.setAttribute("UserID", sr.getString("email"));
	        	request.setAttribute("result", null);
	        	 url = "/Index.jsp";
	        }
	        	RequestDispatcher dispatcher =
    				getServletContext().getRequestDispatcher(url);
	    				dispatcher.forward(request, response);		
	        
	        
	    } 
	    catch (Exception e) { 
	        e.printStackTrace(); 
	    }
		}else{	
	    	request.setAttribute("UserID",null);
	    	
	    
    	String url = "/Index.jsp";
    	RequestDispatcher dispatcher =
			getServletContext().getRequestDispatcher(url);
				dispatcher.forward(request, response);	
	}	
		doGet(request, response);
	}

}
