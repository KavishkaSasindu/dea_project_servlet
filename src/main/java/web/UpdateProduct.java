package web;
import dao.ProductDao;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import models.Product;
import models.User;

import java.io.IOException;

@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response){
        try{
            int id = Integer.parseInt(request.getParameter("id"));
            Product product =new Product();

            String productName = request.getParameter("productName");
            double productPrice = Double.parseDouble(request.getParameter("productPrice"));
            String productDescription = request.getParameter("productDescription");
            String productMainImage = request.getParameter("productMainImage");
            String productImage1 = request.getParameter("productImage1");
            String productImage2 = request.getParameter("productImage2");
            String productImage3 = request.getParameter("productImage3");
            int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
            String category = request.getParameter("productCategory");


product.setId(id);
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
            boolean isSuccess = productDao.updateProduct(product);

            if(isSuccess){
                response.sendRedirect("adminDashboard.jsp");
                System.out.println("update user success");
            }else{
                System.out.println("user not update");
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
