package com.val.ecommerceapp.DAO;

import com.val.ecommerceapp.DB.DBConnection;

import java.sql.*;

public class LoginDAO {

    public boolean check(String username, String password,String query){

        try {

            DBConnection dbConnection = new DBConnection();

            Connection connection = dbConnection.connectToDB();


            PreparedStatement preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);

            ResultSet resultSet= preparedStatement.executeQuery();

            if(resultSet.next()){
                return true;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return false;

    }
}
