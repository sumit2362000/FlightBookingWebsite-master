<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="flightsinfo.css">
<title>flights booking</title>
</head>
<body>
<%Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking?useSSL=false","root","12345");
Statement st = con.createStatement() ;
ResultSet rs = st.executeQuery("select * from transactions");%>
<center>
<table>
<TABLE BORDER="2">
  <tr>
    <th>CARDNAME</th>
    <th>CARD NO</th> 
    <th>AMOUNT</th>
  </tr>
  <% while(rs.next()){ %>
  <tr>
    <td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
  </tr>
  <% } %>
</table>
</center>

</body>
</html>