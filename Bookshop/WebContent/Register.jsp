<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/Header.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4>Create an account!</h4>
				</div>
				<%
					if (request.getAttribute("result") != null)
						out.println(request.getAttribute("result"));
				%>
				<div class="panel-body">
					<form role="Form" action="register.html" method="post"
						accept-charset="UTF-8">
						<div class="form-group">
							<label for="firstName">First Name</label> <input type="text"
								id="firstName" class="form-control" name="firstName"
								required="required">
						</div>
						<div class="form-group">
							<label for="lastName">Last Name</label> <input type="text"
								id="lastName" class="form-control" name="lastName"
								required="required">
						</div>
						<div class="form-group">
							<label for="country">Select your Country</label> <select
								id="country" class="form-control" name="country">
								<option value="unknown">Unknown</option>
								<option value="albania">Albania</option>
								<option value="belgium">Belgium</option>
								<option value="california">California</option>
								<option value="egypt">Egypt</option>
								<option value="florida">Florida</option>
								<option value="georgia">Georgia</option>
								<option value="hawaii">Hawaii</option>
								<option value="indiana">Indiana</option>
								<option value="kuwait">Kuwait</option>
								<option value="kopenhagen">Kopenhagen</option>
								<option value="mississippi">Mississippi</option>
								<option value="new mexico">New Mexico</option>
								<option value="new york">New York</option>
								<option value="serbia">Serbia</option>
								<option value="sweden">Sweden</option>
								<option value="syria">Syria</option>
								<option value="texas">Texas</option>
								<option value="virginia">Virginia</option>
								<option value="washington">Washington</option>
								<option value="west virginia">West Virginia</option>
							</select>
						</div>
						<div class="form-group">
							<label for="city">City</label> <input type="text" id="city"
								class="form-control" name="city">
						</div>
						<div class="form-group">
							<label for="street">Street</label> <input type="text" id="street"
								class="form-control" name="street">
						</div>
						<div class="form-group">
							<label for="postNr">Post Nr</label> <input type="text"
								id="postNr" class="form-control" name="postNr">
						</div>
						<div class="form-group">
							<label for="email">Email Address</label> <input type="text"
								id="email" class="form-control" name="email"
								placeholder="Example: worod.tahmaz@gmail.com"
								required="required">
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								id="password" class="form-control" name="password"
								required="required">
						</div>
						<div class="form-group">
							<label for="verifypass">Verify Password</label> <input
								type="password" id="confirmpass" class="form-control"
								name="verifypass" required="required">
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-info btn-lg" id="submitbtn"
								name="submit">Register</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>