package controller;

import dao.Student_Essential_Info_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Student_Activation extends HttpServlet {

    private Student_Essential_Info_DAO student_essential_dao;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {// processRequest Method Start.
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String error = null;
        String url = null;
        String success = null;
        try {
            String[] student_id = request.getParameterValues("deactive_student_id");
            student_essential_dao = new Student_Essential_Info_DAO();
            for (int i = 0; i < student_id.length; i++) {
                student_essential_dao.activateStudent(student_id[i]);
            }
            success = "Student Activation Successfully." + "" + "<br/>[<a href='student_status.jsp'>Back</a>]";
            request.setAttribute("success", success);
            url = "/success.jsp";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (Exception e) {
            error = "Student Activation Is Failed For " + "[ " + e.toString() + " ]" + "<br/>[<a href='student_status.jsp'>Back</a>]";
            request.setAttribute("error", error);
            url = "/error.jsp";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        }

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

}
