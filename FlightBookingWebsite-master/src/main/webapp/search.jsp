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
String FROM_PLACE=request.getParameter("FROM_PLACE");
String TO_PLACE=request.getParameter("TO_PLACE");
String DATE=request.getParameter("DATE");
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

<center><h1>Available Flights</h1></center>
<table border="1">
<tr>
<td>FID</td>
<td>FROM</td>
<td>TO</td>
<td>DATE</td>
<td>FARE</td>
<td>SEATS</td>
<td>BOARDING_TIME</td>
<td>TICKET</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from flight_details where FROM_PLACE='"+FROM_PLACE+"' and TO_PLACE='"+TO_PLACE+"' and DATE='"+DATE+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("FID") %></td>
<td><%=resultSet.getString("FROM_PLACE") %></td>
<td><%=resultSet.getString("TO_PLACE") %></td>
<td><%=resultSet.getString("DATE") %></td>
<td><%=resultSet.getString("FARE") %></td>
<td><%=resultSet.getString("SEATS") %></td>
<td><%=resultSet.getString("BOARDING_TIME") %></td>
<td><form action="search">
<p><align="center">
<a href="bookseat.jsp?FID=<%=resultSet.getInt("FID") %>" type="button" class="Book">Book</a></p>
</form><br></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>