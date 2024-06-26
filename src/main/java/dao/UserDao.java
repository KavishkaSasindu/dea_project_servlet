package dao;

import db.DbConnection;
import jakarta.servlet.http.HttpSession;
import models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    public List<User> getAllUsers(){
        List<User> user = new ArrayList<>();
        try{
            final String ALL_QUERY = "SELECT * from user";
            PreparedStatement stmt = conn.prepareStatement(ALL_QUERY);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int nic = rs.getInt("nic");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String email = rs.getString("email");
                String age = rs.getString("age");

                User userList = new User();

                userList.setId(id);
                userList.setNic(nic);
                userList.setFirstName(firstname);
                userList.setLastName(lastname);
                userList.setEmail(email);
                userList.setAge(age);

                user.add(userList);
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return user;
    }


    public User getOneUser(int userId){
        User user=null;
        try{
            final String ONE_QUERY = "SELECT * from user WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(ONE_QUERY);
            stmt.setInt(1,userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                int nic = rs.getInt("nic");
                String firstName = rs.getString("firstname");
                String lastName = rs.getString("lastname");
                String email = rs.getString("email");
                String age = rs.getString("age");

                 user = new User();

                 user.setId(id);
                user.setNic(nic);
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setEmail(email);
                user.setAge(age);

            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return user;
    }

    public boolean updateUser(User user){
        int insertRow =0;
        try{
            final String UPDATE_QUERY = "UPDATE user SET firstname=? ,lastname=?,email=?,age=?,nic=? WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(UPDATE_QUERY);

            stmt.setString(1,user.getFirstName());
            stmt.setString(2, user.getLastName());
            stmt.setString(3,user.getEmail());
            stmt.setString(4,user.getAge());
            stmt.setInt(5,user.getNic());
            stmt.setInt(6,user.getId());

            insertRow = stmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return insertRow>0;
    }

    public boolean deleteContact(int userId){
        int rowsDeleted = 0;
        try{
           final String DELETE_QUERY = "DELETE FROM user WHERE id=?";
           PreparedStatement stmt = conn.prepareStatement(DELETE_QUERY);
           stmt.setInt(1,userId);
           rowsDeleted = stmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return rowsDeleted>0;
    }

    public User getUserBySession(String email){
        User user= null;
        try{
            final String SESSION_QUERY = "SELECT * FROM user WHERE email=?";
            PreparedStatement stmt = conn.prepareStatement(SESSION_QUERY);
            stmt.setString(1,email);
            ResultSet rs = stmt.executeQuery();

            if(rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setNic(rs.getInt("nic"));
                user.setFirstName(rs.getString("firstname"));
                user.setLastName(rs.getString("lastname"));
                user.setEmail(rs.getString("email"));
                user.setAge(rs.getString("age"));
            }


        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return user;
    }


}
