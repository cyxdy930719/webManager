<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/27
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <form action="doupdate_user" method="post">
        用户名：<input type="text" hidden="hidden" name="uname" value="${u.username}">
        新密码：<input type="password" name="npwd">
        <input type="submit" value="修改">
    </form>
</body>
</html>
