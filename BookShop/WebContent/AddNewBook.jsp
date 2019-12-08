<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
	<div class="container add-container">
		<div class="row">
			<div class="col-md-6 add-form-1">
				<h3>Add a New Book</h3>
				<hr />

				<form action="add-new-book.html" method="post" name="addNewBook">
					<div class="form-group">
						<input type="text" class="form-control" name="ISBN"
							placeholder="Enter ISBN" required />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="Title"
							placeholder="Enter Book Title" required />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="Author"
							placeholder="Enter Book Author" required />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="Price"
							placeholder="Enter Book Price" required />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="Category"
							placeholder="Category(Kids, Novel, etc.)" required />
					</div>
					<button type="submit" class="btn btn-primary" value="submit">Save</button>
					<p>
						<input name="operation" type="hidden" value="addNewBook">
					</p>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="/Footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js "
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo "
		crossorigin="anonymous "></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js "
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1 "
		crossorigin="anonymous "></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js "
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM "
		crossorigin="anonymous "></script>
</body>
</html>