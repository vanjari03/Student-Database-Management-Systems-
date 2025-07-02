<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.pojo.Student"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Information</title>
</head>
<body>
<% 
StudentDAO std3=new StudentDAO();
ArrayList<Student> list =std3.getAllStudents();
 %>
 
 <hr>List Of All Students
 <!--  sid | name |username|passwod|email|mobno|year|division|marks| -->
 <table bgcolor='cyan' border='1'>
 <tr><td>StudentID</td><td>Name</td><td>Username</td><td>Password</td><td>Email</td><td>MobileNo</td><td>Year</td><td>Division</td><td>Marks</td></tr>
 
<% 
 for(Student std:list){
%>
	<tr>
	<td><%= std.getSid() %></td>
	<td><%= std.getName() %></td>
	<td><%= std.getUsername() %></td>
	<td><%= std.getPassword() %></td>
	<td><%= std.getEmail() %></td>
	<td><%= std.getMobno() %></td>
	<td><%= std.getYear() %></td>
	<td><%= std.getDivision() %></td>
	<td><%= std.getMarks() %></td>
	</tr> 

<%	 
 }
 %>
 
 </table>
 <a href="adminhome.jsp">Back</a>
</body>
</html>