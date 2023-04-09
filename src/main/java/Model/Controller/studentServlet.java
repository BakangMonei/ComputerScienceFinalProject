package Model.Controller;

import Model.Database.MainDatabase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "studentServlet", value = "/studentServlet")
public class studentServlet extends HttpServlet {
    // Calling the Database
    MainDatabase DB = new MainDatabase();

    // super constructor
    public studentServlet(){
        super();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String email = request.getParameter("email");
        String id = request.getParameter("id");

        String sub1 = request.getParameter("subject1");
        String sub2 = request.getParameter("subject2");
        String sub3 = request.getParameter("subject3");
        String sub4 = request.getParameter("subject4");
        String sub5 = request.getParameter("subject5");
        String sub6 = request.getParameter("subject6");
        String sub7 = request.getParameter("subject7");
        String sub8 = request.getParameter("subject8");

        //
        int m1 = Integer.parseInt(request.getParameter("mark1"));
        int m2 = Integer.parseInt(request.getParameter("mark2"));
        int m3 = Integer.parseInt(request.getParameter("mark3"));
        int m4 = Integer.parseInt(request.getParameter("mark4"));
        int m5 = Integer.parseInt(request.getParameter("mark5"));
        int m6 = Integer.parseInt(request.getParameter("mark6"));
        int m7 = Integer.parseInt(request.getParameter("mark7"));
        int m8 = Integer.parseInt(request.getParameter("mark8"));

        try{
            if(DB.searchStudentLastId() == 0){
                DB.registerMarks(email, Integer.parseInt(id), sub1, m1,
                        sub2, m2,
                        sub3, m3,
                        sub4, m4,
                        sub5, m5,
                        sub6, m6,
                        sub7, m7,
                        sub8, m8);
            }else {
                DB.registerMarks(email, Integer.parseInt(id), sub1, m1, sub2, m2, sub3, m3, sub4, m4, sub5, m5, sub6, m6, sub7, m7, sub8, m8);
            }
            getServletContext().getRequestDispatcher("/student_dashboard.jsp").forward(request, response);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
