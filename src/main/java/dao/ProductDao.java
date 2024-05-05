package dao;

import db.DbConnection;
import models.CartItem;
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
            stmt.setDouble(2, product.getpPrice());
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
                double pPrice = rs.getDouble("pprice");
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
                double pPrice = rs.getDouble("pprice");
                String description = rs.getString("description");
                String image1 = rs.getString("image1");
                String image_2 = rs.getString("image2");
                String image_3 = rs.getString("image3");
                String image_4 = rs.getString("image4");
                int quantity = rs.getInt("quantity");
                String category = rs.getString("category");

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
                product1.setCategory(category);

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
                double pPrice = rs.getDouble("pprice");
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
                double price = rs.getDouble("pprice");
                String description = rs.getString("description");
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
                product1List.setpPrice(price);
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

    public boolean updateProduct(Product product){
        int insertRow =0;
        try{
            final String UPDATE_QUERY ="UPDATE product SET pname=? , pprice=?,description=?,image1=?,image2=?,image3=?,image4=?,quantity=?,category=? WHERE id=?" ;
            PreparedStatement stmt = conn.prepareStatement(UPDATE_QUERY);
            stmt.setString(1,product.getpName());
            stmt.setDouble(2,product.getpPrice());
            stmt.setString(3, product.getpDescription());
            stmt.setString(4, product.getMainImage());
            stmt.setString(5, product.getImg1());
            stmt.setString(6, product.getImg2());
            stmt.setString(7, product.getImg3());
            stmt.setInt(8,product.getQuantity());
            stmt.setString(9, product.getCategory());
            stmt.setInt(10,product.getId());


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
            final String DELETE_QUERY = "DELETE FROM product WHERE id=?";
            PreparedStatement stmt = conn.prepareStatement(DELETE_QUERY);
            stmt.setInt(1,userId);
            rowsDeleted = stmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return rowsDeleted>0;
    }


    public List<CartItem> getCartProducts(ArrayList<CartItem> cart_list) {

        List<CartItem> product = new ArrayList<>();

        try {
            if (cart_list.size() > 0) {
                for (CartItem cart : cart_list) {
                    final String QUERY = "SELECT * FROM product WHERE id =?";
                    PreparedStatement stmt = conn.prepareStatement(QUERY);
                    stmt.setInt(1, cart.getId());
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {
                        CartItem cartItem = new CartItem();
                        cartItem.setId(rs.getInt("id"));
                        cartItem.setpName(rs.getString("pname"));
                        cartItem.setpPrice(rs.getDouble("pprice"));
                        cartItem.setpDescription(rs.getString("description"));
                        cartItem.setMainImage(rs.getString("image1"));
                        cartItem.setImg1(rs.getString("image2"));
                        cartItem.setImg2(rs.getString("image3"));
                        cartItem.setImg3(rs.getString("image4"));
                        cartItem.setQuantity(rs.getInt("quantity"));
                        cartItem.setCategory(rs.getString("category"));
                        product.add(cartItem);
                    }

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

    return product;
    }

}