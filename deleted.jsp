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
StudentDAO st=new StudentDAO();
st.deleteStudent(sid);
response.sendRedirect("adminhome.jsp");
%>
 

</body>
</html>