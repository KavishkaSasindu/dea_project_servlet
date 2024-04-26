package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    private String DB_USERNAME = "root";
    private String DB_PASSWORD = "mysql";
    private String DB_URL = "";
    Connection conn ;
    public Connection getConnection(){

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_USERNAME,DB_PASSWORD,DB_URL);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return conn;
    }
}
