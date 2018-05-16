package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import dao.Admin_Essential_Info_DAO;

/**
 *
 * @author Sami
 */
public class Admin_Login extends HttpServlet {

    private Admin_Essential_Info_DAO admin_essential_dao = new Admin_Essential_Info_DAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {// processRequest() Method Start.
        //response.setContentType("text/html;charset=UTF-8");
        //PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String error = "";
        String url = "";
        // out.println("Username:" + username + "<br/>");
        //out.println("Password:" + password + "<br/>");
        if ((username.equals("") || password.equals("")) || (username == "" || password == "")) {
            error = "Please Fill Out Username & Password.";
            request.setAttribute("error", error);
            url = "/admin_login.jsp";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        } else {
            if (admin_essential_dao.adminLogin(username, password) == true) {
                if (admin_essential_dao.adminaActive(username) == true) {
                    try {
                        HttpSession session = request.getSession();
                        session.setAttribute("admin_id", username);//Student Session Created.
                        response.sendRedirect("admin_profile.jsp");

                    } catch (Exception e) {
                        error = e.toString();
                        request.setAttribute("error", error);
                        url = "/admin_login.jsp";
                        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                        rd.forward(request, response);
                    }
                }//3rd If End.
                else {
                    error = "Please Active Your Account.";
                    request.setAttribute("error", error);
                    url = "/admin_login.jsp";
                    RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                    rd.forward(request, response);

                }// 3rd else end.
            }//2nd IF End.
            else {
                error = "Username Or Password Incorrect.";
                request.setAttribute("error", error);
                url = "/admin_login.jsp";
                RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                rd.forward(request, response);
            }// 2nd Else End.
        }// 1st Else End.
    }// processRequest() Method End.

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {// doGet() Method Start.
        processRequest(request, response);
    }// doGet() Method End.

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {// doPost() Method Start.
        processRequest(request, response);
    }// doPost() Method End.
}//Main Class End.
