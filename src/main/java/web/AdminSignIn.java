package web;
import dao.AdminDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;
import models.AdminModel;

@WebServlet("/addAdmin")
public class AdminSignIn extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response){
        try{
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            AdminModel adminModel = new AdminModel();
            AdminDao adminDao = new AdminDao();

            boolean isAuthenticated = adminDao.signInAdmin(email,password);
            if(isAuthenticated){
                HttpSession session = request.getSession();
                session.setAttribute("adminEmail",email);
                response.sendRedirect("index.jsp");
            }else{
                response.sendRedirect("adminLogIn.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
}
