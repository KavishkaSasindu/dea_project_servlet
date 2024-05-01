package web;
import dao.ProductDao;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import models.Product;
import models.User;

import java.io.IOException;

@WebServlet("/deleteProduct")
public class DeleteProduct extends HttpServlet{

    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
        try{
            int id = Integer.parseInt(request.getParameter("id"));

            Product product = new Product();
            product.setId(id);
            ProductDao productDao = new ProductDao();
            boolean isSuccess = productDao.deleteContact(id);
            if(isSuccess){
                System.out.println("Delete product success");
                response.sendRedirect("adminProducts.jsp");
            }else{
                System.out.println("Product not delete");
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
