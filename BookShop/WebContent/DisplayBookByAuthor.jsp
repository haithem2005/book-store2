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
<title>Your Search Results</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="row">
		<div class="col-md-4">
			<h1>Your search results:</h1>
			<hr />
			<ul>
				<%
					for (Book nextBook : allBooks) {
				%>

				<li><%=nextBook.getTitle()%></li>

				<%
					}
				%>
			</ul>
		</div>
	</div>
</body>
</html>