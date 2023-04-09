package Model.Controller;


import Model.Database.MainDatabase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    MainDatabase DB = new MainDatabase();

    public LoginServlet(){
        super();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw=response.getWriter();
        response.setContentType("text/html");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            if(DB.verifyAdminLogin(email, password).next()){
                Cookie loginCk = new Cookie("email", email);
                loginCk.setMaxAge(60*5);
                response.addCookie(loginCk);
                response.sendRedirect(request.getContextPath() + "/admin_dashboard.jsp");
            }
            else if(DB.verifyEmployeeLogin(email, password).next()){
                Cookie loginCk = new Cookie("email", email);
                loginCk.setMaxAge(60*5);
                response.addCookie(loginCk);
                response.sendRedirect(request.getContextPath() + "/employee_dashboard.jsp");
            }
            else if(DB.verifyStudentLogin(email, password).next()){
                Cookie loginCk = new Cookie("email", email);
                loginCk.setMaxAge(60*5);
                response.addCookie(loginCk);
                response.sendRedirect(request.getContextPath() + "/student_dashboard.jsp");
            }
            else{
                response.sendRedirect(request.getContextPath() + "/try.jsp");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

