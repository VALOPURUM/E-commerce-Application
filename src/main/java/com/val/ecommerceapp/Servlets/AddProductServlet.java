package com.val.ecommerceapp.Servlets;

import com.val.ecommerceapp.DAO.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
@MultipartConfig(maxFileSize = 16177216)
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String productName = request.getParameter("productName");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int qtyAvailable = Integer.parseInt(request.getParameter("qtyAvailable"));
        Part part = request.getPart("image");
        String category = request.getParameter("category");
        String query ="insert into product(productName,productImage,ProductPrice,QtyAvailable,category) values(?,?,?,?,?);";


        ProductDAO productDAO = new ProductDAO();
        productDAO.addProduct(part,productName,productPrice,qtyAvailable,query, category);
        response.sendRedirect("productAdded.jsp");
    }
    }

