<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 18/08/2022
  Time: 00:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="AddProductServlet" method="post" enctype="multipart/form-data">
    <input type="text" name="productName" placeholder="Product name" required="required"><br>
    <input type="text" name="productPrice" placeholder="Product price" required="required"><br>
    <input type="text" name="qtyAvailable" placeholder="Qty Available" required="required"><br>
    <input type="text" name="category" placeholder="Enter category" required="required"><br>
    <p>Select picture</p>
    <input type="file" name="image" required="required" placeholder="Upload image"><br>

    <input type="submit" value="Add product">
</form><br>
</body>
</html>
