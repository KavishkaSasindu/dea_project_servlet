package web;
import dao.ProductDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import models.Product;

import java.io.IOException;


@WebServlet("/getOneProduct")
public class GetOneProduct extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
        try{
            int productId = Integer.parseInt(request.getParameter("productId"));
            ProductDao productDao = new ProductDao();
            Product product = productDao.getOneProduct(productId);

        }catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
