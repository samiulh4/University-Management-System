package dao;

import entity.Student_Educational_Info;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Student_Educational_Info_DAO {

    public Student_Educational_Info getStudent_Educational_Info(String student_username) {// getStudent_Educational_Info Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT * FROM student_educational_info WHERE student_id='" + student_username + "'";
        Student_Educational_Info student_educational_info = new Student_Educational_Info();
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String student_id = rs.getString("student_id");
                String ssc_name = rs.getString("ssc_name");
                String ssc_major = rs.getString("ssc_major");
                String ssc_institution = rs.getString("ssc_institution");
                String ssc_result = rs.getString("ssc_result");
                String ssc_passyear = rs.getString("ssc_passyear");
                String ssc_session = rs.getString("ssc_session");
                String hsc_name = rs.getString("hsc_name");
                String hsc_major = rs.getString("hsc_major");
                String hsc_institution = rs.getString("hsc_institution");
                String hsc_result = rs.getString("hsc_result");
                String hsc_passyear = rs.getString("hsc_passyear");
                String hsc_session = rs.getString("hsc_session");
                String hons_name = rs.getString("hons_name");
                String hons_major = rs.getString("hons_major");
                String hons_institution = rs.getString("hons_institution");
                String hons_result = rs.getString("hons_result");
                String hons_passyear = rs.getString("hons_passyear");
                String hons_session = rs.getString("hons_session");

                student_educational_info = new Student_Educational_Info(student_id, ssc_name, ssc_major, ssc_institution, ssc_result, ssc_passyear,
                        ssc_session, hsc_name, hsc_major, hsc_institution, hsc_result, hsc_passyear, hsc_session,
                        hons_name, hons_major, hons_institution, hons_result, hons_passyear, hons_session);

            }// If Statement Close.
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return student_educational_info;
    }// getStudent_Educational_Info Start.
}
