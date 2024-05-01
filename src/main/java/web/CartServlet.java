package web;

import dao.CartDAO;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import models.AdminModel;
import models.User;

import java.io.IOException;

@WebServlet("/cartAdd")
public class CartServlet extends HttpServlet{

        public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{
            try{
                int id = Integer.parseInt(request.getParameter("productId"));

                CartDAO cartDAO = new CartDAO();
            }catch(Exception e){
                e.printStackTrace();
                System.out.println(e.getMessage());
            }
        }


}
