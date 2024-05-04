package web;

import dao.CartDAO;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import models.AdminModel;
import models.CartItem;
import models.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/cartAdd")
public class CartServlet extends HttpServlet{

 public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
     try{

         PrintWriter out = response.getWriter();

         ArrayList<CartItem> cartList = new ArrayList<>();

         int productId = Integer.parseInt(request.getParameter("productId"));

         CartItem cartItem = new CartItem();
         cartItem.setId(productId);
         cartItem.setQuantity(2);


         HttpSession session = request.getSession();
         ArrayList<CartItem> cart_list = (ArrayList<CartItem>) session.getAttribute("cart-list");

         if(cart_list == null){
             cartList.add(cartItem);
             session.setAttribute("cart_list",cartList);
             out.println("session created and added to cart list");
         }


     }catch (Exception e){
         e.printStackTrace();
         System.out.println(e.getMessage());
     }
 }


}
