<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("UserID") == null) {
		response.sendRedirect("http://localhost:8080/Bookshop/login.html");
	}
%>
<jsp:include page="/Header.jsp"></jsp:include>
<div class="container" style="height: 90vh">
	<div class="row justify-content-center my-auto">
		<h1>Check out</h1>
	</div>
</div>
<jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>