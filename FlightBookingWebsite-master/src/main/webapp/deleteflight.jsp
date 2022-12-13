<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<link rel="stylesheet" href="flightsinfo.css">
<%
String FID=request.getParameter("FID");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/booking?useSSL=false","root","12345");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM flight_details WHERE FID="+FID);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
%>