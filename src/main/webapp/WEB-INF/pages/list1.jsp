<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/25
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <th>编号</th>
        <th>名称</th>
        <th>价格</th>
        <th>描述</th>
        <th>库存</th>
        <th>图片</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${lists}" var="p">
        <tr>
            <td>${p.product_id}</td>
            <td>${p.product_name}</td>
            <td>${p.price}</td>
            <td>${p.product_des}</td>
            <td>${p.stock}</td>
            <td><img src="${p.url}" alt="图片" width="50",height="50"></td>
            <td><a href="delete?product_id=${p.product_id}">删除</a> | <a href="update?product_id=${p.product_id}">修改</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
