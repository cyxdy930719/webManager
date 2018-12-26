<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/26
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doupdate_product"   method="post" enctype="multipart/form-data">
    商品编号：<input type="text" hidden="hidden" name="product_id" value="${p.product_id}"><br>
    品牌：<input type="text" readonly="readonly" name="brand_name" value="${p.brand_name}"><br>
    商品名称：<input type="text" name="product_name" value="${p.product_name}"><br>
    商品价格：<input type="text" name="price" value="${p.price}"><br>
    商品描述：<input type="text" name="product_des" value="${p.product_des}"><br>
    商品图片：<input type="file" name="file"><br>
    商品库存：<input type="text" name="stock" value="${p.stock}"><br>
    <input type="submit" value="修改">
</form>

</body>
</html>
