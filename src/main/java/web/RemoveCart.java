package web;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.annotation.WebServlet;
import models.CartItem;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/remove")
public class RemoveCart extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
        try{
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);

            if(id!=0){
                ArrayList<CartItem> cart_list = (ArrayList<CartItem>) request.getSession().getAttribute("cart-list");
                if (cart_list != null) {
                    for(CartItem c:cart_list){
                        if(c.getId()==id){
                            cart_list.remove(cart_list.indexOf(c));
                            break;
                        }
                    }
                    response.sendRedirect("cart.jsp");
                }
            }else{
                response.sendRedirect("cart.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
