<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bookshop.domain.Book"%>
<%@page import="java.util.List"%>
<%
	List<Book> cart = (List<Book>) session.getAttribute("cart");
%>
<div id="Allbasket">
	<%
		if (cart.size()==0){
			%>
	<h1 id="NumberItems">empty</h1>
	<% 
		}
		else{
		%>
	Total items: <span id="NumberItems"><%=cart.size()%></span>
	<hr />
	<%} %>

	<%
				for (Book nextBook : cart) {
			%>
	<div class="row">
		<div class="col-sm-2 col-xs-2 col-md-2 col-2">
			<img src="<%=nextBook.getImagePath()%>" alt="image"
				style="width: inherit; max-height: 10vh;">
		</div>
		<div class="col-sm-8 col-xs-8 col-md-8 col-7 my-auto">
			<span><%=nextBook.getTitle()%> </span>
		</div>
		<div class="col-sm-2 col-xs-2 col-md-2 col-3 my-auto">
			<button type="button" class="btn btn-danger"
				id="<%=nextBook.getISBN()%>"
				onclick="DeletefromCart('<%=nextBook.getISBN()%>')">
				<i class="far fa-trash-alt"></i>
			</button>
		</div>
	</div>
	<hr />
	<%
		}
	%>
</div>