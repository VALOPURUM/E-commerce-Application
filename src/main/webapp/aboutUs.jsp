<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 10/08/2022
  Time: 00:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>aboutUs</title>
</head>
<body>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

    response.setHeader("Pragma", "no-cache");

    response.setHeader("Expires", "0");

    if(session.getAttribute("password")==null){
        response.sendRedirect("logIn.jsp");
    }
%>

We are the best e-commerce store!

<form action ="logOut" method="post">
    <input type="submit" value="LogOut">
</form>
</body>
</html>
