<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome !!</title>
</head>
<body>
<table border="3">
<tr>
   <th>Name</th>
   <th>Age</th>
</tr>
<% 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/newdb","root","12345");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from candidate");
while(rs.next())
{
	String name = rs.getString(1);
	int age = rs.getInt(2); %>
<tr>
<td><% out.println(name); %></td>
<td><% out.println(age); %></td>

</tr>

</tr>
<% }con.close(); %>
</table>
</body>
</html>