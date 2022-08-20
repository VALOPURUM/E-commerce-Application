<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="com.val.ecommerceapp.DB.DBConnection" %><%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 18/08/2022
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String category = request.getParameter("category");
    try {
        DBConnection connection= new DBConnection();
        Connection con = connection.connectToDB();
        PreparedStatement ps = con.prepareStatement("select * from product where category=?");
        ps.setString(1, category);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            Blob blob = rs.getBlob("image");
            byte byteArray[] = blob.getBytes(1, (int) blob.length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
        } else {
            System.out.println("No image found with this category.");
        }
    } catch (Exception e) {
        out.println(e);
    }
%>
</body>
</html>
