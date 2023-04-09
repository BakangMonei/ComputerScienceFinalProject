package Model.Controller;

import Model.Database.MainDatabase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "deleteServlet", value = "/deleteServlet")
public class deleteServlet extends HttpServlet {

    MainDatabase DB = new MainDatabase();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw=response.getWriter();
        // Retrieve the ID value from the form submission
        int id = Integer.parseInt(request.getParameter("id"));

        // Connect to the database using JDBC
        String url = "jdbc:mysql://localhost:3306/sethunyagabana";
        String username = "root";
        String password = "MoneiBakang@959115515";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Prepare the DELETE statement
        String sql = "DELETE FROM student WHERE id=?";
        PreparedStatement stmt = null;
        try {
            stmt = conn.prepareStatement(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            stmt.setInt(1, id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Execute the statement
        try {
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Redirect the user back to the JSP page with a success message
        response.sendRedirect("admin_del_student.jsp?message=Record+deleted");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
