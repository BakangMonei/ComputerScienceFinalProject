package Model.Controller;

import Model.Database.MainDatabase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "universityServlet", value = "/universityServlet")
public class universityServlet extends HttpServlet {
    // Calling the Database
    MainDatabase DB = new MainDatabase();

    // super constructor
    public universityServlet(){
        super();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw=response.getWriter();
        response.setContentType("text/html");
        String Name = request.getParameter("universityName");
        String Location = request.getParameter("location");
        try {
            if(DB.searchInstituteLastId() == 0){
                DB.registerInstitute(DB.searchInstituteLastId()  + 1, Name, Location);
            }else {
                DB.registerInstitute(DB.searchInstituteLastId()  + 1, Name, Location);
            }
            getServletContext().getRequestDispatcher("/admin_dashboard.jsp").forward(request, response);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
