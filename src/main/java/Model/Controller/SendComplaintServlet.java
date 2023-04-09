package Model.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SendComplaintServlet", value = "/SendComplaintServlet")
public class SendComplaintServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter pw = response.getWriter();
        response.setContentType("text/html");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String complaint = request.getParameter("complaint");

        if(email.isEmpty() || name.isEmpty() || complaint.isEmpty()){

        }
        else {
            response.sendRedirect(request.getContextPath() + "/student_dashboard.jsp");
        }
    }
}
