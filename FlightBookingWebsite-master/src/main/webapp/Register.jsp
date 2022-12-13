<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="register.css">
<title>User Registration form</title>
</head>
<body>
<h1>Registration</h1>
<form action="Register" method="post" class="Register">
First Name:<input type="text" name="FNAME" placeholder="Your SurName" required="required"><br>
Last Name:<input type="text" name="LNAME"  placeholder="Your Name" required="required"><br>
Email Id: <input type="email" name="EMAIL"  placeholder="Your mailId" required="required"><br>
Mobile No: <input type="mobile" name="PHONE"  placeholder="Your mobileno" required="required"><br>
User Name: <input type="text" name="UNAME"  placeholder="Your choice" required="required"><br>
Password: <input type="password" name="PASS"  placeholder="Password" required="required"><br>
<input type="submit" value="Register">
</form>
</body>
</html>