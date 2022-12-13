<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="flight.css">
<title>debit card</title>
</head>
<body>
<h1>Debit Card Details</h1>
<form action="payment" method="post" class="payment"  >
CARD HOLDER NAME: <input type="text" name="CARDNAME"  required="required"><br>
CARD NO: <input type="longnumber" name="CARDNO"  required="required"><br>
CVV: <input type="number" name="CVV"  required="required"><br>
EXPIRY YEAR: <input type="Year" name="YEAR" placeholder="YYYY" required="required"><br>
AMOUNT: <input type="number" name="AMOUNT"  placeholder="Ticket Fare" required="required"><br>
<input type="submit" value="PAY">
</form>
</body>
</html>