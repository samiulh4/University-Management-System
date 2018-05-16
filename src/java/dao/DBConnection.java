package dao;

/**
 *
 * @author Sami
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {//Class Start.

    public static Connection MySqlConnection() {//MySqlConnection() Method Start.
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university_management_system", "root", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;

    }//MySqlConnection() Method End.

    public static void main(String[] args) {//Main Method Start.
        System.out.println(MySqlConnection());
    }//Main Method End.
}//Class End.
