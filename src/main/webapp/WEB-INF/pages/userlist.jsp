<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/28
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${users}
    <table>
        <thead>
        <tr>
            <th>用户名</th>
            <th>密码</th>
            <th>电话</th>
            <th>问题</th>
            <th>答案</th>
            <th>权限</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="u">
            <tr>
                <td>${u.username}</td>
                <td>${u.birthday}</td>
                <td>${u.telephone}</td>
                <td>${u.quanestion}/td>
                <td>${u.username}</td>
                <td>${u.role}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
