<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆页</title>
</head>
<body>
<h1>登录页</h1>
<form action="<%= request.getContextPath() %>/validate.jsp" method="post">
    <p><label for="userName">用户名</label><input type="text" name="username" id="userName" /></p>
    <p><label for="password">密码</label><input type="password" name="password" id="password" /></p>
    <p><button type="submit">登录</button></p>
</form>

<p>
<%
String msg = (String)session.getAttribute("error");
if(msg != null) {
    out.println(msg);
    session.setAttribute("error", "");
}
%>
</p>
</body>
</html>