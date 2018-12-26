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
    <form action="" enctype="multipart/form-data">
        商品名称：<input type="text" name="product_id"><br>
        品牌：<select name="brand_name" id="brand">
        <option value="戴尔">戴尔</option>
        <option value="联想">联想</option>
        <option value="惠普">惠普</option>
        <option value="华硕">华硕</option>
            </select><br>
        商品价格: <input type="text" name="price"><br>
        商品描述： <input type="text" name="product_des"><br>
        商品图片：<input type="file" name="url"><br>
        库存：<input type="text" name="stock"><br>
        <input type="submit" value="添加">
        
    
    </form>

</body>
</html>
