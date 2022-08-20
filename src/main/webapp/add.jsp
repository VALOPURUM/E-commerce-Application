<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 09/08/2022
  Time: 01:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="#ffe4c4">
<%@page import= "java.util.Date"%>
<!%
    int x =0;
%>
<%
    int i =Integer.parseInt(request.getParameter("num1"));
    int j = Integer.parseInt(request.getParameter("num2"));

    int k =i + j;
    PrintWriter output = response.getWriter();
    output.println("Output : " + k);

%>

<%=k
%>>

</body>
</html>
