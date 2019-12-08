<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<Book> allBooks = (List<Book>) request.getAttribute("allBooks");
%>
<%@page import="com.bookshop.domain.Book"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
</head>
<body>
		<h1>Books</h1>
		<hr />
	<ul>
		<%
					for (Book nextBook : allBooks) {
				%>

		<li>
			<h2><%= nextBook.getTitle()%></h2>
			<p>
			<span>by <%=nextBook.getAuthor() %>  </p>$<%=nextBook.getPrice() %></span>
		</li>

		<%
					}
				%>
	</ul>
</body>
</html>