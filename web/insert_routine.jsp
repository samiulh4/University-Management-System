<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>University Management System - Routine Insertion</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Tab Logo -->
        <link rel="shortcut icon" type="image/png" href="images/university_logo.png" />
        <!-- CSS Links -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Javascript Links -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            function hello() {
                // var x = document.getElementById("sel1").value;
                //document.getElementById("demo").innerHTML = "You selected: " + x;
                //alert(x);
            }
        </script>
    </head>
    <!-- Body Tag Start -->
    <body>
        <div class="container"><!-- Main Container Div Start -->
            <!------------------------------------------------ Header Section Start ----------------------------------------------------->
            <nav class="navbar navbar-default"><!-- Navigation Bar Start -->
                <div class="container-fluid"><!-- Nav Bar Container Div Start -->
                    <div class="navbar-header"><!-- Nav Bar Header Div Start -->
                        <a class="navbar-brand" href="index.jsp">University Management System</a>
                    </div><!-- Nav Bar Header Div End -->
                    <ul class="nav navbar-nav pull-right"><!-- Menu Items Start -->
                        <div class="btn-group show-on-hover"><!-- Login Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b>Login&nbsp;</b><span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="admin_login.jsp">Admin Login</a></li>
                                <li class="divider"></li>
                                <li><a href="teacher_login.jsp">Teacher Login</a></li>
                                <li class="divider"></li>
                                <li><a href="student_login.jsp">Student Login</a></li>
                            </ul>
                        </div><!-- Login Drop-Down Div End -->
                    </ul><!-- Menu Items End -->
                </div><!-- Nav Bar Container Div End -->
            </nav><!-- Navigation Bar End -->
            <!------------------------------------------------ Header Section End ----------------------------------------------------->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <!---------------------------------------------- Insertion Form Section Start ------------------------------------------------>
                        <!-- Panel Div Start -->
                        <div class="panel panel-default">
                            <div class="panel-heading"><!-- Panel Heading Div Start -->
                                <h2>Routine Insertion</h2>
                            </div><!-- Panel Heading Div End -->
                            <div class="panel-body"><!-- Panel Body Div Start -->
                                <!--<div style="max-width:600px;margin:0 auto;">-->
                                <%if (request.getAttribute("error") != null) {%>
                                <p style="color:red;"><%=request.getAttribute("error")%></p>
                                <%}%>
                                <form class="form-horizontal" role="form" action="Admin_Registration" method="POST"><!-- Form Tag Start -->
                                    <div class="input-group">
                                        <span class="input-group-addon"><label for="sel1">Select Course :</label></span>
                                        <select class="form-control" id="sel1" name="course_code" onchange="hello()">
                                            <option>Select Course</option>
                                            <option value="CSE-101,35th,A">CSE-101,35th,A</option>
                                            <option value="CSE-102,35th,A">CSE-102,35th,A</option>
                                            <option value="CSE-103,35th,A">CSE-103,35th,A</option>
                                            <option value="CSE-104,35th,A">CSE-104,35th,A</option>
                                        </select>
                                    </div>
                                    <br/>
                                    <div class="input-group">
                                        <span class="input-group-addon"><label for="sel2">Select Day :</label></span>
                                        <select class="form-control" id="sel2" name="course_code">
                                            <option>--Select Day--</option>
                                            <option>Saturday</option>
                                            <option>Sunday</option>
                                            <option>Monday</option>
                                            <option>Tuesday</option>
                                        </select>
                                    </div>
                                    <br/>
                                    <div class="input-group">
                                        <span class="input-group-addon"><label for="sel3">Select Time :</label></span>
                                        <select class="form-control" id="sel3" name="course_code">
                                            <option></option>
                                            <option>9.30-11.00</option>
                                            <option>11.30-1.00</option>
                                            <option>1.30-3.00</option>
                                            <option>3.30-5.00</option>
                                        </select>
                                    </div>
                                    <br/>
                                    <button type="submit" name="registration" class="btn btn-group-justified"><i class="glyphicon glyphicon-registration-mark"></i>&nbsp;Register</button>
                                </form><!-- Form Tag End -->
                                <!--</div>-->
                            </div><!-- Panel Heading Div End -->
                        </div>
                        <!-- Panel Div End -->            
                        <!---------------------------------------------- Insertion Form Section End ------------------------------------------------>
                        <div class="panel panel-default">
                            <div class="panel-heading"><!-- Panel Heading Div Start -->
                                <h2>Notification</h2>
                            </div><!-- Panel Heading Div End -->
                            <div class="panel-body"><!-- Panel Body Div Start -->
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-6">
                        <!---------------------------------------------- Show Available Time & Room Section Start ------------------------------------------------>
                        <div class="panel panel-default">
                            <div class="panel-heading"><!-- Panel Heading Div Start -->
                                <h2>Show Available Time</h2>
                            </div><!-- Panel Heading Div End -->
                            <div class="panel-body"><!-- Panel Body Div Start -->
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-condensed">
                                        <tbody>
                                            <tr>
                                                <th>Saturday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Sunday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Monday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Tuesday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Wednesday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Thursday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Friday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>    
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading"><!-- Panel Heading Div Start -->
                                <h2>Show Available Room</h2>
                            </div><!-- Panel Heading Div End -->
                            <div class="panel-body"><!-- Panel Body Div Start -->
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-condensed">
                                        <tbody>
                                            <tr>
                                                <th>Saturday</th>
                                                <td>401</td>
                                                <td>402</td>
                                                <td>403</td>
                                                <td>404</td>
                                            </tr>
                                            <tr>
                                                <th>Sunday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Monday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Tuesday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Wednesday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Thursday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                            <tr>
                                                <th>Friday</th>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                                <td>09.30-11.00</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>    
                        </div>
                        <!---------------------------------------------- Show Available Time & Room Section End -------------------------------------------------->
                    </div>
                </div>
            </div>
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>
            <div class="well">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>
            <!---------------------------------------------- Footer Section End -------------------------------------------------->
        </div><!-- Main Container Div Start -->    
    </body>
    <!-- Body Tag End -->
</html>
