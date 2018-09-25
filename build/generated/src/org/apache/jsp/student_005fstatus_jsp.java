package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.Department_DAO;
import java.util.List;
import dao.Student_Essential_Info_DAO;
import entity.Student_Essential_Info;

public final class student_005fstatus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Student_Essential_Info student_essential_info = new Student_Essential_Info();
    Student_Essential_Info_DAO student_essential_dao = new Student_Essential_Info_DAO();
    List<Student_Essential_Info> student_de = student_essential_dao.getDeactivaStudent();
    List<Student_Essential_Info> student_ac = student_essential_dao.getActivaStudent();
    Department_DAO department_dao = new Department_DAO();

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html><!-- Start Of HTML Tag -->\n");
      out.write("    <head><!-- Head Tag Start -->\n");
      out.write("        <title>University Management System - Student Status</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <!-- Tab Logo -->\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/png\" href=\"images/university_logo.png\" />\n");
      out.write("        <!-- CSS Links -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- Javascript Links -->\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/student_status.js\"></script>\n");
      out.write("    </head><!-- Head Tag End -->\n");
      out.write("    <body><!-- Body Tag Start -->\n");
      out.write("        <div class=\"container\"><!-- Main Container Div Start -->\n");
      out.write("            <!------------------------------------------------ Header Section Start ----------------------------------------------------->\n");
      out.write("            <nav class=\"navbar navbar-default\"><!-- Navigation Bar Start -->\n");
      out.write("                <div class=\"container-fluid\"><!-- Nav Bar Container Div Start -->\n");
      out.write("                    <div class=\"navbar-header\"><!-- Nav Bar Header Div Start -->\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.jsp\">University Management System</a>\n");
      out.write("                    </div><!-- Nav Bar Header Div End -->\n");
      out.write("                    <ul class=\"nav navbar-nav pull-right\"><!-- Menu Items Start -->\n");
      out.write("                        <div class=\"btn-group show-on-hover\"><!-- User Drop-Down Div Start -->\n");
      out.write("                            <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" style=\"margin-top:10px\">\n");
      out.write("                                <b>Admin Name&nbsp;</b><span class=\"caret\"></span>\n");
      out.write("                            </button>\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                <li><a href=\"#\"><span class=\"glyphicon glyphicon-edit\"></span> Edit Profile</a></li>\n");
      out.write("                                <li class=\"divider\"></li>\n");
      out.write("                                <li><a href=\"#\">Option</a></li>\n");
      out.write("                                <li class=\"divider\"></li>\n");
      out.write("                                <li><a href=\"logoff.jsp\"><span class=\"glyphicon glyphicon-log-out\"></span> Logout</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div><!-- User Drop-Down Div End -->\n");
      out.write("                    </ul><!-- Menu Items End -->\n");
      out.write("                </div><!-- Nav Bar Container Div End -->\n");
      out.write("            </nav><!-- Navigation Bar End -->\n");
      out.write("            <!------------------------------------------------ Header Section End ----------------------------------------------------->\n");
      out.write("            <!------------------------------------------------ Active Account Search Section Start ----------------------------------------------------->\n");
      out.write("            <div class=\"panel panel-default\"><!-- Panel Div Start -->\n");
      out.write("                <div class=\"panel-heading\"><!-- Panel Heading Div Start -->\n");
      out.write("                    <h3>Search For Active Student</h3>\n");
      out.write("                </div><!-- Panel Heading Div End -->\n");
      out.write("                <div class=\"panel-body\"><!-- Panel Body Div Start -->\n");
      out.write("                    <form role=\"form\" action=\"\" method=\"POST\">\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"student_id1\" name=\"student_id1\" placeholder=\"Student ID\"/>\n");
      out.write("                            <span class=\"input-group-addon\" onclick=\"searchActiveStudent()\"><i class=\"glyphicon glyphicon-search\"></i></span><!-- searchActiveStudent, searchstudentactivation-->\n");
      out.write("                        </div><br/>\n");
      out.write("                        <div class=\"table-responsive\"><!-- Search Active Account Table Div Start -->\n");
      out.write("                            <table id=\"table1\" class=\"table table-bordered table-hover table-condensed\">\n");
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                        </div><!-- Search Active Account Table Div Start -->\n");
      out.write("                        <button type=\"submit\" name=\"deactive\" class=\"btn btn-danger\">Deactive</button>\n");
      out.write("                    </form>\n");
      out.write("                </div><!-- Panel Body Div End -->\n");
      out.write("            </div><!-- Panel Div End -->\n");
      out.write("            <!------------------------------------------------ Active Account Search Section End ----------------------------------------------------->\n");
      out.write("            <!------------------------------------------------ Active Account Table Section Start ----------------------------------------------------->\n");
      out.write("            <div class=\"panel panel-default\"><!-- Active Account Panel Div Start -->\n");
      out.write("                <div class=\"panel-heading\" role=\"tab\" id=\"headingOne\"><!-- Active Account Panel Heading Div Start -->\n");
      out.write("                    <h4 class=\"panel-title\">\n");
      out.write("                        <a role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#active_student\" aria-expanded=\"true\" aria-controls=\"active_student\">\n");
      out.write("                            <i class=\"glyphicon glyphicon-plus\"></i>\n");
      out.write("                            Active Student\n");
      out.write("                        </a>\n");
      out.write("                    </h4>\n");
      out.write("                </div><!-- Active Account Panel Heading Div End -->\n");
      out.write("                <div id=\"active_student\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingOne\"><!-- Active Account ID Div Start -->\n");
      out.write("                    <div class=\"panel-body\"><!-- Active Account Panel Body Div Start -->\n");
      out.write("                        <div class=\"container-fluid\"><!-- Active Account Container Div Start -->\n");
      out.write("                            <!--<div style=\"max-height:600px;margin:0 auto;\"><!-- Active Account Size Div Start -->\n");
      out.write("                            <div class=\"table-responsive\"><!-- Active Account Table Div Start -->\n");
      out.write("                                <form role=\"form\" action=\"Student_Deactivation\" method=\"POST\"><!-- Form Tag Start -->\n");
      out.write("                                    <table class=\"table table-bordered table-hover table-condensed\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Index</th>\n");
      out.write("                                                <th>ID</th>\n");
      out.write("                                                <th>Name</th>\n");
      out.write("                                                <th>Batch</th>\n");
      out.write("                                                <th>Section</th>\n");
      out.write("                                                <th>Department</th>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                            ");
