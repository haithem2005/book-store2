<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Book By Author</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>Which Author's Books ?</h1>
		<hr />
		<div class="row">
			<div class="col-md-4">
				<form method="GET" action="find-by-author.html" name="findByAuthor">
					<div class="form-group">
						Required Author: <input type="TEXT" name="Author"
							class="form-control" placeholder ="Author Name" required/>
					</div>
					<button type="submit" class="btn btn-primary" value="submit">Find
						Book</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>