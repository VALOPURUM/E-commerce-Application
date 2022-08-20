package com.val.ecommerceapp.Servlets;

import com.val.ecommerceapp.DAO.SignUpDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/AdminSignupServlet")
public class AdminSignupServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("adminNewUsername");
        String password = request.getParameter("adminNewPass");

        HttpSession session = request.getSession();
        session.setAttribute("newUsername1", uname);
        session.setAttribute("newPass1", password);

        SignUpDAO signUpDAO = new SignUpDAO();

        signUpDAO.signUpUser(uname, password, "insert into admin1 (username,password) values ( ?, ?);");

        response.sendRedirect("admin.jsp");
    }


}
