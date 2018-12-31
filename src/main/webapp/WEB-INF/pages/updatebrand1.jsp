<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/28
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${brands}
    <form action="doupdate1_brand" method="post">
        <input type="text" name="bno"  value="${b.brand_id}"><br>
        品牌名称：<input type="text" name="bname" value="${b.brand_name}"><br>
        品牌描述：<input type="text" name="bdes" value="${b.brand_des}"><br>
        <input type="submit" value="修改">
    </form>

</body>
</html>
