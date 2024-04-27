package dao;

import db.DbConnection;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProductDao {
    Connection conn;

    public ProductDao() {
        DbConnection db = new DbConnection();
        conn=db.getConnection();
    }
    public boolean addProduct(Product p) throws SQLException {
        int insertRaw = 0;
        String quary = "INSERT INTO product(product_name,product_price,description,main_image,image_one,image_two,image_three) VALUES(?,?,?,?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(quary);
        insertRaw = ps.executeUpdate();
        ps.setString(1,p.getPname());
        ps.setFloat(2,p.getPprice());
        ps.setString(3,p.getDes());
        ps.setString(4, p.getMimage());
        ps.setString(5,p.getImg1());
        ps.setString(6,p.getImg2());
        ps.setString(7,p.getImg3());

        return insertRaw<0;
    }
}
