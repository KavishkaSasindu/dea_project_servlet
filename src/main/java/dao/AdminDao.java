package dao;

import db.DbConnection;
import models.AdminModel;
import models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDao {

    Connection conn;
    public AdminDao(){
        DbConnection dbConnection = new DbConnection();
        conn = dbConnection.getConnection();
    }

    public boolean signInAdmin(String email,String password){
        try{
            final String ADMIN_QUERY = "SELECT * from admin WHERE email=? AND password=?";
            PreparedStatement stmt = conn.prepareStatement(ADMIN_QUERY);
            stmt.setString(1,email);
            stmt.setString(2,password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return false;
    }

    public List<AdminModel> getAllAdmins(){
        List<AdminModel> user = new ArrayList<>();
        try{
            final String ALL_QUERY = "SELECT * from admin";
            PreparedStatement stmt = conn.prepareStatement(ALL_QUERY);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");

                String name = rs.getString("name");

                String email = rs.getString("email");


                AdminModel userList = new AdminModel();

                userList.setId(id);
                userList.setName(name);
                userList.setEmail(email);


                user.add(userList);
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return user;
    }

    public boolean deleteContact(int userId){
        int rowsDeleted = 0;
        try{
            final String DELETE_QUERY = "DELETE FROM admin WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(DELETE_QUERY);
            stmt.setInt(1,userId);
            rowsDeleted = stmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return rowsDeleted>0;
    }
}
