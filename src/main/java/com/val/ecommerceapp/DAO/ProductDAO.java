package com.val.ecommerceapp.DAO;

import com.val.ecommerceapp.DB.DBConnection;
import com.val.ecommerceapp.model.Product;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class ProductDAO {
    private DBConnection dbConnection;
    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;
    private String query;

    public ProductDAO(Connection connection) {
        this.connection = connection;
    }

    public ProductDAO() {

    }

    public int addProduct(Part part, String productName, double price, int qtyAvailable, String query, String category){
        int result =0;

        try {

            dbConnection = new DBConnection();

            connection = dbConnection.connectToDB();


            InputStream inputStream = part.getInputStream();

            PreparedStatement preparedStatement = connection.prepareStatement(query);


            preparedStatement.setString(1, productName);
            preparedStatement.setBlob(2, inputStream);
            preparedStatement.setDouble(3, price);
            preparedStatement.setInt(4, qtyAvailable);
            preparedStatement.setString(5, category);


            result = preparedStatement.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return result;
    }
    public int displayProductByCategory(String query, String category,HttpServletResponse response){
        int result =0;

        try {

            DBConnection dbConnection = new DBConnection();

            Connection connection = dbConnection.connectToDB();

            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, category);

            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Blob blob = resultSet.getBlob("productImage");

              byte barray[]= resultSet.getBytes(2);
              response.setContentType("image/png");
              OutputStream img = response.getOutputStream();
              img.write(barray);
              img.flush();
              img.close();
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return result;
    }
    public List<Product> getAllProducts(){
        List<Product> products = new ArrayList<Product>();
        try {
            query = "select * from product";
            preparedStatement = this.connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Product row = new Product();
                row.setID(resultSet.getInt("id"));
                row.setName(resultSet.getString("productName"));
                row.setCategory(resultSet.getString("category"));
                row.setPrice(resultSet.getString("productPrice"));
                row.setImage(resultSet.getString("productImage"));
                products.add(row);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return products;
    }
}

