<%@page import="java.io.Console"%>
<%@page import="com.huweiwei.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
</head>
<body>
<jsp:useBean id="studentDao" class="com.huweiwei.dao.StudentDao"></jsp:useBean>
<%
int id = Integer.parseInt(request.getParameter("id"));
Student student = studentDao.getById(id);
if(student !=null) {
    session.setAttribute("student", student);
%>
<jsp:forward page="modifyStudent.jsp"></jsp:forward>
<%    
} else {
 %>
<jsp:forward page="error.jsp"></jsp:forward>
 <%   
}
%>
</body>
</html>