<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.DAO.StudentDAO"%>
    <%@page import="com.pojo.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- Java code to validate the user--%>
<% 
  String username=request.getParameter("txtusername");
  String password=request.getParameter("txtpwd");
  StudentDAO std= new StudentDAO();
  Student std1=std.getInfoByUP(username, password);
  if(std1!=null){
		session.setAttribute("StudentInfo", std1);
		response.sendRedirect("studenthome.jsp");
	}
	else{
		response.sendRedirect("studentlogin.jsp");
	} 
%>
</body>
</html>