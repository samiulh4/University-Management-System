
package dao;

import entity.Courses_Registration;
import entity.Student_Essential_Info;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Courses_Registration_DAO {
    public List<Courses_Registration> getCoursesRegistrationByTeacher(String teacherId){/** getCoursesRegistrationByTeacher() Method Start. **/
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT * FROM courses_registration WHERE teacher_id='" + teacherId + "'";
        List<Courses_Registration> coursesRegistration = new ArrayList<>();
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                   int registration_id= rs.getInt("registration_id");
                   String department_id= rs.getString("department_id");
                   String course_id= rs.getString("course_id");
                   String teacher_id= rs.getString("teacher_id");
                   String student_batch= rs.getString("student_batch");
                   String student_section= rs.getString("student_section");
                   String semester_id= rs.getString("semester_id");
                   String registration_year= rs.getString("registration_year");
                   coursesRegistration.add(new Courses_Registration(registration_id,department_id,course_id,teacher_id,student_batch,student_section,
                   semester_id,registration_year));
            }//while Loop End.
            conn.close();
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return coursesRegistration;
    }/** getCoursesRegistrationByTeacher() Method End. **/
    
}
