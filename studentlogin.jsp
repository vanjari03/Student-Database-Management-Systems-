<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login Page</title>
</head>
<body >
<center>
<h2>Student Login</h2>
<form method="post" action="studentchecking.jsp">
<table bgcolor="skyblue" >
<tr>
<td>UserName</td>
<td><input  type="text" name="txtusername">     </td>
</tr>
<tr>
<td>Password</td><td><input type="password" name="txtpwd"> </td>
</tr>
<tr>
<td><input type="submit" value="Login"></td>
</tr>
</table>
</form>
</center>
</body>
</html>