<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 09/08/2022
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ page import ="java.sql.*"%>
<%@ include file="new.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Class.forName("com.mysql.cj.jdbc.Driver");
            int k=9/0;
            out.println(k);


    %>

</body>
</html>
