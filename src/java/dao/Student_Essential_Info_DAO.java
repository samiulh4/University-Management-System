package dao;

import entity.Student_Essential_Info;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sami
 */
public class Student_Essential_Info_DAO {// Student_Essential_Info_DAO Class Start.

    public List<Student_Essential_Info> getDeactivaStudent() {// getDeactivaStudent() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String status = "0";
        String sql = "SELECT * FROM student_essential_info WHERE student_status='" + status + "'";
        List<Student_Essential_Info> student_essential_info = new ArrayList<>();
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String student_id = rs.getString("student_id");
                String student_name = rs.getString("student_name");
                String student_email = rs.getString("student_email");
                String student_password = rs.getString("student_password");
                String student_gender = rs.getString("student_gender");
                String student_batch = rs.getString("student_batch");
                String department_id = rs.getString("department_id");
                String student_section = rs.getString("student_section");
                String student_picture = rs.getString("student_picture");
                String student_status = rs.getString("student_status");
                String degree_id = rs.getString("degree_id");

                student_essential_info.add(new Student_Essential_Info(student_id, student_name, student_email, student_password, student_gender, student_batch,
                        department_id, student_section, student_picture, student_status, degree_id));

            }//while Loop End.
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student_essential_info;
    }// getDeactivaStudent() Method End.

    public List<Student_Essential_Info> getActivaStudent() {// getActivaStudent() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String status = "1";
        String sql = "SELECT * FROM student_essential_info WHERE student_status='" + status + "'";
        List<Student_Essential_Info> student_essential_info = new ArrayList<>();
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String student_id = rs.getString("student_id");
                String student_name = rs.getString("student_name");
                String student_email = rs.getString("student_email");
                String student_password = rs.getString("student_password");
                String student_gender = rs.getString("student_gender");
                String student_batch = rs.getString("student_batch");
                String department_id = rs.getString("department_id");
                String student_section = rs.getString("student_section");
                String student_picture = rs.getString("student_picture");
                String student_status = rs.getString("student_status");
                String degree_id = rs.getString("degree_id");

                student_essential_info.add(new Student_Essential_Info(student_id, student_name, student_email, student_password, student_gender, student_batch,
                        department_id, student_section, student_picture, student_status, degree_id));

            }//while Loop End.
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student_essential_info;
    }// getActivaStudent() Method End.

    public Student_Essential_Info getStudent_Essential_Info(String username) {// getStudent_Essential_Info() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT * FROM student_essential_info WHERE student_id='" + username + "'";
        Student_Essential_Info student_essential_info = new Student_Essential_Info();
        Blob img = null;
        byte[] imgdata = null;
        String b64 = "";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String student_id = rs.getString("student_id");
                String student_name = rs.getString("student_name");
                String student_email = rs.getString("student_email");
                String student_password = rs.getString("student_password");
                String student_gender = rs.getString("student_gender");
                String student_batch = rs.getString("student_batch");
                String department_id = rs.getString("department_id");
                String student_section = rs.getString("student_section");
                img = rs.getBlob("student_picture");
                if (img != null) {
                    imgdata = img.getBytes(1, (int) img.length());//Convert To Byte.
                    b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(imgdata);//Convert To String.
                }
                String student_picture = b64;
                String student_status = rs.getString("student_status");
                String degree_id = rs.getString("degree_id");
                student_essential_info = new Student_Essential_Info(student_id, student_name, student_email, student_password, student_gender,
                        student_batch, department_id, student_section, student_picture, student_status, degree_id);
            }//while Loop End.
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student_essential_info;
    }// getStudent_Essential_Info() Method End.

    public boolean studentLogin(String username, String password) {// studentLogin() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT student_id,student_password FROM student_essential_info WHERE student_id='" + username + "' AND student_password='" + password + "'";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                return true;
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }// studentLogin() Method End.

    public boolean studentActive(String username) {// studentActive() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String status = "1";
        String sql = "SELECT student_status FROM student_essential_info WHERE student_id='" + username + "' AND student_status='" + status + "'";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                return true;
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }// studentActive() Method End.

    public void activateStudent(String id) {// activateStudent() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String status = "1";
        String sql = "UPDATE student_essential_info SET student_status = ? WHERE student_id = ?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, status);
            pst.setString(2, id);
            pst.executeUpdate();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }// activateStudent() Method End.

    public void deactivateStudent(String id) {// deactivateStudent() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String status = "0";
        String sql = "UPDATE student_essential_info SET student_status = ? WHERE student_id = ?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, status);
            pst.setString(2, id);
            pst.executeUpdate();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }// deactivateStudent() Method End.
}// Student_Essential_Info_DAO Class End.
