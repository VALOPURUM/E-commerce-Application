<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 10/08/2022
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logIn</title>
</head>
<body>
<br><br><br>
<div style="text-align: center;">
    <h3>For Customers</h3><br>
<form action="CustomerLogin" method="post" >
    Enter Customer username: <input type="text" name="uname"><br>
    Enter Customer password: <input type="password" name="pass"><br>
    <input type="submit" value="login">
</form><br>
Don't have an account?
<form action="SignUp" method="post">
<input type="submit" value="Signup">
</form>
    <br><br><br>
    <h3>For Admin</h3><br>
<form action="AdminLogin" method="post">
    Enter Admin username: <input type="text" name="adminUsername"><br>
    Enter Admin password: <input type="password" name="adminPass"><br>
    <input type="submit" value="login">
</form>
</div>
</body>
</html>
