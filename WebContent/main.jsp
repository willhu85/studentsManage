<%@page import="com.huweiwei.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main</title>
<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<jsp:include page="isLogin.jsp"></jsp:include>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-10 column">
            <img alt="140x140" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1491392417221&di=a6bce5773b752a95543dc1ab52cb4e1c&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0138fe57ac20220000012e7e762444.jpg" width="100" height="100" />
        </div>
        <div class="col-md-2 column">
            欢迎您! 
            <%User user = (User)session.getAttribute("user");
            out.println(user.getUsername());
            %>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="breadcrumb">
                <li>
                     <a href="index.jsp">主页</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-3 column">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        主页
                    </h3>
                </div>
                <div class="panel-body">
                    <a href="addStudents.jsp" target="main">学生信息添加</a>
                </div>
                <div class="panel-footer">
                    <a href="listStudents.jsp" target="main">学生信息管理</a>
                </div>
                <div class="panel-footer">
                    <a href="logout.jsp">退出</a>
                </div>
            </div>
        </div>
        <div class="col-md-9 column">
            <iframe src="center.jsp" frameborder="0" name="main" width="100%" height="700"></iframe>
        </div>
    </div>
</div>
</body>
</html> 