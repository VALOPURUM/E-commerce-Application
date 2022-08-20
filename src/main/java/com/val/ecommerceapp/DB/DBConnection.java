package com.val.ecommerceapp.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public Connection connectToDB() throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost:3306/girrafe";
        String uname = "root";
        String pass = "";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url,uname,pass);
        return connection;
    }
}
