<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/28
  Time: 19:52
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
        ul li{
            list-style: none;
            float:left;
            border: solid 1px black;
            text-align: center;
            width: 30px;
        }
        ul li.page{
            width: 80px;
            height: 30px;
        }
        ul li a{
            text-decoration: none;
            color: black;
            display: block;
        }
        ul li:hover{
            cursor: pointer;
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
            <th>权限</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="u">
            <tr>
                <td>${u.username}</td>
                <td>${u.birthday}</td>
                <td>${u.telephone}</td>
                <td>${u.question}</td>
                <td>${u.answer}</td>
                <td><select name="role">
                    <c:forEach items="${r}" var="r">
                        <option value="${r.id}" selected="selected">${r.name}</option>
                    </c:forEach>

                </select></td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
