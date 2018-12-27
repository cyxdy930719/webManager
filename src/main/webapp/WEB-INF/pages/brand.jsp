<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/27
  Time: 18:16
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
                <td>品牌序号</td>
                <td>品牌名称</td>
                <td>品牌描述</td>
                <td>品牌图片</td>
                <td>操作</td>
            </tr>
        </thead>
        <%--<c:forEach items="${brands}" var="b"></c:forEach>--%>
        <tbody>
        <c:forEach items="${brands}" var="b">
            <tr>
                <td>${b.brand_id}</td>
                <td>${b.brand_name}</td>
                <td>${b.brand_des}</td>
                <td>1212</td>
                <td><a href="deletebrand?brand_id=${b.brand_id}">删除</a>||<a href="update?${b.brand_id}">修改</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
