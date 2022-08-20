<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 17/08/2022
  Time: 08:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
    <%

        if(session.getAttribute("username5")==null){
            response.sendRedirect("logIn.jsp");
        }
    %>
        <form action="SignUpServlet1" method="post">
        Enter username: <input type="text" name="newUsername"><br>
        Enter password: <input type="password" name="newPass"><br>
         <input type="submit" value="Sign up">

            <p style="color:red">Enter username and password!</p><br>
        </form>
    </body>
</html>
