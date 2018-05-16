package controller;

import dao.Student_Essential_Info_DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Student_Login extends HttpServlet {

    private Student_Essential_Info_DAO student_essential_dao = new Student_Essential_Info_DAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {// processRequest() Method Start.
        //response.setContentType("text/html;charset=UTF-8");
        //PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String error = "";
        String url = "";
        if ((username.equals("") || password.equals("")) || (username == "" || password == "")) {
            error = "Please Fill Out Username & Password.";
            request.setAttribute("error", error);
            url = "/student_login.jsp";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        } else {
            if (student_essential_dao.studentLogin(username, password) == true) {
                if (student_essential_dao.studentActive(username) == true) {
                    try {
                        HttpSession session = request.getSession();
                        session.setAttribute("student_id", username);//Student Session Created.
                        response.sendRedirect("student_profile.jsp");

                    } catch (Exception e) {
                        error = e.toString();
                        request.setAttribute("error", error);
                        url = "/student_login.jsp";
                        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                        rd.forward(request, response);
                    }
                }//3rd If End.
                else {
                    error = "Please Active Your Account.";
                    request.setAttribute("error", error);
                    url = "/student_login.jsp";
                    RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                    rd.forward(request, response);

                }// 3rd else end.
            }//2nd IF End.
            else {
                error = "Username Or Password Incorrect.";
                request.setAttribute("error", error);
                url = "/student_login.jsp";
                RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                rd.forward(request, response);
            }// 2nd Else End.
        }// 1st Else End. 

    }// processRequest() Method End.

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
