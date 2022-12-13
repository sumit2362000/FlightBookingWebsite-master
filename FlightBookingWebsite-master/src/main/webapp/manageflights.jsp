<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="flightsinfo.css">
<title>Manage flights</title>
</head>
<body>
<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking?useSSL=false","root","12345");
Statement st = con.createStatement() ;
ResultSet rs = st.executeQuery("select * from flight_details");%>
<center>
<table>
<TABLE BORDER="2">
  <tr>
    <th>Flight ID</th>
    <th>Bording From</th> 
    <th>Destination</th>
    <th>Date</th>
    <th>Fare</th>
    <th>Seats</th>
    <th>BOARDING_TIME</th>
    <th>Action</th>
  </tr>
  <% while(rs.next()){ %>
  <tr>
    <td><%= rs.getInt(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getDate(4) %></td>
    <td><%= rs.getInt(5) %></td>
     <td><%= rs.getInt(6) %></td>
     <td><%= rs.getTime(7) %></td>
     <td><form action="delete">
<p><align="center">
<a href="deleteflight.jsp?FID=<%=rs.getInt("FID") %>" type="button" class="delete">Delete</a></p>
</form><br></td>
  </tr>
  <% } %>
</table>
</center>

</body>
</html>