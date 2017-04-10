<%@page import="com.huweiwei.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<%
 Student student = (Student) session.getAttribute("student");
%>

<form action="change.jsp" role="form" method="post">
    <div class="form-group">
        <label for="nickName">昵称</label>
        <input type="text" class="form-control" id="nickName" name="nickName" placeholder="输入昵称" value="<%= student.getNickName() %>" />
    </div>
    <div class="form-group">
        <label for="realName">真名</label>
        <input type="text" class="form-control" id="realName" name="realName" placeholder="输入真名" value="<%= student.getRealName() %>" />
    </div>
    <div class="form-group">
        <label for="">性别</label>
        <label class="check-inline">
        <input type="radio" name="gender" value="man" <% if(student.getGender().equals("man")) {%> checked <%} %> />男
        </label>
        <label class="check-inline">
        <input type="radio" name="gender" value="women"<% if(student.getGender().equals("woman")) {%> checked <%} %> />女
        </label>
    </div>
    <div class="form-group">
        <label for="birthDay">生日</label>
        <input type="date" class="form-control" id="birthDay" name="birthDay"  value="<%= student.getBirthDay() %>" />
    </div>
    <div class="form-group">
        <label for="major">专业</label>
        <select name="major" id="major" class="form-control">
        <option value="web" <% if(student.getMajor().equals("web")) {%> selected <%} %>>前端</option>
        <option value="java"<% if(student.getMajor().equals("java")) {%> selected <%} %>>JAVA</option>
        <option value="PHP"<% if(student.getMajor().equals("PHP")) {%> selected <%} %>>php</option>
        </select>
    </div>
    <div class="form-group">
        <label for="course">课程</label>
        <select name="course" id="course" multiple size="2" class="form-control">
        <option value="web" <% if(student.getCourses().contains("web")) {%> selected <%} %>>前端课程</option>
        <option value="java" <% if(student.getCourses().contains("java")) {%> selected <%} %>>JAVA课程</option>
        <option value="PHP" <% if(student.getCourses().contains("PHP")) {%> selected <%} %>>php课程</option>
        </select>
    </div>
    <div class="form-group">
        <label for="">兴趣</label>
        <label class="check-inline">
        <input type="checkbox" name="interest" value="film" <% if(student.getInterests().contains("film")) {%> checked <%} %> />电影
        </label>
        <label class="check-inline">
        <input type="checkbox" name="interest" value="read" <% if(student.getInterests().contains("read")) {%> checked <%} %>  />图书
        </label>
        <label class="check-inline">
        <input type="checkbox" name="interest" value="music" <% if(student.getInterests().contains("music")) {%> checked <%} %>  />音乐
        </label>
    </div>
    <div class="form-group">
        <label>备注</label>
        <textarea name="remark" id="" cols="30" rows="10" class="form-control"><%= student.getNickName() %></textarea>
    </div>
    <input type="hidden" name="id" value="<%= student.getId() %>" />
    <button type="submit">修改</button>
</form>
</body>
</html>