package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Blob;
import java.sql.SQLException;
/**
 *
 * @author Sami
 */
import entity.Admin_Essential_Info;

public class Admin_Essential_Info_DAO {// StartAdmin_Essential_Info_DAO Class.

    public boolean adminLogin(String username, String password) {// adminLogin() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT admin_id,admin_password FROM admin_essential_info WHERE admin_id='" + username + "' AND admin_password='" + password + "'";
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
    }// adminLogin() Method End.

    public boolean adminaActive(String username) {// adminaActive() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String status = "1";
        String sql = "SELECT admin_status FROM admin_essential_info WHERE admin_id='" + username + "' AND admin_status='" + status + "'";
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
    }// adminaActive() Method End.

    public Admin_Essential_Info getAdmin_Essential_Info(String username) {// getAdmin_Essential_Info() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT * FROM admin_essential_info WHERE admin_id='" + username + "'";
        Admin_Essential_Info admin_essential_info = new Admin_Essential_Info();
        Blob img = null;
        byte[] imgdata = null;
        String b64 = "";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String admin_id = rs.getString("admin_id");
                String admin_name = rs.getString("admin_name");
                String admin_email = rs.getString("admin_email");
                String admin_password = rs.getString("admin_password");
                String admin_gender = rs.getString("admin_gender");
                img = rs.getBlob("admin_picture");
                if (img != null) {
                    imgdata = img.getBytes(1, (int) img.length());//Convert To Byte.
                    b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(imgdata);//Convert To String.
                }
                String admin_picture = b64;
                String admin_status = rs.getString("admin_status");
                admin_essential_info = new Admin_Essential_Info(admin_id, admin_name, admin_email, admin_password, admin_gender,
                        admin_picture, admin_status);
            }//while Loop End.
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin_essential_info;
    }// getAdmin_Essential_Info() Method End.

    public boolean adminCheck(String username) {// adminCheck() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT admin_id FROM admin_essential_info WHERE admin_id='" + username + "'";
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
    }// adminCheck() Method End.

    public void adminRegistration(String username, String name, String email, String password, String gender) {// adminRegistration() Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "INSERT INTO admin_essential_info"
                + "(admin_id, admin_name, admin_email, admin_password, admin_gender) VALUES"
                + "(?, ?, ?, ?, ?)";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, name);
            pst.setString(3, email);
            pst.setString(4, password);
            pst.setString(5, gender);
            pst.executeUpdate();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }// adminRegistration() Method End.

}// End Admin_Essential_Info_DAO Class.
