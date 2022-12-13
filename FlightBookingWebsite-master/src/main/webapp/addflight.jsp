<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="addflight.css">
<title>Addnewflights</title>
</head>
<body>
<h1>Add New Flights</h1>
<form action="Add flight" method="post" class="Add flight">
Flight ID:<input type="number" name="FID" placeholder="Flight ID No" required="required"><br>
From:<input type="text" name="FROM_PLACE"  placeholder="From location" required="required"><br>
To: <input type="text" name="TO_PLACE"  placeholder="To location" required="required"><br>
Date: <input type="date" name="DATE"  placeholder="YYYY-MM-DD" required="required"><br>
Fare: <input type="number" name="FARE"  placeholder="Ticket fare" required="required"><br>
Seats Available: <input type="number" name="SEATS"  placeholder="Seats available" required="required"><br>
BOARDING_TIME: <input type="time" name="BOARDING_TIME"  placeholder="HH:MM:SS" required="required"><br>
<input type="submit" value="Add flight">
</form>
</body>
</html>