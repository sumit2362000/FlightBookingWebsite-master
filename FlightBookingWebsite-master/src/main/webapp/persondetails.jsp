<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<link rel="stylesheet" href="flightsinfo.css">
<%
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "booking";
String userid = "root";
String password = "12345";
String FID=request.getParameter("FID");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<center><h1>BOOKED PERSON DETAILS</h1></center>
<table border="1">
<tr>
<td>FID</td>
<td>SEATNO</td>
<td>NAME</td>
<td>EMAIL</td>
<td>PHONE</td>
<td>ADHARNO</td>
<td>FARE</td>
<td>TICKET STATUS</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from travelers where FID='"+FID+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("FID") %></td>
<td><%=resultSet.getString("SEATNO") %></td>
<td><%=resultSet.getString("FNAME") %> <%=resultSet.getString("LNAME") %></td>
<td><%=resultSet.getString("EMAIL") %></td>
<td><%=resultSet.getString("PHONE") %></td>
<td><%=resultSet.getString("ADHARNO") %></td>
<td><%=resultSet.getString("FARE") %></td>
<td>BOOKED</td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<form action="Logout">
<p><align="center"><img src="img/logout.png" alt="" srcset=""style="width: 30px;">
<a href="home.html" type="button" class="Log out">Log out</a></p>
</form><br>
</table>
</body>
</html>