package dao;

import db.DbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
}
