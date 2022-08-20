<%@ page import="com.val.ecommerceapp.model.Product" %>
<%@ page import="com.val.ecommerceapp.DAO.ProductDAO" %>
<%@ page import="com.val.ecommerceapp.DB.DBConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: decagon
  Date: 19/08/2022
  Time: 00:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

    response.setHeader("Pragma", "no-cache");

    response.setHeader("Expires", "0");

    DBConnection dbConnection = new DBConnection();

    ProductDAO productDAO = null;
    try {
        productDAO = new ProductDAO(dbConnection.connectToDB());
    } catch (ClassNotFoundException e) {
        throw new RuntimeException(e);
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
    List<Product> products = productDAO.getAllProducts();
%>

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
                <%  if(session.getAttribute("username")!=null) {%>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">Cart</a>
                </li>

                <li class="nav-item" >
                    <a class="nav-link disabled" href = "orders.jsp" > Orders </a >
                </li >
                <li class="nav-item" >
                    <a class="nav-link" href = "logOut" > Logout </a >
                </li >
               <% }else {%>

                <li class="nav-item" >
                    <a class="nav-link" href = "login1.jsp" > Login </a >
                </li >
               <% }
                %>
                <li class="nav-item">
                    <a class="nav-link" href="signUp.jsp">Sign up</a>
                </li>
                <%  if(session.getAttribute("username")==null||session.getAttribute("adminUsername")==null) {%>
                <li class="nav-item">
                    <a class="nav-link" href="adminLogin.jsp">Admin</a>
                </li>
                <% }
                %>


            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>


<div class="container">
    <div class="card-header my-3">All Products</div>
    <div class="row">
        <%
            if(!products.isEmpty()){
                for(Product prod: products){%>
                    <div class="col-md-3 my-3" >
            <div class="card w-100" style="width: 18rem;">
                <img style="width: 17rem;" src="Product-Pictures/<%= prod.getImage()%>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%= prod.getName()%></h5>
                    <h6 class="price">Price:<%= prod.getPrice()%></h6>
                    <h5 class="category">Category: <%=prod.getCategory()%></h5>
                    <div class="mt-3 d-flex justify-content-between">
                        <a href="#" class="btn btn-primary">Add to cart</a>
                        <a href="#" class="btn btn-primary">Buy now</a>
                    </div>
                </div>
            </div>
        </div>
               <%}
            }
               %>


    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
