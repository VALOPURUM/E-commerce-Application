package com.val.ecommerceapp.Servlets;

import com.val.ecommerceapp.DAO.LoginDAO;
import com.val.ecommerceapp.DAO.SignUpDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/SignUpServlet1")
public class SignUpServlet1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uname = request.getParameter("newUsername");
        String password = request.getParameter("newPass");

        HttpSession session = request.getSession();
        session.setAttribute("newUsername1", uname);
        session.setAttribute("newPass1", password);

        SignUpDAO signUpDAO = new SignUpDAO();

        signUpDAO.signUpUser(uname, password, "insert into users1 (username,password) values ( ?, ?);");

        response.sendRedirect("login1.jsp");
    }
}


