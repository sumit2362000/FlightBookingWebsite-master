<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="adminlogin.css">
<title>administration login page</title>
</head>
<body>
<form action="adminlogin" method="post" class="adminlogin">
Username: <input type="text" name="UNAME" placeholder="User name" required="required"><br>
Password: <input type="password" name="PASS" placeholder="password" required="required"><br>
<input type="submit" value="login" name="login">
</form>
</body>
</html>