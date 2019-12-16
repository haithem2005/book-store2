<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<Book> allBooks = (List<Book>) request.getAttribute("allBooks");
%>
<%@page import="com.bookshop.domain.Book"%>
<%@page import="java.util.List"%>

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
				<img src="assets/10.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="assets/2.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="assets/5.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="assets/9.jpg" class="d-block w-100" alt="...">
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
	<div class="row no-gutters">
		<div class="col-12">
			<h3 class="sub-title">Best Seller Books</h3>
		</div>
	</div>
</section>

<section class="fluid-container">
	<div class="row no-gutters">	
		<%
			for (Book nextBook : allBooks) {
		%>
<div class="col-md-6 col-lg-4">
		<div class="card" >	
			<img src="<%=nextBook.getImagePath()%>"
				class="card-img-top " alt="image">
			<div class="card-body">
				<h5 class="card-title"><%=nextBook.getTitle()%></h5>
				<p class="card-text"><%=nextBook.getAuthor()%></p>
				<p class="card-text price"> 
				$<%=nextBook.getPrice()%></p>
					<div class="card-footer1">
				<a role="button"
					onclick="AddtoCart('<%=nextBook.getISBN()%>'); return false;"
					class="btn btn-info pointer"> Add to Cart</a>
					</div>
			</div>
		</div>
		</div>
		<%
			}
		%>		
	</div>
</section>
<br>
<hr class="block-divider block-divider--orange">
<section class="fluid-container quates">
	<div class="row no-gutters">
		<div class="col-md-12">
			<h3 class="sub-title">What Our Clients say</h3>
		</div>
	</div>
	<div class="row fluid-countainer no-gutters">
		<div class="col-md-6">
			<div class="media">
				<img src="assets/girl-image.png" class="align-self-center mr-3"
					alt="...">
				<div class="media-body">
					<h5 class="mt-0">HMZ</h5>
					<p>The best book store online, they have unique books and
						special edition books which are not found any where else.</p>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="media">
				<img src="assets/guy-image.png" class="align-self-center mr-3"
					alt="...">
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