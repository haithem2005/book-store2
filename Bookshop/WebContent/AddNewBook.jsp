<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Add New Book</title>
</head>

<body>
	<jsp:include page="/Header.jsp"></jsp:include>
	<section class="form container">
		<h1 class="text-light mt-5 ml-5">Add a New Book To The BookShop</h1>
		<hr class="bg-light ">
		<hr />
		<form class="justify-content-center mt-5 ml-5 mr-5"
			style="border: 1px solid white" action="add-new-book.html"
			method="post" name="addNewBook">
			<div class="input-field col-md-4 mt-5 ml-5 mr-5">
				<input type="text" class="form-control" name="ISBN"
					placeholder="Enter ISBN" required />
			</div>
			<br>
			<div class="input-field col-md-4  ml-5 mr-5  ">
				<input type="text" class="form-control" name="Title"
					placeholder="Enter Book Title" required />
			</div>
			<br>
			<div class="input-field col-md-4 ml-5 mr-5">
				<input type="text" class="form-control" name="Author"
					placeholder="Enter Book Author" required />
			</div>
			<br>
			<div class="input-field col-md-4 ml-5 mr-5">
				<input type="text" class="form-control" name="Price"
					placeholder="Enter Book Price" required />
			</div>
			<br>
			<div class="input-field col-md-4 ml-5 mr-5">
				<input type="text" class="form-control" name="Category"
					placeholder="Enter Category" required />
			</div>
			<br>
			<div class="input-field col-md-4 ml-5 mr-5">
				<input type="text" class="form-control" name="ImagePath"
					placeholder="Enter Image" required />
			</div>
			<br>
			<button type="submit"
				class=" save btn btn-primary waves-effect mb-2 justify-content-center "
				value="submit">Add</button>
			<p>
				<input name="operation" type="hidden" value="addNewBook">
			</p>
		</form>
		</form>
	</section>
	<br>
	<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>