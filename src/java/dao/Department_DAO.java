
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Department_DAO {
     public String getDepartmentName(String department_id) {//getDepartmentName Method Start.
        Connection conn = DBConnection.MySqlConnection();
        String sql = "SELECT department_name FROM department WHERE department_id='" + department_id + "'";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String department_name = rs.getString("department_name");
                return department_name;
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;

    }//getDepartmentName Method End.
}
