<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.DAO.AdminDAO"%>
    <%@page import="com.pojo.Admin"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <% 
 String username=request.getParameter("txtusername1");
 String password=request.getParameter("txtpwd1");
 AdminDAO admindao=new AdminDAO();
 Admin ad2=admindao.getAdmin(username, password);
 if(ad2!=null)
 {    
	 
	 response.sendRedirect("adminhome.jsp");	 
 }
 else{
	 
	 response.sendRedirect("adminlogin.jsp");
 }
 
 %>


</body>
</html>