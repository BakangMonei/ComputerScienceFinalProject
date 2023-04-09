package Model.Controller;

import Beans.programmeCourse;
import Model.Database.MainDatabase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "rateProgramServlet", value = "/rateProgramServlet")
public class rateProgramServlet extends HttpServlet {
    // Super Constructors
    public rateProgramServlet(){
        super();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = String.valueOf(request.getRequestURL());

        String separator ="_";
        int sepPos = url.indexOf(separator);
        if (sepPos == -1) {
            System.out.println("");
        }
        int courseSelected = Integer.parseInt(url.substring(sepPos + separator.length()));
        programmeCourse myCourse = new programmeCourse();
        MainDatabase DB = new MainDatabase();

        try {
            ResultSet res = DB.getCourseById(courseSelected);
            if(res.next()){
                myCourse.setId(res.getInt("id"));
                myCourse.setName(res.getString("courseName"));
                myCourse.setInstitution(res.getString("institute"));
                myCourse.setYop(res.getString("yop"));
                myCourse.setRate(res.getInt("rate"));
                myCourse.setImgurl(res.getString("imgurl"));

                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("program", myCourse);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        response.sendRedirect(request.getContextPath() + "/program_details.jsp");
    }
}
