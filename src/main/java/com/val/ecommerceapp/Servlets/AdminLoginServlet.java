package com.val.ecommerceapp.Servlets;

import com.val.ecommerceapp.DAO.LoginDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AdminLogin")
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("adminUsername");
        String password = request.getParameter("adminPass");

        HttpSession session = request.getSession();
        session.setAttribute("adminUsername", uname);

        LoginDAO loginDAO = new LoginDAO();


        if (loginDAO.check(uname,password, "select * from admin1 where username=? and password=?")) {

            session.setAttribute("password", password);
            response.sendRedirect("admin.jsp");

        } else {
            response.sendRedirect("adminLogin.jsp");
        }

    }

}
