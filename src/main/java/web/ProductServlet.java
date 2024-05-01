package web;

import dao.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Product;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


@WebServlet("/addProduct")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        try{
            Product product =new Product();

            String productName = request.getParameter("productName");
            String productPrice = request.getParameter("productPrice");
            String productDescription = request.getParameter("productDescription");
            String productMainImage = request.getParameter("productMainImage");
            String productImage1 = request.getParameter("productImage1");
            String productImage2 = request.getParameter("productImage2");
            String productImage3 = request.getParameter("productImage3");
            int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
            String category = request.getParameter("productCategory");

            product.setpName(productName);
            product.setpPrice(productPrice);
            product.setpDescription(productDescription);
            product.setQuantity(productQuantity);
            product.setMainImage(productMainImage);
            product.setImg1(productImage1);
            product.setImg2(productImage2);
            product.setImg3(productImage3);
            product.setCategory(category);


            ProductDao productDao = new ProductDao();
            boolean addSuccess =productDao.addProduct(product);
            if(addSuccess){
                System.out.println("Product added successfully");
                response.sendRedirect("allProduct.jsp");
            }else {
                System.out.println("Product not added successfully");
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

    }
}
