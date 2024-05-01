package dao;

import db.DbConnection;
import models.Product;
import models.User;

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
            final String INSERT_QUERY = "INSERT INTO product(pname,pprice,description,image1,image2,image3,image4,quantity,category) VALUES(?,?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(INSERT_QUERY);
            stmt.setString(1, product.getpName());
            stmt.setString(2, product.getpPrice());
            stmt.setString(3, product.getpDescription());
            stmt.setString(4, product.getMainImage());
            stmt.setString(5,product.getImg1());
            stmt.setString(6,product.getImg2());
            stmt.setString(7,product.getImg3());
            stmt.setInt(8,product.getQuantity());
            stmt.setString(9,product.getCategory());

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

    public List<Product> getAllProduct(){
        List<Product> product = new ArrayList<>();
        try{
            final String ALL_QUERY = "SELECT * FROM product";
            PreparedStatement stmt = conn.prepareStatement(ALL_QUERY);
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

    public Product getOneProduct(int id){
        Product product=null;
        try{
            final String ONE_PRODUCT = "SELECT * FROM product WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(ONE_PRODUCT);
            stmt.setInt(1,id);
            ResultSet rs = stmt.executeQuery();

            if(rs.next()){
                product = new Product();
                int pId = rs.getInt("id");
                String pName = rs.getString("pname");
                String pPrice = rs.getString("pprice");
                String description = rs.getString("description");
                String image1 = rs.getString("image1");
                String image2 = rs.getString("image2");
                String image3 = rs.getString("image3");
                String image4 = rs.getString("image4");
                int quantity = rs.getInt("quantity");
                String category  = rs.getString("category");

                product.setId(id);
                product.setpName(pName);
                product.setpPrice(pPrice);
                product.setpDescription(description);
                product.setMainImage(image1);
                product.setImg1(image2);
                product.setImg2(image3);
                product.setImg3(image4);
                product.setQuantity(quantity);
                product.setCategory(category);

            }

        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return product;
    }

    public List<Product> getAllUsers(){
        List<Product> product = new ArrayList<>();
        try{
            final String ALL_QUERY = "SELECT * FROM product";
            PreparedStatement stmt = conn.prepareStatement(ALL_QUERY);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int quantity = rs.getInt("quantity");
                String productName = rs.getString("pname");
                String description = rs.getString("pprice");
                String image1 = rs.getString("image1");
                String image2 = rs.getString("image2");
                String image3 = rs.getString("image3");
                String image4 = rs.getString("image4");
                String category = rs.getString("category");

                Product product1List = new Product();

                product1List.setId(id);
                product1List.setpName(productName);
                product1List.setpDescription(description);
                product1List.setQuantity(quantity);
                product1List.setMainImage(image1);
                product1List.setImg1(image2);
                product1List.setImg2(image3);
                product1List.setImg3(image4);
                product1List.setCategory(category);

                product.add(product1List);
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        return product;
    }
}