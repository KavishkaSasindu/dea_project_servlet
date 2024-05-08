package dao;

import db.DbConnection;
import models.CartItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CartDAO {

    Connection conn ;
    public CartDAO(){
        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.getConnection();
    }

    public boolean addCart(CartItem cartItem,int productId,String email){
        int insertRow = 0;
        try{
            final String INSERT = "INSERT INTO product(productid,pname,pprice,description,image1,image2,image3,image4,quantity,category,email) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(INSERT);
            stmt.setInt(1,productId);
            stmt.setString(2,cartItem.getpName());
            stmt.setDouble(3, cartItem.getpPrice());
            stmt.setString(4,cartItem.getpDescription());
            stmt.setString(5,cartItem.getMainImage());
            stmt.setString(6,cartItem.getImg1());
            stmt.setString(7,cartItem.getImg2());
            stmt.setString(8,cartItem.getImg3());
            stmt.setInt(9,cartItem.getQuantity());
            stmt.setString(10,cartItem.getCategory());
            stmt.setString(11,email);

            insertRow = stmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return insertRow>0;
    }

    public CartItem CartOne(int productId){
        CartItem cartItem = null;
        try{
            final String GET_ONE = "SELECT * FROM cart WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(GET_ONE);
            stmt.setInt(1,productId);
            ResultSet rs = stmt.executeQuery();

            if(rs.next()){
                cartItem =new CartItem();

            }

        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());

        }
        return cartItem;
    }



}