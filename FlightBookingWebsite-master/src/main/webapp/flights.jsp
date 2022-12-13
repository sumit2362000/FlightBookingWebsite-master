<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="flight.css">
<title>Flights</title>
</head>
<body>
<form class="form-inline" method="post" action="search.jsp">
<img src="img/flight.png" alt="" srcset=""style="width: 150px;"><br>
From: <input type="text" name="FROM_PLACE" placeholder="From Location" required="required">
To: <input type="text" name="TO_PLACE" placeholder="From Location" required="required"><br>
Date: <input type="date" name="DATE" placeholder="YYYY-MM-DD" required="required"><br>
<button type="submit" name="Search" class="btn btn-primary">Search</button>
</form>
</body>
</html>