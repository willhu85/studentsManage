<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证</title>
</head>
<body>
<jsp:useBean id="user" class="com.huweiwei.entity.User"></jsp:useBean>
<jsp:useBean id="userDao" class="com.huweiwei.dao.UserDao"></jsp:useBean>
<jsp:setProperty property="*" name="user" />
<%
if (userDao.validate(user)) {
    session.setAttribute("user", user);
%>
<jsp:forward page="main.jsp"></jsp:forward>
<% } else {
    session.setAttribute("error", "用户名或密码错误");
} %>
<jsp:forward page="login.jsp"></jsp:forward>

</body>
</html>