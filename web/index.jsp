<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- Start Of HTML Tag -->
    <head><!-- Head Tag Start -->
        <title>Student Information System - Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Tab Logo -->
        <link rel="shortcut icon" type="image/png" href="images/university_logo.png" />
        <!-- CSS Links -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/index.css" >
        <!-- Javascript Links -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/index.min.js"></script>
    </head><!-- Head Tag End -->
    <body><!-- Body Tag Start -->
        <div class="container"><!-- Main Container Div Start -->
            <nav class="navbar navbar-default" role="navigation"><!-- Navigation Bar Start -->
                <div class="container-fluid bgimage"><!-- Nav Bar Container Div Start -->
                    <div class="navbar-header"><!-- Nav Bar Header Div Start -->
                        <a class="navbar-brand" href="https://en.wikipedia.org/wiki/Student_information_system">Student Information System</a>
                    </div><!-- Nav Bar Header Div End -->
                    <ul class="nav navbar-nav pull-right"><!-- Menu Items Start -->
                        <div class="btn-group show-on-hover"><!-- Registration Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b>Registration&nbsp;</b><span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="admin_registration.jsp">Admin Registration</a></li>
                                <li class="divider"></li>
                                <li><a href="teacher_registration.jsp">Teacher Registration</a></li>
                                <li class="divider"></li>
                                <li><a href="student_registration.jsp">Student Registration</a></li>
                            </ul>
                        </div><!-- Registration Drop-Down Div End -->
                    </ul><!-- Menu Items End -->
                </div><!-- Nav Bar Container Div End -->
            </nav><!-- Navigation Bar End -->
            <!------------------------------------------------------- Slide Gallery Start --------------------------------------------------------------->
            <div class="jumbotron bgimage"><!-- Jumbotron Div Start -->
                <div class="container-fluid"><!-- Slider Container Div Start -->
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner"><!-- carousel-inner Div Start -->
                            <div class="item active">
                                <img src="images/cover01.jpg" style="width:100%;max-height:350px;">
                                <div class="carousel-caption">
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/cover02.jpg" style="width:100%;max-height:350px;">
                                <div class="carousel-caption">
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/cover03.png" style="width:100%;max-height:350px;">
                                <div class="carousel-caption">
                                </div>
                            </div>
                        </div><!-- carousel-inner Div End -->
                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>    
                </div><!-- Slider Container Div End -->
            </div><!-- Jumbotron Div End -->
            <!------------------------------------------------------- Slide Gallery End --------------------------------------------------------------->        
            <!------------------------------------------------------- Content Section Start ---------------------------------------------------------------> 
            <h3 class="text-center">Student Information System Login Portal</h3>
            <div class="container-fluid thumbs bgimage"><!-- Thumbs Container Div Start -->
                <div class="col-sm-6 col-md-4"><!-- Admin Div Start -->
                    <div class="thumbnail"><!-- Admin Thumbnail Div Start -->
                        <img src="images/admin_avatar.png" alt="Admin Avatar" class="img-circle img-responsive" id="" />
                        <div class="caption"><!--Admin Caption Div Start -->
                            <h3 class="text-center">Admin</h3>
                            <p>This Is Admin Login.</p>
                            <div class="btn-toolbar text-center"><!-- Admin Login Form Button Div Start -->
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#adminWindow">Login</button>
                                <div class="modal fade" id="adminWindow"><!-- Admin Login Form Div Start -->
                                    <div class="modal-dialog"><!-- Modal Dialog Div Start -->
                                        <div class="modal-content"><!-- Modal Content Div Start -->
                                            <div class="modal-header"><!-- Modal Header Start -->
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h2 class="modal-title">Admin Login</h2> 
                                            </div><!-- Modal Header End -->
                                            <form  role="form" method="POST" action="Admin_Login"><!-- Admin Form Tag Start -->
                                                <div class="modal-body"><!-- Modal Body Start -->
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                        <input type="text" class="form-control" id="username" name="username" placeholder="Username"/>
                                                    </div><br/><br/>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" /> 
                                                    </div><br/><br/>
                                                </div><!-- Modal Body End -->
                                                <div class="modal-footer"><!-- Modal Footer Start -->
                                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                                </div><!-- Modal Footer End -->
                                            </form><!-- Admin Form Tag End -->
                                        </div><!-- Modal Content Div End -->
                                    </div><!-- Modal Dialog Div Start -->
                                </div><!-- Admin Login Form Div End -->
                            </div><!-- Admin Login Form Button Div End -->
                        </div><!--Admin Caption Div Start -->
                    </div><!-- Admin Thumbnail Div End -->
                </div><!-- Admin Div End -->
                <div class="col-sm-6 col-md-4"><!-- Teacher Div Start -->
                    <div class="thumbnail"><!-- Teacher Thumbnail Div Start -->
                        <img src="images/teacher_avatar.png" alt="Teacher Avatar" class="img-circle img-responsive" id="" />
                        <div class="caption"><!--Teacher Caption Div Start -->
                            <h3 class="text-center">Teacher</h3>
                            <p>This Is Teacher Login.</p>
                            <div class="btn-toolbar text-center"><!-- Teacher Login Form Button Div Start -->
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#teacherWindow">Login</button>
                                <div class="modal fade" id="teacherWindow"><!-- Teacher Login Form Div Start -->
                                    <div class="modal-dialog"><!-- Modal Dialog Div Start -->
                                        <div class="modal-content"><!-- Modal Content Div Start -->
                                            <div class="modal-header"><!-- Modal Header Start -->
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h2 class="modal-title">Teacher Login</h2> 
                                            </div><!-- Modal Header End -->
                                            <form  role="form" method="POST" action="Teacher_Login"><!-- Teacher Form Tag Start -->
                                                <div class="modal-body"><!-- Modal Body Start -->
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                        <input type="text" class="form-control" id="username" name="username" placeholder="Username"/>
                                                    </div><br/><br/>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" /> 
                                                    </div><br/><br/>
                                                </div><!-- Modal Body End -->
                                                <div class="modal-footer"><!-- Modal Footer Start -->
                                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                                </div><!-- Modal Footer End -->
                                            </form><!-- Teacher Form Tag End -->
                                        </div><!-- Teacher Content Div End -->
                                    </div><!-- Modal Dialog Div Start -->
                                </div><!-- Teacher Login Form Div End -->
                            </div><!-- Teacher Login Form Button Div End -->
                        </div><!--Teacher Caption Div Start -->
                    </div><!-- Teacher Thumbnail Div End -->
                </div><!-- Teacher Div End -->
                <div class="col-sm-6 col-md-4"><!-- Student Div Start -->
                    <div class="thumbnail"><!-- Student Thumbnail Div Start -->
                        <!--<img src="images/student_avatar.png"  class="img-circle">-->
                        <img src="images/student_avatar.png" alt="Student Avatar" class="img-circle img-responsive" id="" />
                        <div class="caption"><!-- Student Caption Div Start -->
                            <h3 class="text-center">Student</h3>
                            <p>This Is Student Login.</p>
                            <div class="btn-toolbar text-center"><!-- Student Login Form Button Div Start -->
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#studentWindow">Login</button>
                                <div class="modal fade" id="studentWindow"><!-- Student Login Form Div Start -->
                                    <div class="modal-dialog"><!-- Modal Dialog Div Start -->
                                        <div class="modal-content"><!-- Modal Content Div Start -->
                                            <div class="modal-header"><!-- Modal Header Start -->
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h2 class="modal-title">Student Login</h2> 
                                            </div><!-- Modal Header End -->
                                            <form  role="form" method="POST" action="Student_Login"><!-- Student Form Tag Start -->
                                                <div class="modal-body"><!-- Modal Body Start -->
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                        <input type="text" class="form-control" id="username" name="username" placeholder="Username"/>
                                                    </div><br/><br/>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" /> 
                                                    </div><br/><br/>
                                                </div><!-- Modal Body End -->
                                                <div class="modal-footer"><!-- Modal Footer Start -->
                                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                                </div><!-- Modal Footer End -->
                                            </form><!-- Student Form Tag End -->
                                        </div><!-- Modal Content Div End -->
                                    </div><!-- Modal Dialog Div Start -->
                                </div><!-- Student Login Form Div End -->
                            </div><!-- Student Login Form Button Div End -->
                        </div><!--Student Caption Div Start -->
                    </div><!-- Student Thumbnail Div End -->
                </div><!-- Student Div Start -->
            </div><!-- Thumbs Container Div End -->
            <!------------------------------------------------------- Content Section End --------------------------------------------------------------->
            <br/>
            <!------------------------------------------------------- Description Section Start --------------------------------------------------------------->
            <div class="container-fluid bgimage"><!-- Description Container Div Start -->
                <h3 class="text-center">Welcome To Student Information System</h3>
                <p class="text-capitalize">
                    A Student Information System (SIS) is a management information system for education establishments to manage student data.
                    Student Information Systems provide capabilities For :</p>
                <ul class="list-group">
                    <li class="list-group-item">Student Registration</li>
                    <li class="list-group-item">Courses Registration</li>
                    <li class="list-group-item">Transcripts</li>
                    <li class="list-group-item">Student Result</li>
                    <li class="list-group-item">other assessment scores</li>
                    <li class="list-group-item"> building student schedules</li>
                    <li class="list-group-item">tracking student attendance</li>
                </ul>
                <p class="text-capitalize">
                And managing many other This System-Related data needs in an Instiation.
                A SIS should not be confused with a learning management system or virtual learning environment, where course materials, assignments and assessment tests can be published electronically.
                The SIS sub module Of University Management System. 
                </p>
            </div><!-- Description Container Div End -->
            <!------------------------------------------------------- Description Section End --------------------------------------------------------------->
            <br/>
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>
            <div class="well bgimage">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>
            <!---------------------------------------------- Footer Section End -------------------------------------------------->
        </div><!-- Main Container Div End -->
    </body><!-- Body Tag End -->
</html><!-- End Of HTML Tag -->