for (int i = 0; i < student_ac.size(); i++) {
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"checkbox\">\n");
      out.write("                                                        <label><input type=\"checkbox\" id=\"active_student_id\" name=\"active_student_id\" value=\"");
      out.print(student_ac.get(i).getStudent_id());
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>");
      out.print(student_ac.get(i).getStudent_id());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(student_ac.get(i).getStudent_name());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(student_ac.get(i).getStudent_batch());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(student_ac.get(i).getStudent_section());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(department_dao.getDepartmentName(student_ac.get(i).getDepartment_id()));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
}
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                    <button type=\"submit\" name=\"deactive2\" class=\"btn btn-info\">Deactive</button>\n");
      out.write("                                </form><!-- Form Tag End -->\n");
      out.write("                            </div><!-- Active Account Table Div End -->\n");
      out.write("                            <!--</div><!-- Active Account Size Div Start -->\n");
      out.write("                        </div><!-- Active Account Container Div End -->\n");
      out.write("                    </div><!-- Active Account Panel Body Div End -->\n");
      out.write("                </div><!-- Active Account ID Div End -->\n");
      out.write("            </div><!-- Active Account Panel Div End -->\n");
      out.write("            <!------------------------------------------------ Active Account Table Section End ----------------------------------------------------->\n");
      out.write("            <!------------------------------------------------ Deactive Account Search Section Start ----------------------------------------------------->\n");
      out.write("            <div class=\"panel panel-default\"><!-- Panel Div Start -->\n");
      out.write("                <div class=\"panel-heading\"><!-- Panel Heading Div Start -->\n");
      out.write("                    <h3>Search For Deactive Student</h3>\n");
      out.write("                </div><!-- Panel Heading Div End -->\n");
      out.write("                <div class=\"panel-body\"><!-- Panel Body Div Start -->\n");
      out.write("                    <form role=\"form\" action=\"\" method=\"POST\">\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"student_id2\" name=\"student_id2\" placeholder=\"Student ID\"/>\n");
      out.write("                            <span class=\"input-group-addon\" onclick=\"searchDeactiveStudent()\"><i class=\"glyphicon glyphicon-search\"></i></span>\n");
      out.write("                        </div><br/>\n");
      out.write("                        <div class=\"table-responsive\"><!-- Search Deactive Account Table Div Start -->\n");
      out.write("                            <table id =\"table2\" class=\"table table-bordered table-hover table-condensed\">\n");
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                        </div><!-- Search Deactive Account Table Div Start -->\n");
      out.write("                        <button type=\"submit\" name=\"active1\" class=\"btn btn-info\">Active</button>\n");
      out.write("                    </form>\n");
      out.write("                </div><!-- Panel Body Div End -->\n");
      out.write("            </div><!-- Panel Div End -->\n");
      out.write("            <!------------------------------------------------ Deactive Account Search Section End ----------------------------------------------------->\n");
      out.write("            <!------------------------------------------------ Deactive Account Table Section Start ----------------------------------------------------->\n");
      out.write("            <div class=\"panel panel-default\"><!-- Deactive Account Panel Div Start -->\n");
      out.write("                <div class=\"panel-heading\" role=\"tab\" id=\"headingTwo\"><!-- Deactive Account Panel Heading Div Start -->\n");
      out.write("                    <h4 class=\"panel-title\">\n");
      out.write("                        <a role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#deactive_student\" aria-expanded=\"true\" aria-controls=\"deactive_student\">\n");
      out.write("                            <i class=\"glyphicon glyphicon-plus\"></i>\n");
      out.write("                            Deactive Student\n");
      out.write("                        </a>\n");
      out.write("                    </h4>\n");
      out.write("                </div><!-- Deactive Account Panel Heading Div End -->\n");
      out.write("                <div id=\"deactive_student\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingTwo\"><!-- Deactive Account ID Div Start -->\n");
      out.write("                    <div class=\"panel-body\"><!-- Deactive Account Panel Body Div Start -->\n");
      out.write("                        <div class=\"container-fluid\"><!-- Deactive Account Container Div Start -->\n");
      out.write("                            <!--<div style=\"max-height:600px;margin:0 auto;\"><!-- Deactive Account Size Div Start -->\n");
      out.write("                            <div class=\"table-responsive\"><!-- Deactive Account Table Div Start -->\n");
      out.write("                                <form role=\"form\" action=\"Student_Activation\" method=\"POST\"><!-- Form Tag Start -->\n");
      out.write("                                    <table class=\"table table-bordered table-hover table-condensed\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Index</th>\n");
      out.write("                                                <th>ID</th>\n");
      out.write("                                                <th>Name</th>\n");
      out.write("                                                <th>Batch</th>\n");
      out.write("                                                <th>Section</th>\n");
      out.write("                                                <th>Department</th>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                            ");
