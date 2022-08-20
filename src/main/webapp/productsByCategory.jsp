<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 18/08/2022
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div align-text="center">
        <form action="productsByCategory" method="post" >
             Enter product category: <input type="text" name="category"><br>
             <input type="submit" value="Display products">
        </form><br>
    </div>

    <hr>

    <div align-text="center">
        <table>
            <tr>
                <th>product name</th>
                <th>product price</th>
                <th>image</th>
            </tr>

            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>

    </div>

</body>
</html>
