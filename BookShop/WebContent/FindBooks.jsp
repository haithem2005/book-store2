<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Books</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>Find Books:</h1>
		<hr />
		<div class="row">
			<div class="col-md-4">
				<form action="find-books.html" method="get" name="findBook">
					<div class="form-group">
						Search Your Book here: 
						<p><input type="TEXT" name="searchString"
							class="form-control" placeholder="Search Book" required /></p>
					</div>
					<button type="submit" class="btn btn-primary" value="submit">Find
						Book</button>
					<input name="operation" type="hidden" value="author">
				</form>
			</div>
		</div>
	</div>
</body>
</html>