package com.val.ecommerceapp.Servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/AdminLogOutServlet")
public class AdminLogOutServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("adminUsername");
        session.invalidate();
        response.sendRedirect("index.jsp");

    }
}
