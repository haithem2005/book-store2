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
<title>Home Page</title>
</head>
<body>
	<jsp:include page="/Header.jsp"></jsp:include>

	<section>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="assets/carousal1.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="assets/carousal2.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="assets/carousal3.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="assets/carousal4.jpg" class="d-block w-100" alt="...">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</section>
	<section class="fluid-container books-heading">
		<div class="row ">
			<div class="col-12">
				<h3 class="sub-title">Best Seller Books</h3>
			</div>
		</div>
	</section>
	<section class="container">
		<article class="card-columns">
			<%
                for (Book nextBook : allBooks) {
            %>
			<div class="card border-info ml-1 mr-1 shadow-lg p-3 mb-5 rounded">
				<img src="<%=nextBook.getImagePath()%>"
					class="card-img-top border-secondary" alt="image">
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
								<button type="submit" class="btn btn-primary waves-effect"
									value="submit">Add To Cart</button>
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

	<hr class="block-divider block-divider--orange">
	<section class="fluid-container quates">
		<div class="row">
			<div class="col-md-12">
				<h3 class="sub-title">What Our Clients say</h3>
			</div>
		</div>
		<div class="row fluid-countainer">
			<div class="col-md-6">
				<div class="media">
					<img src="assets/book.jpg" class="align-self-center mr-3" alt="...">
					<div class="media-body">
						<h5 class="mt-0">HMZ</h5>
						<p>The best book store online, they have unique books and
							special edition books which are not found any where else.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="media">
					<img src="assets/book.jpg" class="align-self-center mr-3" alt="...">
					<div class="media-body">
						<h5 class="mt-0">HMZ</h5>
						<p>The best book store online, they have unique books and
							special edition books which are not found any where else.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr class="block-divider block-divider--orange">
	<jsp:include page="/Footer.jsp"></jsp:include>

</body>
</html>