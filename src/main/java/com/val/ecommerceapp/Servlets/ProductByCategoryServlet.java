package com.val.ecommerceapp.Servlets;

import com.val.ecommerceapp.DAO.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/productsByCategory")
public class ProductByCategoryServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("displayProductsByCategory.jsp");


    }
}
