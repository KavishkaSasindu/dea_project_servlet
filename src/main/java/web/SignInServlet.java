package web;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.annotation.WebServlet;
import models.User;

import java.io.IOException;

@WebServlet("/signIn")
public class SignInServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
        UserDao userDao = new UserDao();

        boolean isAuthenticatedUser = userDao.signInUser(email,password);
        if(isAuthenticatedUser){
            System.out.println("User logged in success");
        }else{
            System.out.println("User not logged in");
        }
    }
}
