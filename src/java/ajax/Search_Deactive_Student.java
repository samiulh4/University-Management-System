package ajax;

import dao.Department_DAO;
import dao.Student_Essential_Info_DAO;
import entity.Student_Essential_Info;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Search_Deactive_Student extends HttpServlet {// Search_Active_Student Class Start.

    private Student_Essential_Info_DAO student_essential_dao;
    private Student_Essential_Info student_essential_info;
    private Department_DAO department_dao;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {// processRequest Method Start.

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String student_id = request.getParameter("student_id2");
        String status = null;
        if (student_id == null || student_id.trim().equals("")) {
            out.print("<thead>");
            out.print("<tr>");
            out.print("<th>Please Enter Student ID.</th>");
            out.print("</tr>");
            out.print("</thead>");
        } else {// Else Statement Start.
            student_essential_dao = new Student_Essential_Info_DAO();
            student_essential_info = student_essential_dao.getStudent_Essential_Info(student_id);
            department_dao = new Department_DAO();
            if (student_essential_dao.studentActive(student_id)) {
                out.print("<thead>");
                out.print("<tr>");
                out.print("<th style='color:red'>Student ID Not Found Or Not Deactive.</th>");
                out.print("</tr>");
                out.print("</thead>");
            } else {
                try {
                    out.print("<thead>");
                    out.print("<tr>");
                    out.print("<th>ID</th>");
                    out.print("<th>Name</th>");
                    out.print("<th>Batch</th>");
                    out.print("<th>Section</th>");
                    out.print("<th>Department</th>");
                    out.print("<th>Status</th>");
                    out.print("</tr>");
                    out.print("</thead>");
                    out.print("<tbody>");
                    out.print("<tr>");
                    out.print("<td>" + student_essential_info.getStudent_id() + "</td>");
                    out.print("<td>" + student_essential_info.getStudent_name() + "</td>");
                    out.print("<td>" + student_essential_info.getStudent_batch() + "</td>");
                    out.print("<td>" + student_essential_info.getStudent_section() + "</td>");
                    out.print("<td>" + department_dao.getDepartmentName(student_essential_info.getDepartment_id()) + "</td>");
                    if (student_essential_info.getStudent_status().equals("0")) {
                        status = "Deactive";
                    }
                    out.print("<td>" + status + "</td>");
                    out.print("</tr>");
                    out.print("</tbody>");
                } catch (Exception e) {
                    out.print(e.toString());
                }
            }//else end.

        }// Else Statement End.  

    }// processRequest Method End.

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}// Search_Active_Student Class End.
