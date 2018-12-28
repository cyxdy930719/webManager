<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/22
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>管理系统</title>
    <style>
        body
        {
            background-image: url("img/536056775691216160.png");
            position: relative;
            background-repeat: no-repeat;
            background-size: cover;
        }
        #menu{
            width: 20%;
            height: 100%;
            border: solid 1px black;
            position: absolute;

        }
        #page{
            border: solid 1px black;
            height: 100%;
            position: absolute;
            left:20%;
            width: 80%;
        }
        .search{
            position: absolute;
            border-bottom: solid 1px black;
            width: 100%;
            height: 100px;

        }
        .search_btn{
            width: 300px;
            height: 45px;
            font-size: 20px;
            left: 20px;
            top: 20px;
            position: relative;
        }
        .search_btn1{
            position: absolute;
            left: 320px;
            top: 30px;
        }
        .user{
            float: right;
            margin-top: 60px;
            color: white;
        }
        a{
            text-decoration: none;
            color: white;
            size: 20px;
        }
        .title{
            width: 100%;
            height: 73px;
            border-bottom: solid 1px black;
        }
        .main{
            width: 1507px;
            height: 850px;
            position: absolute;
            top:50px;
            vertical-align: top;
        }







        
    </style>
</head>
<body>
<%--欢迎${user.username}<a href="exit">退出</a><br>--%>
<%--<form method="post">
    <input type="text" name="text">
    <input type="submit" value="搜索">
</form>--%>
<%--${lists}--%>
<div id="menu">
    <div class="title"><h1>后台管理系统</h1></div>
    <div><a href="">用户信息</a></div>
    <div><a href="userlist" target="main">用户管理</a></div>
    <div><a href="updateuser" target="main">修改密码</a></div>
    <div><a href="list1" target="main">商品操作</a></div>
    <div><a href="brandoperating" target="main">品牌操作</a></div>
    <div><a href="add" target="main">添加商品</a></div>
    <div><a href="updatebrand" target="main">添加品牌</a></div>
</div>
<div id="page">
    <div class="search">
        <input  class="search_btn" type="search" name="search" placeholder="Search here"><input class="search_btn1" type="submit" value="搜索">

        <div class="user">欢迎${user.username} <a href="exit">退出</a></div>
    </div>
    <div class="main">
        <iframe class="main" name="main" >主页面</iframe>
    </div>
</div>







<%--<table>
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
<ul>
    ${data.pageView}
</ul>--%>


</body>
</html>