for (int i = 0; i < student_de.size(); i++) {
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"checkbox\">\n");
      out.write("                                                        <label><input type=\"checkbox\" id=\"deactive_student_id\" name=\"deactive_student_id\" value=\"");
      out.print(student_de.get(i).getStudent_id());
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>");
      out.print(student_de.get(i).getStudent_id());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(student_de.get(i).getStudent_name());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(student_de.get(i).getStudent_batch());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(student_de.get(i).getStudent_section());
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(department_dao.getDepartmentName(student_de.get(i).getDepartment_id()));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");
}
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                    <button type=\"submit\" name=\"active2\" class=\"btn btn-danger\">Active</button>\n");
      out.write("                                </form><!-- Form Tag End -->\n");
      out.write("                            </div><!-- Deactive Account Table Div End -->\n");
      out.write("                            <!--</div><!-- Deactive Account Size Div Start -->\n");
      out.write("                        </div><!-- Deactive Account Container Div End -->\n");
      out.write("                    </div><!-- Deactive Account Panel Body Div End -->\n");
      out.write("                </div><!-- Deactive Account ID Div End -->\n");
      out.write("            </div><!-- Deactive Account Panel Div End -->\n");
      out.write("            <!------------------------------------------------ Deactive Account Table Section End ----------------------------------------------------->\n");
      out.write("            <!---------------------------------------------- Footer Section Start ------------------------------------------------>\n");
      out.write("            <div class=\"well\">\n");
      out.write("                <h4 style=\"text-align:center\">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>\n");
      out.write("            </div>\n");
      out.write("            <!---------------------------------------------- Footer Section End -------------------------------------------------->\n");
      out.write("        </div><!-- Main Container Div Start -->\n");
      out.write("    </body><!-- Body Tag End -->\n");
      out.write("</html><!-- End Of HTML Tag -->");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
