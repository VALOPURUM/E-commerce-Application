<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 17/08/2022
  Time: 08:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 10/08/2022
  Time: 00:30
  To change this template use File | Settings | File Templates.
--%>
<body>
<br><br><br>
<div style="text-align: center;">
<%
    if(session.getAttribute("newUsername1")==null){
        response.sendRedirect("logIn.jsp");
    }
%>
    <h3>For Customers</h3><br>
<form action="CustomerLogin" method="post" >
    Enter Customer username: <input type="text" name="uname"><br>
    Enter Customer password: <input type="password" name="pass"><br>
    <input type="submit" value="login">
</form><br>
<p style="color:green">Sign up successful!</p><br>

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
