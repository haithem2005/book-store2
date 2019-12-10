package com.bookshop.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookshop.domain.Book;

public class DeleteFromCartServlet extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws  ServletException,IOException{


		HttpSession session = request.getSession();

		List<Book> cart = (List<Book>)session.getAttribute("cart");
		
		String isbn = request.getParameter("isbn");
		
		Book theBook = null;

		for(Book book: cart) {
			System.out.println(book.toString());
			System.out.println(cart.size());
			
			if (book.getISBN().equalsIgnoreCase(isbn)) {
				
				theBook =book;
				
				
			}
			cart.remove(theBook);
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/BookAdded.jsp");
			dispatcher.forward(request, response);
			
			System.out.println(cart.size());
			
			
		}
		
	}

}
