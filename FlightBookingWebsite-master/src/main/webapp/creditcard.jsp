<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="flight.css">
<title>credit card</title>
</head>
<body>
<h1>Credit Card Details</h1>
<form class="credit card" method="post" action="payment">
CARD HOLDER NAME: <input type="text" name="CARDNAME"  required="required"><br>
CARD NO: <input type="number" name="CARDNO"  required="required"><br>
CVV: <input type="number" name="CVV"  required="required"><br>
EXPIRY YEAR: <input type="Year" name="YEAR" placeholder="YYYY" required="required"><br>
AMOUNT:<input type="number" name="AMOUNT" placeholder="FARE" required="required"><br>
<button type="submit" name="Search" class="btn btn-primary">PAY</button>

</body>
</html>