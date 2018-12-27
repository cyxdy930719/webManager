<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/26
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${p.brand_id}
    <form action="doadd" method="post" enctype="multipart/form-data">
        商品名称：<input type="text" name="product_id"><br>
        品牌：<select name="brand_name" id="brand">
        <c:forEach items="${brands}" var="b">
            <option value="${b.brand_id}">${b.brand_name}</option>
        </c:forEach>

            </select><br>
        商品价格: <input type="text" name="price"><br>
        商品描述： <input type="text" name="product_des"><br>
        商品图片：<input type="file" name="file"><br>
        库存：<input type="text" name="stock"><br>
        <input type="submit" value="添加">
        
    
    </form>

</body>
</html>
