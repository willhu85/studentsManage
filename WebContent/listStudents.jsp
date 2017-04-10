<%@page import="com.huweiwei.entity.Student"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<jsp:useBean id="studentDao" class="com.huweiwei.dao.StudentDao"></jsp:useBean>
<table class="table">
  <caption>学生信息管理</caption>
  <thead>
    <tr>
      <th>编号</th>
      <th>昵称</th>
      <th>姓名</th>
      <th>性别</th>
      <th>出生日期</th>
      <th>专业</th>
      <th>课程</th>
      <th>兴趣</th>
      <th>备注</th>
      <th>修改</th>
      <th>删除</th>
    </tr>
  </thead>
  <tbody>
  <% List<Student> sList = studentDao.getAll();
  Iterator iterator = sList.iterator();
  /* int i = 0; */
  while(iterator.hasNext()) {
      Student student = (Student) iterator.next();  
  %>
    <tr>
      <td><%=student.getId() %></td>
      <td><%=student.getNickName() %></td>
      <td><%=student.getRealName() %></td>
      <td><%=student.getGender() %></td>
      <td><%=student.getBirthDay() %></td>
      <td><%=student.getMajor() %></td>
      <td><%=student.getCourses() %></td>
      <td><%=student.getInterests() %></td>
      <td><%=student.getRemark() %></td>
      <td><a href="modify.jsp?id=<%=student.getId() %>">修改</a></td>
      <td><a href="delete.jsp?id=<%=student.getId() %>">删除</a></td>
    </tr>
    <%
    /* i++; */
    }
    %>
  </tbody>
</table>
</body>
</html>