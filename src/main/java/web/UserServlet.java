package web;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import models.User;

import java.io.PrintWriter;
import java.io.IOException;
import java.util.Objects;

@WebServlet("/add")
public class UserServlet extends HttpServlet {
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {

        User user = new User();

        PrintWriter write = response.getWriter();

        int nic = Integer.parseInt(request.getParameter("nic"));
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String age = request.getParameter("age");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("confirmPassword");

        if(Objects.equals(password, confirm_password)){
            user.setPassword(confirm_password);
        }else{
            System.out.println("password does not match");
        }

        user.setNic(nic);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setAge(age);
        user.setEmail(email);

        UserDao userDao = new UserDao();
        boolean successUser = userDao.addUser(user);

        if(successUser){
            System.out.println("User added Success");
        }else{
            System.out.println("User not added");
        }

    }
}
