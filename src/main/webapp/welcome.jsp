<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 10/08/2022
  Time: 00:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
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
        Welcome ${username}

    <a href ="aboutUs.jsp">About us</a>
    <h3> <a href="displayProducts.jsp">See all products</a></h3>
    <h3> <a href="productsByCategory.jsp">Search product by category</a></h3>
    <form action ="logOut" method="post">
        <input type="submit" value="LogOut">
    </form>
</body>
</html>
