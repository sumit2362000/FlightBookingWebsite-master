<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/Html;charset=UTF-8">
<link rel="stylesheet" href="adminloginhome.css">
<title>userloginhome</title>
</head>
<body>
<% String FNAME=session.getAttribute("FNAME").toString(); %>
<% String LNAME=session.getAttribute("LNAME").toString(); %>
<h2>Welcome <a><%out.println(FNAME+" "+LNAME); %><i class='fas fa-user-alt'></i></a></h2>
<form action="Logout">
<p><align="center"><img src="img/logout.png" alt="" srcset=""style="width: 30px;">
<a href="home.html" type="button" class="Log out">Log out</a></p>
</form><br>
<form action="Book Flights">
<p><align="center"><img src="img/add.png" alt="" srcset=""style="width: 30px;">
<a href="flights.jsp" type="button" class="addflights">Book Flight</a></p>
</form><br>

<form action="Booked Flights">
<p><align="center"><img src="img/flight.png" alt="" srcset=""style="width: 30px;">
<a href="FID.jsp" type="button" class="manageflights">Flight Tickets</a></p>
</form><br>
</body>
</html>