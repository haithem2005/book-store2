<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/Header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
</head>
<body>
    <h3>Please log in with your Admin credentials</h3>
    <form action="adminLogin.html" method="post">
        <div>
            Username: <input type="text" name="username" />
        </div>
        <div>
            Password: <input type="password" name="password" />
        </div>
        <input type="submit" value="Login">
    </form>
    <jsp:include page="/Footer.jsp"></jsp:include>
</body>
</html>