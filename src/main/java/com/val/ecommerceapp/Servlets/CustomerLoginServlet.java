package com.val.ecommerceapp.Servlets;

import com.val.ecommerceapp.DAO.LoginDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/CustomerLogin")
public class CustomerLoginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String uname = request.getParameter("login-email");
            String password = request.getParameter("login-password");

            HttpSession session = request.getSession();
            session.setAttribute("username", uname);

            LoginDAO loginDAO = new LoginDAO();


            if (loginDAO.check(uname,password,"select * from users1 where username=? and password=?")) {

                session.setAttribute("password", password);
                response.sendRedirect("index.jsp");

            } else {
                response.sendRedirect("incorrectCustomerLogin.jsp");
            }

    }
}
