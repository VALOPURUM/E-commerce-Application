<%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 18/08/2022
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>

<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">E-commerce Store</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">Cart</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link disabled" href="orders.jsp">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logOut">Logout</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login1.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="signUp.jsp">Sign up</a>
                </li>


            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

</body>
</html>
