package dao;

import db.DbConnection;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ProductDao{

    Connection conn;

    public ProductDao(){
        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.getConnection();
    }

    public boolean addProduct(Product product){
        int insertRow = 0;
        try{
            final String INSERT_QUERY = "INSERT INTO product(pname,pprice,description,image1,image2,image3,image4,quantity) VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(INSERT_QUERY);
            stmt.setString(1, product.getpName());
            stmt.setString(2, product.getpPrice());
            stmt.setString(3, product.getpDescription());
            stmt.setString(4, product.getMainImage());
            stmt.setString(5,product.getImg1());
            stmt.setString(6,product.getImg2());
            stmt.setString(7,product.getImg3());
            stmt.setInt(8,product.getQuantity());

            insertRow = stmt.executeUpdate();

        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return insertRow>0;
    }
}