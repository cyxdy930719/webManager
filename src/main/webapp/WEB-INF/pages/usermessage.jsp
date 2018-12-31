<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/31
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            border:solid 1px black;
            border-collapse: collapse;
        }
        table thead tr td,table tbody tr td{
            border:solid 1px black;
            padding:5px 10px;
        }
        table tbody tr:nth-child(odd){
            background-color: darkgrey;
        }
    </style>
</head>
<body>
    <table>
        <thead>
        <tr>
            <th>用户名</th>
            <th>生日</th>
            <th>电话</th>
            <th>问题</th>
            <th>答案</th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td>${u.username}</td>
                <td>${u.birthday}</td>
                <td>${u.telephone}</td>
                <td>${u.question}</td>
                <td>${u.answer}</td>
            </tr>
        </tbody>
    </table>

</body>
</html>
