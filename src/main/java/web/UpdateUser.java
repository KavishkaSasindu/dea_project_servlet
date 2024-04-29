package web;
import dao.UserDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import models.User;

@WebServlet("/update")
public class UpdateUser extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response){
        try{
            int id = Integer.parseInt(request.getParameter("userId"));
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email= request.getParameter("email");
            String age = request.getParameter("age");
            int nic = Integer.parseInt(request.getParameter("nic"));

            User user = new User();
            user.setId(id);
            user.setFirstName(firstname);
            user.setLastName(lastname);
            user.setEmail(email);
            user.setAge(age);
            user.setNic(nic);

            UserDao userDao = new UserDao();
            boolean isSuccess = userDao.updateUser(user);
            if(isSuccess){
                response.sendRedirect("adminAllUsers.jsp");
                System.out.println("update user success");
            }else{
                System.out.println("user not update");
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
