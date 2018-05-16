package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

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
      out.write("                </div><!-- Nav Bar Container Div End -->\n");
      out.write("            </nav><!-- Navigation Bar End -->\n");
      out.write("            <!------------------------------------------------ Header Section End ----------------------------------------------------->\n");
      out.write("            <!---------------------------------------------- Error Section Start ------------------------------------------------>\n");
      out.write("            <div class=\"panel panel-default\"><!-- Panel Div Start -->\n");
      out.write("                <div class=\"panel-heading\"><!-- Panel Heading Div Start -->\n");
      out.write("                    <h2>Message - Error</h2>\n");
      out.write("                </div><!-- Panel Heading Div End -->\n");
      out.write("                <div class=\"panel-body\"><!-- Panel Body Div Start -->\n");
      out.write("                    ");
if (request.getAttribute("error") != null) {
      out.write("\n");
      out.write("                    <h4 style=\"color:red;\">");
      out.print(request.getAttribute("error"));
      out.write("</h4>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </div><!-- Panel Heading Div End -->\n");
      out.write("            </div><!-- Panel Div End -->\n");
      out.write("            <!---------------------------------------------- Error Section End ------------------------------------------------>\n");
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
