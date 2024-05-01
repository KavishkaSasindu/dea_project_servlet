package dao;

import db.DbConnection;
import models.CartItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CartDAO {

    Connection conn ;
    public CartDAO(){
        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.getConnection();
    }

    public boolean addCart(CartItem cartItem,int productId){
        try{
            final String INSERT = "INSERT INTO product(productid,pname,pprice,description,image1,image2,image3,image4,quantity,category) VALUES(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(INSERT);
            stmt.setInt(1,productId);
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
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