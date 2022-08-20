package com.val.ecommerceapp.Servlets;

import com.mysql.cj.Session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/logOut")
public class logOutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        session.invalidate();
        response.sendRedirect("login1.jsp");

    }
}
