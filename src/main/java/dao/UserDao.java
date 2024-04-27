package dao;

import db.DbConnection;
import models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    Connection conn;
    public UserDao(){
        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.getConnection();
    }

    public boolean addUser(User user){
        int insertRow =0;
        try{

            final String INSERT_QUERY = "INSERT INTO user(nic,firstname,lastname,email,age,password) VALUES(?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(INSERT_QUERY);
            stmt.setInt(1,user.getNic());
            stmt.setString(2,user.getFirstName());
            stmt.setString(3, user.getLastName());
            stmt.setString(4,user.getEmail());
            stmt.setString(5, user.getAge());
            stmt.setString(6, user.getPassword());

            insertRow = stmt.executeUpdate();

        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return insertRow>0;
    }

    public boolean signInUser(String email,String password){
        try{
             final String SELECT_QUERY = "SELECT * from user WHERE email=? AND password = ? ";
             PreparedStatement stmt = conn.prepareStatement(SELECT_QUERY);
             stmt.setString(1,email);
             stmt.setString(2,password);

            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                return true;
            }else{
                System.out.println("user not found in db");
                return false;
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return false;
    }




}
