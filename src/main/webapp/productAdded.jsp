<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 18/08/2022
  Time: 02:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="AddProductServlet" method="post" enctype="multipart/form-data">
    <input type="text" name="productID" placeholder="Enter product ID" required="required"><br>
    <input type="text" name="productName" placeholder="Enter product name" required="required"><br>
    <input type="text" name="productPrice" placeholder="Enter product price" required="required"><br>
    <input type="text" name="category" placeholder="Enter category" required="required"><br>
    <input type="file" name="image" required="required"><br>
    <input type="submit" value="Add product">
</form><br>

<p style="color:green">Product added successfully!</p><br>
</body>
</html>
