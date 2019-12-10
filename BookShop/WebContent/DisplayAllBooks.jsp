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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Fruktur|Gloria+Hallelujah|Playball&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="styles.css" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<title>Our Books</title>
</head>
<body>
	<jsp:include page="/Header.jsp"></jsp:include>
	<section class="fluid-container books-heading">
		<div class="row ">
			<div class="col-12">
				<h3 class="sub-title">Book List!</h3>
			</div>
		</div>
	</section>
	<br>
	<section class="container">
        <article class="card-columns">
            <%
                for (Book nextBook : allBooks) {
            %>
            <div class="card border-info ml-1 mr-1 shadow-lg p-3 mb-5 rounded">
                <img src="<%=nextBook.getImagePath()%>" class="card-img-top border-secondary"
                    alt="image">
                <div class="card-body ml-5 justify-content-center">
                    <div>
                        <h5 class="card-title"><%=nextBook.getTitle()%></h5>
                        <p class="card-text"><%=nextBook.getAuthor()%></p>
                        <p class="card-text price">
                            $
                            <%=nextBook.getPrice()%></p>
                    </div>
                    <div>
                        <br>
                        <div>
                            <form method="post" action="addToCart.html">
                                <input type="hidden" name="author"
                                    value="<%=nextBook.getAuthor()%>" />
                                <button type="submit" class="btn btn-primary waves-effect" id="add"value="submit">Add
                                    To Cart</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </article>
    </section>
    <br>

	<jsp:include page="/Footer.jsp"></jsp:include>
	
</body>
</html>