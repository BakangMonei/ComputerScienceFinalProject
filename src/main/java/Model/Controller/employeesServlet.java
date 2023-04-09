package Model.Controller;

import Model.Database.MainDatabase;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

@WebServlet(name = "employeesServlet", value = "/employeesServlet")
public class employeesServlet extends HttpServlet {
    // Calling the Database
    MainDatabase DB = new MainDatabase();

    // Super Constructor
    public employeesServlet(){
        super();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        try {
            if(DB.searchEmployeeLastId() == 0){
                DB.registerEmployee(DB.searchEmployeeLastId()  + 1, firstName, lastName, email, String.valueOf(generatePassword(8)), Integer.parseInt(phone), address);
            }else {
                DB.registerEmployee(DB.searchEmployeeLastId() + 1, firstName, lastName, email, String.valueOf(generatePassword(8)), Integer.parseInt(phone), address);
            }
            getServletContext().getRequestDispatcher("/admin_dashboard.jsp").forward(request, response);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/admin_view_employee.jsp").forward(request, response);
    }

    private static char[] generatePassword(int length) {
        String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
        String specialCharacters = "!@#$";
        String numbers = "1234567890";
        String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
        Random random = new Random();
        char[] password = new char[length];

        password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
        password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
        password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
        password[3] = numbers.charAt(random.nextInt(numbers.length()));


        for(int i = 4; i< length ; i++) {
            password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
        }
        return password;
    }
}
