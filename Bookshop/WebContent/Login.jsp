<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("UserID") != null) {
		response.sendRedirect("http://localhost:8080/Bookshop/index.html");
	}
%>
<jsp:include page="/Header.jsp"></jsp:include>
<div class="container login-container ">
	<div class="row">
		<div class="col-md-6 login-form-1">
			<h3>Login</h3>
			<form action="login.html" method="post">
				<div class="form-group">
					<input type="email" name="email" class="form-control"
						placeholder="Your Email *" value="" />
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control"
						placeholder="Your Password *" value="" />
				</div>
				<div class="form-group">
					<input type="submit" class="btnSubmit" value="Login" />
				</div>
				<div class="form-group">
					<a href="register.html" class="register">Register</a>
				</div>
				<%
					if (request.getAttribute("result") != null) {
						out.println(request.getAttribute("result"));
					}
				%>
			</form>
		</div>
	</div>
</div>
<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>