package web;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import models.User;

import java.io.IOException;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
        try{
            int id = Integer.parseInt(request.getParameter("id"));

            User user = new User();
            user.setId(id);
            UserDao userDao = new UserDao();
            boolean isSuccess = userDao.deleteContact(id);
            if(isSuccess){
                System.out.println("Delete user success");
                response.sendRedirect("adminAllUsers.jsp");
            }else{
                System.out.println("User not delete");
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
