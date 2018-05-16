package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insert_005froutine_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Student Information System - Routine Insertion</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <!-- Tab Logo -->\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/png\" href=\"images/university_logo.png\" />\n");
      out.write("        <!-- CSS Links -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- Javascript Links -->\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <!-- Body Tag Start -->\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\"><!-- Main Container Div Start -->\n");
      out.write("            <!------------------------------------------------ Header Section Start ----------------------------------------------------->\n");
      out.write("            <nav class=\"navbar navbar-default\"><!-- Navigation Bar Start -->\n");
      out.write("                <div class=\"container-fluid\"><!-- Nav Bar Container Div Start -->\n");
      out.write("                    <div class=\"navbar-header\"><!-- Nav Bar Header Div Start -->\n");
      out.write("                        <a class=\"navbar-brand\" href=\"home.jsp\">Student Information System</a>\n");
      out.write("                    </div><!-- Nav Bar Header Div End -->\n");
      out.write("                    <ul class=\"nav navbar-nav pull-right\"><!-- Menu Items Start -->\n");
      out.write("                        <div class=\"btn-group show-on-hover\"><!-- Login Drop-Down Div Start -->\n");
      out.write("                            <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" style=\"margin-top:10px\">\n");
      out.write("                                <b>Login&nbsp;</b><span class=\"caret\"></span>\n");
      out.write("                            </button>\n");
      out.write("                            <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                <li><a href=\"admin_login.jsp\">Admin Login</a></li>\n");
      out.write("                                <li class=\"divider\"></li>\n");
      out.write("                                <li><a href=\"teacher_login.jsp\">Teacher Login</a></li>\n");
      out.write("                                <li class=\"divider\"></li>\n");
      out.write("                                <li><a href=\"student_login.jsp\">Student Login</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div><!-- Login Drop-Down Div End -->\n");
      out.write("                    </ul><!-- Menu Items End -->\n");
      out.write("                </div><!-- Nav Bar Container Div End -->\n");
      out.write("            </nav><!-- Navigation Bar End -->\n");
      out.write("            <!------------------------------------------------ Header Section End ----------------------------------------------------->\n");
      out.write("            <!---------------------------------------------- Registration Section Start ------------------------------------------------>\n");
      out.write("            <div class=\"panel panel-default\"><!-- Panel Div Start -->\n");
      out.write("                <div class=\"panel-heading\"><!-- Panel Heading Div Start -->\n");
      out.write("                    <h2>Admin Registration</h2>\n");
      out.write("                </div><!-- Panel Heading Div End -->\n");
      out.write("                <div class=\"panel-body\"><!-- Panel Body Div Start -->\n");
      out.write("                    <div style=\"max-width:600px;margin:0 auto;\">\n");
      out.write("                        ");
if (request.getAttribute("error") != null) {
      out.write("\n");
      out.write("                        <p style=\"color:red;\">");
      out.print(request.getAttribute("error"));
      out.write("</p>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                        <form class=\"form-horizontal\" role=\"form\" action=\"Admin_Registration\" method=\"POST\"><!-- Form Tag Start -->\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"username\" name=\"username\" placeholder=\"Username\" required=\"true\"/>\n");
      out.write("                            </div><br/>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"name\" name=\"name\" placeholder=\"Name\" required=\"true\"/>\n");
      out.write("                            </div><br/>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"email\" name=\"email\" placeholder=\"E-Mail\" required=\"true\"/>\n");
      out.write("                            </div><br/>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" id=\"password\" name=\"password\" placeholder=\"Password\" required=\"true\"/>\n");
      out.write("                            </div><br/>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <span class=\"input-group-addon\"></span>\n");
      out.write("                                <select class=\"form-control\" id=\"gender\" name=\"gender\" required=\"true\">\n");
      out.write("                                    <option value=\"\">Select Gender</option>\n");
      out.write("                                    <option value=\"male\">Male</option>\n");
      out.write("                                    <option value=\"female\">Female</option>\n");
      out.write("                                    <option value=\"other\">Other</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div><br/>\n");
      out.write("                            <button type=\"submit\" name=\"registration\" class=\"btn btn-primary\"><i class=\"glyphicon glyphicon-registration-mark\"></i>&nbsp;Register</button>\n");
      out.write("                        </form><!-- Form Tag End -->\n");
      out.write("                    </div>\n");
      out.write("                </div><!-- Panel Heading Div End -->\n");
      out.write("            </div><!-- Panel Div End -->\n");
      out.write("            <!---------------------------------------------- Registration Section End ------------------------------------------------>\n");
      out.write("            <!---------------------------------------------- Footer Section Start ------------------------------------------------>\n");
      out.write("            <div class=\"well\">\n");
      out.write("                <h4 style=\"text-align:center\">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>\n");
      out.write("            </div>\n");
      out.write("            <!---------------------------------------------- Footer Section End -------------------------------------------------->\n");
      out.write("        </div><!-- Main Container Div Start -->    \n");
      out.write("    </body>\n");
      out.write("    <!-- Body Tag End -->\n");
      out.write("</html>\n");
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
