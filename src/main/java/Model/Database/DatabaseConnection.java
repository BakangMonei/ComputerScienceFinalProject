package Model.Database;

import java.sql.*;


public class DatabaseConnection {
    public Connection connection;
    public PreparedStatement preparedStatement;
    public Statement statement;

    public DatabaseConnection() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sethunyagabana", "root", "MoneiBakang@959115515");
            statement = connection.createStatement();
        }
        catch (SQLException e){
            System.out.println(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public Connection getConnection(String s) {
        return null;
    }
}