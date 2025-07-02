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
<%
  int sid=Integer.parseInt(request.getParameter("s_id"));
  String name=request.getParameter("name1");
  String username=request.getParameter("name2");
  String password=request.getParameter("pwd");
  String email=request.getParameter("email");
  int mobno=Integer.parseInt(request.getParameter("mob"));
  String year=request.getParameter("year");
  int div=Integer.parseInt(request.getParameter("divi"));
  int marks=Integer.parseInt(request.getParameter("mrks"));
 //Student(int sid, int mobno, int division, int marks, String name, String username, String password, String email,String year)
  StudentDAO st=new StudentDAO();
  st.updateStudent(sid,mobno,div,marks,name,username,password,email,year);
  response.sendRedirect("adminhome.jsp");
%>

</body>
</html>