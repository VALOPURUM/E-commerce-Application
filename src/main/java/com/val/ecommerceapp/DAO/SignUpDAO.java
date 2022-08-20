package com.val.ecommerceapp.DAO;

import com.val.ecommerceapp.DB.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SignUpDAO {
    public int signUpUser(String username, String password, String query) {
        int result =0;

        try {

            DBConnection dbConnection = new DBConnection();

            Connection connection = dbConnection.connectToDB();


            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

             result = preparedStatement.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return result;
    }
}
