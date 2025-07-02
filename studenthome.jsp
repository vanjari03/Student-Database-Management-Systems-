<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.pojo.Student"%>
<%@page import="com.DAO.StudentDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME PAGE</title>
</head>
<body>
<%
Student std2=(Student) session.getAttribute("StudentInfo");
%>
<center><h1>Welcome <%= std2.getName() %></h1><hr>
<h3>Your Details Are</h3>
<h4>
StudentID 	  :-<%=std2.getSid() %><br>
Name          :-<%=std2.getName() %><br>
UserName      :-<%=std2.getUsername() %><br>
Email         :-<%=std2.getEmail() %><br>
Mobile Number :-<%=std2.getMobno() %><br> 
Year          :-<%=std2.getYear() %><br>
Division      :-<%=std2.getDivision() %><br>
Marks         :-<%=std2.getMarks() %><br>
</h4>
<a href='welcome.jsp'>Back</a>

</body>
</html>