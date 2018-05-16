<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- Start Of HTML Tag -->
    <head><!-- Head Tag Start -->
        <title>Student Information System - Admin Login</title>
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
                        <a class="navbar-brand" href="home.jsp">Student Information System</a>
                    </div><!-- Nav Bar Header Div End -->
                    <ul class="nav navbar-nav pull-right"><!-- Menu Items Start -->
                        <div class="btn-group show-on-hover"><!-- Login Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b>Login&nbsp;</b><span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Student Login</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Teacher Login</a></li>
                            </ul>
                        </div><!-- Login Drop-Down Div End -->
                        <div class="btn-group show-on-hover"><!-- Registration Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b>Registration&nbsp;</b><span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="admin_registration.jsp">Admin Registration</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Teacher Registration</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Student Registration</a></li>
                            </ul>
                        </div><!-- Registration Drop-Down Div End -->
                    </ul><!-- Menu Items End -->
                </div><!-- Nav Bar Container Div End -->
            </nav><!-- Navigation Bar End -->
            <!------------------------------------------------ Header Section End ----------------------------------------------------->
            <!---------------------------------------------- Login Section Start ------------------------------------------------>
            <div class="panel panel-default"><!-- Panel Div Start -->
                <div class="panel-heading"><!-- Panel Heading Div Start -->
                    <h2>Admin Login</h2>
                </div><!-- Panel Heading Div End -->
                <div class="panel-body"><!-- Panel Body Div Start -->
                    <div style="max-width:600px;margin:0 auto;">
                        <%if (request.getAttribute("error") != null) {%>
                        <p style="color:red;"><%=request.getAttribute("error")%></p>
                        <%}%>
                        <form action="Admin_Login" method="POST"><!-- Form Tag Start -->
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Username"/>
                            </div><br/>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Password"/>
                            </div><br/>
                            <button type="submit" name="login" class="btn btn-success">Login</button>
                        </form><!-- Form Tag End -->
                    </div>
                </div><!-- Panel Heading Div End -->
            </div><!-- Panel Div End -->
            <!---------------------------------------------- Login Section End ------------------------------------------------>
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>
            <div class="well">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>
            <!---------------------------------------------- Footer Section End -------------------------------------------------->
        </div><!-- Main Container Div Start -->
    </body><!-- Body Tag End -->
</html><!-- End Of HTML Tag -->
