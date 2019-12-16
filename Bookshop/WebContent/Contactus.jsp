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
<link rel="stylesheet" href="assets/css/styles.css" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
<title>Contact us</title>
</head>

<body>
    <jsp:include page="/Header.jsp"></jsp:include>
<!--Contact box with submit button -->
	<section class="fluid-container">
		<div class="row no-gutters">
			<div class="col events-section text sub-title">
				<h3 class="heading uppercase">Contact Us</h3>
				<p class="events-text heading">
					We are happy to hear any comments or suggestions! <br>
				</br>
				</p>
			</div>
		</div>
		<div class="container">
			<div class="row ">
				<div class="col-sm-6 login-form-1 justify-content-center ">
					<form>
						<div class="form-group">
							<input type="text" name="name" id="Full Name"
								class="form-control" placeholder="Full Name" required />
						</div>
						<div class="form-group">
							<input type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
								name="number" id="umber" class="form-control"
								placeholder="Mobile Number xxx-xxx-xxxx" required />
						</div>
						<div class="form-group">
							<input type="email" name="email" id="email address"
								class="form-control" placeholder="Enter Email" required />
						</div>
						<div class="form-group">
							<textarea class="form-control" id="comments" rows="5"
								name="comments" placeholder="Comments"></textarea>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-info btn-lg">SUBMIT</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	 <jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>