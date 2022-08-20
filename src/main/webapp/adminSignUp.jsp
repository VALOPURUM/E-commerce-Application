

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>e-commerce</title>
    <%@include file="includes/header.jsp"%>
    <!-- CSS only -->
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
                <%  if(session.getAttribute("adminUsername")!=null) {%>

                </li >
                <li class="nav-item" >
                    <a class="nav-link" href = "logOut" > Logout </a >
                </li >
                <% }%>



                <%  if(session.getAttribute("adminUsername")==null) {%>
                <li class="nav-item">
                    <a class="nav-link" href="adminLogin.jsp">Admin</a>
                </li>
                <% }
                %>

                <%  if(session.getAttribute("adminUsername")!=null) {%>
                <li class="nav-item">
                    <a class="nav-link" href="adminSignUp.jsp">Admin signup</a>
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
    <div class="card w-50 mx-auto my-5">
        <div class="card-header" text-center>Admin signup</div>
        <div class="card-body">
            <form action="AdminSignupServlet" method="post">

                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" class="form-control" name="newAdminUsername" placeholder="Enter your Email" required>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="newAdminPass" placeholder="********" required>
                </div>


                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Sign up</button>
                </div>


            </form>

        </div>
    </div>
</div>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>