<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 10/08/2022
  Time: 02:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    if(session.getAttribute("username")==null){
        response.sendRedirect("logIn.jsp");
    }
%>
For Customers<br>
<form action="CustomerLogin" method="post" >
    Enter Admin username: <input type="text" name="uname"><br>
    Enter Admin password: <input type="password" name="pass"><br>
    <input type="submit" value="login">
</form>
<p style="color:red">Incorrect customer username or password!</p><br>
<br>
Don't have an account?
<form action="SignUp" method="post">
    <input type="submit" value="Signup">
</form>
<br>
For Admin<br>
<form action="AdminLogin" method="post">
    Enter Admin username: <input type="text" name="uname"><br>
    Enter Admin password: <input type="password" name="pass"><br>
    <input type="submit" value="login">
</form>

</body>
</html>
