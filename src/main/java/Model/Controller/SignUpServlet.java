package Model.Controller;

import Model.Database.MainDatabase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SignUpServlet", value = "/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    MainDatabase DB = new MainDatabase();

    public SignUpServlet(){
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String[] genre = request.getParameterValues("genre");
        String[] genreSelected = new String[3];

        for (int x = 0; x < 3; x++){
            if (genre[x]!=null){
                genreSelected[x] = genre[x];
            }
        }

        try {
            if(DB.searchStudentLastId() == 0){
                DB.registerStudent(DB.searchStudentLastId() + 1, firstName, lastName, email, password, genreSelected[0], genreSelected[1], genreSelected[2]);
            }else {
                DB.registerStudent(DB.searchStudentLastId() + 1, firstName, lastName, email, password, genreSelected[0], genreSelected[1], genreSelected[2]);
            }
            getServletContext().getRequestDispatcher("/admin_dashboard.jsp").forward(request, response);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /**
         * Forward req and res
         * getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
         *
         * Redirect to another URL
         * Eg 1 - response.sendRedirect("https://www.google.com/");
         * Eg 2 - response.sendRedirect("/#");
         */

        getServletContext().getRequestDispatcher("/signUp.jsp").forward(request, response);
    }
}
