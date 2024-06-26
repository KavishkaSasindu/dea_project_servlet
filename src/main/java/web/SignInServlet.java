package web;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
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
            HttpSession session = request.getSession();
            session.setAttribute("email",email);
            System.out.println("User logged in success");
            response.sendRedirect("index.jsp");
        }else{
            System.out.println("User not logged in");
        }


    }
}
