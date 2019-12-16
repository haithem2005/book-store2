<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bookshop.domain.Login"%>

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
<link rel="stylesheet" href="assets/css/styles.css" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">

<title>Home Page</title>
</head>
<body>
	<div class="fluid-container navedite">
		<div class="row no-gutters ">
			<div class="col-7 3lines">
				<nav class="navbar navbar-light bg-light bar-lg fixed">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarsExample01" aria-controls="navbarsExample01"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarsExample01">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="nav-link"
								href="index.html">Home <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item active"><a class="nav-link"
								href="contact.html">Contact</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="aboutus.html">About Us</a></li>

							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="dropdown01"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Catalogue</a>
								<div class="dropdown-menu" aria-labelledby="dropdown01">
									<a class="dropdown-item" href="novels.html">Novels</a> <a
										class="dropdown-item" href="kids.html">Kids</a> <a
										class="dropdown-item" href="showall.html">Show All</a>
								</div></li>
							<li class="nav-item active">
								<form action="find-books.html" class="form-inline" method="get">
									<input class="form-control" type="text" placeholder="Search"
										name="searchString" aria-label="Search">
									<button>
										<i class="far fa-search"></i>
									</button>
								</form>
							</li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="col-5 header-list1">
				<ul class="header-list">
					<%
						if (session.getAttribute("UserID") == null) {
					%>
					<li><a href="login.html">Login</a></li>
					<%
						} else {
					%>
					<li><a href="logout.html">Logout</a></li>
					<%
						}
					%>
					<li><a class="pointer" role="button" data-toggle="modal"
						data-target="#myModal">
						<span class="fa-stack fa-1x"> 
						<i class="fa fa-shopping-cart fa-stack-1x" style="font-size: 20px">
						</i> 
						<span class="badge">
						</span>
						</span> </a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="row no-gutters">
		<div class="col-12">
			<h1 class="main-title">The Book Shop</h1>
		</div>
	</div>
	<!-- The Modal -->
	<div class="modal fade" id="myModal">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">Your Cart</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<h1>empty</h1>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<a role="button" class="btn btn-secondary"
						href="display-all-books.html">Continue Shopping</a> <a
						role="button" class="btn btn-secondary" href="checkout.html">Check
						out</a>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>