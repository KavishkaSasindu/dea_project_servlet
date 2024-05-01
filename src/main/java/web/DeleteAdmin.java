package web;
import dao.AdminDao;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import models.AdminModel;
import models.User;

import java.io.IOException;


@WebServlet("/deleteAdmin")
public class DeleteAdmin extends HttpServlet{

    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
        try{
            int id = Integer.parseInt(request.getParameter("id"));

            AdminModel user = new AdminModel();
            user.setId(id);
            AdminDao userDao = new AdminDao();
            boolean isSuccess = userDao.deleteContact(id);
            if(isSuccess){
                System.out.println("Delete user success");
                response.sendRedirect("adminUsers.jsp");
            }else{
                System.out.println("User not delete");
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}