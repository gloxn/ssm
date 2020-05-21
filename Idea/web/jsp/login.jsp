<%--
  Created by IntelliJ IDEA.
  User: HAO GONG
  Date: 2020/5/6
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login.action" method="post">
    用户名<input type="type" name="name" ><br>
    密码  <input type="password" name="password"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
