<%@page import="entity.Student_Educational_Info"%>
<%@page import="dao.Student_Educational_Info_DAO"%>
<%@page import="dao.Department_DAO"%>
<%@page import="entity.Student_Essential_Info"%>
<%@page import="dao.Student_Essential_Info_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String student_id = (String) session.getAttribute("student_id");
    Student_Essential_Info_DAO student_essential_dao = new Student_Essential_Info_DAO();
    Student_Essential_Info student_essential_info = student_essential_dao.getStudent_Essential_Info(student_id);
    Department_DAO department_dao = new Department_DAO();
    Student_Educational_Info_DAO student_educational_dao = new Student_Educational_Info_DAO();
    Student_Educational_Info student_educational_info = student_educational_dao.getStudent_Educational_Info(student_id);
%>
<!DOCTYPE html>
<html><!-- Start Of HTML Tag -->
    <head><!-- Head Tag Start -->
        <title>Student Information System - Student Profile</title>
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
                        <div class="btn-group show-on-hover"><!-- User Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b><%=student_essential_info.getStudent_name()%>&nbsp;</b><span class="caret"></span>
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
                    <h4>Student Profile</h4>
                </div><!-- Profile Panel Heading Div End -->
                <div class="panel-body"><!-- Profile Panel Body Div Start -->
                    <div class="container-fluid"><!-- Profile Container Div Start -->
                        <div class="row"><!-- Profile Row Div Start -->
                            <div class="col-md-6"><!-- Picture Column Start -->
                                <img src="data:image;base64,<%=student_essential_info.getStudent_picture()%>" alt="Profile Picture" class="img-thumbnail custom img-responsive" width="256px" height="256px" id="profile_pic" />    
                            </div><!-- Picture Column End -->
                            <div class="col-md-6"><!-- User Details Column Start -->
                                <div class="table-responsive"><!-- User Details Table Start -->
                                    <table class="table table-bordered table-hover table-condensed">
                                        <tbody>
                                            <tr><td>ID :&nbsp;<%=student_essential_info.getStudent_id()%></td></tr>
                                            <tr><td>Name :&nbsp;<%=student_essential_info.getStudent_name()%></td></tr>
                                            <tr><td>Department :&nbsp;<%=department_dao.getDepartmentName(student_essential_info.getDepartment_id())%></td></tr>
                                            <tr><td>Batch :&nbsp;<%=student_essential_info.getStudent_batch()%></td></tr>
                                            <tr><td>Section :&nbsp;<%=student_essential_info.getStudent_section()%></td></tr>
                                            <tr><td>E-Mail :&nbsp;<%=student_essential_info.getStudent_email()%></td></tr>
                                            <tr><td>Gender :&nbsp;<%=student_essential_info.getStudent_gender()%></td></tr>
                                        </tbody>
                                    </table>
                                </div><!-- User Details Table End --> 
                            </div><!-- User Details Column End -->
                        </div><!-- Profile Row Div End -->
                    </div><!-- Profile Container Div End -->
                </div><!-- Profile Panel Body Div End -->  
            </div><!-- Profile Panel Div End -->
            <!---------------------------------------------- Profile Section End ----------------==-------------------------------->
            <!----------------------------------------------- Tab Section Start ----------------------------------------------------------------->
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#tab1">Educational Information</a></li>
                <li><a data-toggle="tab" href="#tab2">Personal Information</a></li>
                <li><a data-toggle="tab" href="#tab3">Contact/Address</a></li>
            </ul>
            <div class="tab-content"><!-- Tab Content Div Start --->
                <div id="tab1" class="tab-pane fade in active"><!-- Educational Information Tab Start --->
                    <div class="panel panel-default">
                        <!--<div class="container-fluid">-->
                        <div class="panel-heading">
                            <h4>Educational Information</h4>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Exam Title</th>
                                            <th>Major/Subject</th>
                                            <th>Institute</th>
                                            <th>Result</th>
                                            <th>Passing Year</th>
                                            <th>Session</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><%=student_educational_info.getSsc_name()%></td>
                                            <td><%=student_educational_info.getSsc_major()%></td>
                                            <td><%=student_educational_info.getSsc_institution()%></td>
                                            <td>GPA:<%=student_educational_info.getSsc_result()%> Out Of 5.00</td>
                                            <td><%=student_educational_info.getSsc_passyear()%></td>
                                            <td><%=student_educational_info.getSsc_session()%></td>
                                        </tr>
                                        <tr>
                                            <td><%=student_educational_info.getHsc_name()%></td>
                                            <td><%=student_educational_info.getHsc_major()%></td>
                                            <td><%=student_educational_info.getHsc_institution()%></td>
                                            <td>GPA:<%=student_educational_info.getHsc_result()%> Out Of 5.00</td>
                                            <td><%=student_educational_info.getHsc_passyear()%></td>
                                            <td><%=student_educational_info.getHsc_session()%></td>
                                        </tr>
                                        <tr>
                                            <td><%=student_educational_info.getHons_name()%></td>
                                            <td><%=student_educational_info.getHons_major()%></td>
                                            <td><%=student_educational_info.getHons_institution()%></td>
                                            <td>CGPA:<%=student_educational_info.getHons_result()%> Out Of 4.00</td>
                                            <td><%=student_educational_info.getHons_passyear()%></td>
                                            <td><%=student_educational_info.getHons_session()%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--</div>-->
                    </div>
                </div><!-- Educational Information Tab End --->
                <div id="tab2" class="tab-pane fade"><!-- Personal Information Tab Start --->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Personal Information</h4>
                        </div>
                        <div class="panel-body"
                             ><div class="table-responsive">
                                <table class="table table-bordered table-hover table-condensed">
                                    <tbody>
                                        <tr><td>National ID : MD. Sanaul Haque</td></tr>
                                        <tr><td>Father's Name : MD. Sanaul Haque</td></tr>
                                        <tr><td>Mother's Name : Afruza Haque</td></tr>
                                        <tr><td>Date Of Birth : 19-11-1995</td></tr>
                                        <tr><td>Blood Group : B+</td></tr>
                                        <tr><td>Religious Views : Islam</td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div><!-- Personal Information Tab End --->
                <div id="tab3" class="tab-pane fade"><!-- Contact/Address Tab Start --->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Contact/Address</h4>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-condensed">
                                    <tbody>
                                        <tr><td>Mobile NO. : 01771083581</td></tr>
                                        <tr><td>Current Address : 30/6,Babor Road, Dhaka-1027.</td></tr>
                                        <tr><td>Permanent Address : 30/6,Babor Road, Dhaka-1027.</td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div><!-- Contact/Address Tab End --->
            </div><!-- Tab Content Div End --->    
            <!--</div>-->
            <!----------------------------------------------- Tab Section End ----------------------------------------------------------------->
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>
            <div class="well">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>
            <!---------------------------------------------- Footer Section End -------------------------------------------------->
        </div><!-- Main Container Div Start -->
    </body><!-- Body Tag End -->
</html><!-- End Of HTML Tag -->
