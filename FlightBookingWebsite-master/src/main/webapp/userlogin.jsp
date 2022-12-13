<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/Html;charset=UTF-8">
<link rel="stylesheet" href="userlogin.css">
<title>User login page</title>
</head>
<body>
<form action="loginservlet" method="post" class="login">
Username: <input type="text" name="UNAME" placeholder="User Name" required="required"><br>
Password: <input type="password" name="PASS" placeholder="Password" required="required"><br>
<input type="submit" value="login">
</form>
<form action="Register">
<p><a href="Register.jsp" type="button" class="Register">Sign up</a></p>
</form>
</body>
</html>