package dao;

import db.DbConnection;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    public List<Product> getLimitProduct(){
        List<Product> product = new ArrayList<>();
        try{
            final String LIMIT_QUERY = "SELECT * FROM product ORDER BY RAND() LIMIT 5";
            PreparedStatement stmt = conn.prepareStatement(LIMIT_QUERY);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()){
                int id = rs.getInt("id");
                String pName = rs.getString("pname");
                String pPrice = rs.getString("pprice");
                String description = rs.getString("description");
                String image1 = rs.getString("image1");
                String image_2 = rs.getString("image2");
                String image_3 = rs.getString("image3");
                String image_4 = rs.getString("image4");
                int quantity = rs.getInt("quantity");

                Product product1 = new Product();

                product1.setId(id);
                product1.setpName(pName);
                product1.setMainImage(image1);
                product1.setImg1(image_2);
                product1.setImg2(image_3);
                product1.setImg3(image_4);
                product1.setpDescription(description);
                product1.setpPrice(pPrice);
                product1.setQuantity(quantity);

                product.add(product1);

            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return product;
    }
}