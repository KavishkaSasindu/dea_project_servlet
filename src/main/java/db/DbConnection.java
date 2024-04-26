package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    Connection conn ;
    public Connection getConnection(){

        final String DB_USERNAME = "root";
        final String DB_PASSWORD = "mysql";
        final String DB_URL = "jdbc:mysql://localhost/ecommerce";

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn =DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return conn;
    }
}
