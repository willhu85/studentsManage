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
<form action="add.jsp" role="form" method="post">
    <div class="form-group">
        <label for="nickName">昵称</label>
        <input type="text" class="form-control" id="nickName" name="nickName" placeholder="输入昵称" />
    </div>
    <div class="form-group">
        <label for="realName">真名</label>
        <input type="text" class="form-control" id="realName" name="realName" placeholder="输入真名" />
    </div>
    <div class="form-group">
        <label for="">性别</label>
        <label class="check-inline">
        <input type="radio" name="gender" value="man" checked />男
        </label>
        <label class="check-inline">
        <input type="radio" name="gender" value="women" />女
        </label>
    </div>
    <div class="form-group">
        <label for="birthDay">生日</label>
        <input type="date" class="form-control" id="birthDay" name="birthDay" />
    </div>
    <div class="form-group">
        <label for="major">专业</label>
        <select name="major" id="major" class="form-control">
        <option value="web">前端</option>
        <option value="java">JAVA</option>
        <option value="PHP">php</option>
        </select>
    </div>
    <div class="form-group">
        <label for="course">课程</label>
        <select name="course" id="course" multiple size="2" class="form-control">
        <option value="web">前端课程</option>
        <option value="java">JAVA课程</option>
        <option value="PHP">php课程</option>
        </select>
    </div>
    <div class="form-group">
        <label for="">兴趣</label>
        <label class="check-inline">
        <input type="checkbox" name="interest" value="film" checked />电影
        </label>
        <label class="check-inline">
        <input type="checkbox" name="interest" value="read" />图书
        </label>
        <label class="check-inline">
        <input type="checkbox" name="interest" value="music" />音乐
        </label>
    </div>
    <div class="form-group">
        <label>备注</label>
        <textarea name="remark" id="" cols="30" rows="10" class="form-control"></textarea>
    </div>
    <button type="submit">提交</button>
</form>
</body>
</html>