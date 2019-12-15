<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bookshop.domain.Book"%>
<%@page import="java.util.List"%>
<%
	List<Book> cart = (List<Book>)session.getAttribute("cart");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Fruktur|Gloria+Hallelujah|Playball&display=swap"
	rel="stylesheet">
<script src=“https://kit.fontawesome.com/57634ef963.js”
	crossorigin=“anonymous”></script>
<link rel="stylesheet" href="styles.css" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<title>Book Added</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<h1>Your Cart:</h1>
	<p>
		Total items:
		<%=cart.size()%>
	<ul>
		<%
			for (Book nextBook : cart) {
		%>
		<hr>
		<li><%=nextBook.getTitle()%>
			<form method="post" action="deleteFromCart.html">
				<input type="hidden" name="isbn" value="<%=nextBook.getISBN()%>" />
				<button>
					<i class="far fa-minus-square"></i>
				</button>
			</form></li>
		<hr>

		<%
			}
		%>
	</ul>
	<input type="button" onclick="window.location.href = 'display-all-books.html';" value="Continue Shopping"/>

	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>