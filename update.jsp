<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updating Data</title>
</head>
<body>
<form method="post" action="updatedinfo.jsp">
<!--  sid | name |username|passwod|email|mobno|year|division|marks| -->
Enter the Student ID :- <input  type="text" name="s_id"><br>
Enter the Name :- <input  type="text" name="name1"><br>
Enter the Username :- <input  type="text" name="name2"><br>
Enter the password :- <input  type="text" name="pwd"><br>
Enter the Email :- <input  type="text" name="email"><br>
Enter the Mobile Number :- <input  type="text" name="mob"><br>
Enter the year :-<input  type="text" name="year"><br>
Enter the Division:- <input  type="text" name="divi"><br>
Enter the marks :-<input  type="text" name="mrks"><br>
<input type="submit" value="Update">
</form>
</body>
</html>