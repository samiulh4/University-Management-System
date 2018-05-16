<%@page import="entity.Admin_Essential_Info"%>
<%@page import="dao.Admin_Essential_Info_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String admin_id = (String) session.getAttribute("admin_id");
    Admin_Essential_Info_DAO admin_essential_dao = new Admin_Essential_Info_DAO();
    Admin_Essential_Info admin_essential_info = admin_essential_dao.getAdmin_Essential_Info(admin_id);
%>
<!DOCTYPE html>
<html><!-- Start Of HTML Tag -->
    <head><!-- Head Tag Start -->
        <title>University Management System - Admin Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Tab Logo -->
        <link rel="shortcut icon" type="image/png" href="images/university_logo.png" />
        <!-- CSS Links -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Javascript Links -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head><!-- Head Tag End -->
    <body><!-- Body Tag Start -->
        <div class="container"><!-- Main Container Div Start -->
            <!------------------------------------------------ Header Section Start ----------------------------------------------------->
            <nav class="navbar navbar-default"><!-- Navigation Bar Start -->
                <div class="container-fluid"><!-- Nav Bar Container Div Start -->
                    <div class="navbar-header"><!-- Nav Bar Header Div Start -->
                        <a class="navbar-brand" href="index.jsp">University Management System</a>
                    </div><!-- Nav Bar Header Div End -->
                    <ul class="nav navbar-nav pull-right"><!-- Menu Items Start -->
                        <div class="btn-group show-on-hover"><!-- Student Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b>Student&nbsp;</b><span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="student_status.jsp">Student Status</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Option</a></li>
                                <li class="divider"></li>
                                <li><a href="logoff.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                            </ul>
                        </div><!-- Student Drop-Down Div End -->
                        <div class="btn-group show-on-hover"><!-- User Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b><%=admin_essential_info.getAdmin_name()%>&nbsp;</b><span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#"><span class="glyphicon glyphicon-edit"></span> Edit Profile</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Option</a></li>
                                <li class="divider"></li>
                                <li><a href="logoff.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                            </ul>
                        </div><!-- User Drop-Down Div End -->
                    </ul><!-- Menu Items End -->
                </div><!-- Nav Bar Container Div End -->
            </nav><!-- Navigation Bar End -->
            <!------------------------------------------------ Header Section End ----------------------------------------------------->
            <!---------------------------------------------- Profile Section Start ------------------------------------------------>
            <div class="panel panel-default"><!-- Profile Panel Div Start -->
                <div class="panel-heading"><!-- Profile Panel Heading Div Start -->
                    <h4>Admin Profile</h4>
                </div><!-- Profile Panel Heading Div End -->
                <div class="panel-body"><!-- Profile Panel Body Div Start -->
                    <div class="container-fluid"><!-- Profile Container Div Start -->
                        <div class="row"><!-- Profile Row Div Start -->
                            <div class="col-md-6"><!-- Picture Column Start -->
                                <img src="data:image;base64,<%=admin_essential_info.getAdmin_picture()%>" alt="Profile Picture" class="img-thumbnail custom img-responsive" width="256px" height="256px" id="profile_pic" />    
                            </div><!-- Picture Column End -->
                            <div class="col-md-6"><!-- User Details Column Start -->
                                <div class="table-responsive"><!-- User Details Table Start -->
                                    <table class="table table-bordered table-hover table-condensed">
                                        <tbody>
                                            <tr><td>ID :&nbsp;<%=admin_essential_info.getAdmin_id()%></td></tr>
                                            <tr><td>Name :&nbsp;<%=admin_essential_info.getAdmin_name()%></td></tr>
                                            <tr><td>E-Mail :&nbsp;<%=admin_essential_info.getAdmin_email()%></td></tr>
                                            <tr><td>Gender :&nbsp;<%=admin_essential_info.getAdmin_gender()%></td></tr>
                                        </tbody>
                                    </table>
                                </div><!-- User Details Table End --> 
                            </div><!-- User Details Column End -->
                        </div><!-- Profile Row Div End -->
                    </div><!-- Profile Container Div End -->
                </div><!-- Profile Panel Body Div End -->  
            </div><!-- Profile Panel Div End -->
            <!---------------------------------------------- Profile Section End ----------------==-------------------------------->
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>
            <div class="well">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>
            <!---------------------------------------------- Footer Section End -------------------------------------------------->
        </div><!-- Main Container Div Start -->
    </body><!-- Body Tag End -->
</html><!-- End Of HTML Tag -->
