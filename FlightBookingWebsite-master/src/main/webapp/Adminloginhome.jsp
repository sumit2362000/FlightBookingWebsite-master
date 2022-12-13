<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/Html;charset=UTF-8">
<link rel="stylesheet" href="adminloginhome.css">
<title>adminloginhome</title>
</head>
<body>
<% String UNAME=session.getAttribute("UNAME").toString(); %>
<h2>Welcome <a><%out.println(UNAME); %><i class='fas fa-user-alt'></i></a></h2>
<form action="Logout">
<p><align="center"><img src="img/logout.png" alt="" srcset=""style="width: 30px;">
<a href="logout.jsp" type="button" class="Log out">Log out</a></p>
</form><br>
<form action="Add Flights">
<p><align="center"><img src="img/add.png" alt="" srcset=""style="width: 30px;">
<a href="addflight.jsp" type="button" class="addflights">Add Flights</a></p>
</form><br>

<form action="Manage Flights">
<p><align="center"><img src="img/manage.png" alt="" srcset=""style="width: 30px;">
<a href="manageflights.jsp" type="button" class="manageflights">Manage Flights</a></p>
</form><br>

<form action="Flights Info">
<p><align="center"><img src="img/info.png" alt="" srcset=""style="width: 30px;">
<a href="flightsinfo.jsp" type="button" class="flightsInfo">Flights Info</a></p>
</form><br>
<form action="Transactions">
<p><align="center"><img src="img/manage.png" alt="" srcset=""style="width: 30px;">
<a href="transactions.jsp" type="button" class="transactions">Transactions info</a></p>
</form><br>
</body>
</html>