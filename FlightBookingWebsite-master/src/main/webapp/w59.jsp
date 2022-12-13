
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="register.css">
<title>passenger details form</title>
</head>
<body>
<h1>Passenger Details</h1>
<form action="passenger" method="post" class="passenger">
FID:<input type="number" name="FID" placeholder="Flight  ID" required="required"><br>
SEATNO:<input type="text" name="SEATNO" value=WA59 placeholder="Seat NO" required="required"><br>
First Name:<input type="text" name="FNAME" placeholder="Your SurName" required="required"><br>
Last Name:<input type="text" name="LNAME"  placeholder="Your Name" required="required"><br>
Email Id: <input type="email" name="EMAIL"  placeholder="Your mailId" required="required"><br>
Mobile No: <input type="number" name="PHONE"  placeholder="Your mobileno" required="required"><br>
AdharNo:<input type="number" name="ADHARNO"  placeholder="Your adharno" required="required"><br>
Fare:<input type="number" name="FARE"  value="2000" required="required"><br>
<input type="submit" value="Submit">
</form>
</body>
</html>