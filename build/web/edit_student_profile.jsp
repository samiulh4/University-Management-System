<%@page import="entity.Student_Educational_Info"%>
<%@page import="dao.Student_Educational_Info_DAO"%>
<%@page import="dao.Department_DAO"%>
<%@page import="entity.Student_Essential_Info"%>
<%@page import="dao.Student_Essential_Info_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String student_id = "201311035001";
    //String student_id = (String) session.getAttribute("student_id");
    Student_Essential_Info_DAO student_essential_dao = new Student_Essential_Info_DAO();
    Student_Essential_Info student_essential_info = student_essential_dao.getStudent_Essential_Info(student_id);
    Department_DAO department_dao = new Department_DAO();
    Student_Educational_Info_DAO student_educational_dao = new Student_Educational_Info_DAO();
    Student_Educational_Info student_educational_info = student_educational_dao.getStudent_Educational_Info(student_id);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>University Management System - Edit Student Profile</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="images/university_logo.png" />
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            var loadFile = function (event) {
                var reader = new FileReader();
                reader.onload = function () {
                    var output = document.getElementById('output');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            };
        </script>
    </head>
    <body>
        <!----- Starting Content --->
        <div class="container">
            <!---------------------------------------------- Header Section Start ------------------------------------------------>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">University Management System</a>
                    </div>
                    <ul class="nav navbar-nav pull-right"><!-- Menu Items Start -->


                        <li class="dropdown"><!-- Extra Drop Down Option Start -->
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%="Need Name"%> <span class="caret"></span></a>    
                            <ul class="dropdown-menu">
                                <li><a href="student_profile.jsp">Student Profile</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Academic Information</a></li>
                                <li><a href="#">Financial Information</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Teacher Evaluation</a></li>
                                <li><a href="#">Payment Slip</a></li>
                                <li class="divider"></li>

                                <li><a href="#"><span class="glyphicon glyphicon-upload"></span> Setting</a></li>
                                <li><a href="logoff.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                            </ul>
                        </li><!-- Extra Drop Down Option End -->
                    </ul><!-- Menu Items End -->
                </div>
            </nav>
            <!---------------------------------------------- Header Section End ------------------------------------------------>
            <ul class="nav nav-tabs"><!------------------ Tab Choose Set ID Start ------------------------>
                <li class="active"><a data-toggle="tab" href="#essential_info">Essential Information</a></li>
                <li class=""><a data-toggle="tab" href="#tab1">Educational Information</a></li>
                <li class=""><a data-toggle="tab" href="#tab2">Personal Information</a></li>
                <li class=""><a data-toggle="tab" href="#tab3">Contact/Address</a></li>
                <li class=""><a data-toggle="tab" href="#tab4">Photograph</a></li>
            </ul><!------------------ Tab Choose Set ID End ------------------------>
            <div class="tab-content"><!-- Tab Content Start --->
                <!------------------ Tab Content ------------------------>
                <div id="essential_info" class="tab-pane fade in active"><!-- Basic Information Tab Start --->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Essential Information</h4>
                        </div>
                        <div class="panel-body">
                            <form role="form" action="Update_Student_Essential_Info" method="POST">
                                <div class="input-group">
                                    <span class="input-group-addon"><b>ID</b></span>
                                    <input type="text" class="form-control" id="student_id" name="student_id" value="<%=student_essential_info.getStudent_id()%>" readonly/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Name</b></span>
                                    <input type="text" class="form-control" id="student_name" name="student_name" value="<%=student_essential_info.getStudent_name()%>"/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>E-Mail</b></span>
                                    <input type="text" class="form-control" id="student_email" name="student_email" value="<%=student_essential_info.getStudent_email()%>"/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Password</b></span>
                                    <input type="text" class="form-control" id="student_password" name="student_password" value="<%=student_essential_info.getStudent_password()%>"/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Gender</b></span>
                                    <input type="text" class="form-control" id="student_gender" name="student_gender" value="<%=student_essential_info.getStudent_gender()%>" readonly/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Batch</b></span>
                                    <input type="text" class="form-control" id="student_batch" name="student_batch" value="<%=student_essential_info.getStudent_batch()%>" readonly/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Department</b></span>
                                    <input type="text" class="form-control" id="department_id" name="department_id" value="<%=department_dao.getDepartmentName(student_essential_info.getDepartment_id())%>" readonly/>
                                </div><br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Section</b></span>
                                    <input type="text" class="form-control" id="student_section" name="student_section" value="<%=student_essential_info.getStudent_section()%>" readonly/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Status</b></span>
                                    <input type="text" class="form-control" id="student_status" name="student_status" value="<%=student_essential_info.getStudent_status()%>" />
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Degree</b></span>
                                    <input type="text" class="form-control" id="degree_id" name="degree_id" value="<%=student_essential_info.getDegree_id()%>" readonly/>
                                </div>
                                <br/>
                                <button type="submit" name="save_essential_info" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-save"></span>&nbsp;Save</button>
                            </form>
                        </div>
                    </div>
                </div><!-- Basic Information Tab End --->
                <div id="tab1" class="tab-pane fade"><!-- Educational Information Tab Start --->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Educational Information</h4>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <form role="form" action="" method="POST">
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
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="ssc_name" name="ssc_name" value="<%=student_educational_info.getSsc_name()%>" />
                                                    </div>  
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="ssc_major" name="ssc_major" value="<%=student_educational_info.getSsc_major()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="ssc_institution" name="ssc_institution" value="<%=student_educational_info.getSsc_institution()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="ssc_result" name="ssc_result" value="<%=student_educational_info.getSsc_result()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="ssc_passyear" name="ssc_passyear" value="<%=student_educational_info.getSsc_passyear()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="ssc_session" name="ssc_session" value="<%=student_educational_info.getSsc_session()%>" />
                                                    </div> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="hsc_name" name="hsc_name" value="<%=student_educational_info.getHsc_name()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="hsc_major" name="hsc_major" value="<%=student_educational_info.getHsc_major()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="hsc_institution" name="hsc_institution" value="<%=student_educational_info.getHsc_institution()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="hsc_result" name="hsc_result" value="<%=student_educational_info.getHsc_result()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="hsc_passyear" name="hsc_passyear" value="<%=student_educational_info.getHsc_passyear()%>" />
                                                    </div> 
                                                </td>
                                                <td>
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" id="hsc_session" name="hsc_session" value="<%=student_educational_info.getHsc_session()%>" />
                                                    </div> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="input-group"><input type="text" class="form-control" id="hons_name" name="hons_name" value="<%=student_educational_info.getHons_name()%>" /></div>
                                                </td>
                                                <td>
                                                    <div class="input-group"><input type="text" class="form-control" id="hons_major" name="hons_major" value="<%=student_educational_info.getHons_major()%>" /></div>
                                                </td>
                                                <td>
                                                    <div class="input-group"><input type="text" class="form-control" id="hons_institution" name="hons_institution" value="<%=student_educational_info.getHons_institution()%>" /></div>
                                                </td>
                                                <td>
                                                    <div class="input-group"><input type="text" class="form-control" id="hons_result" name="hons_result" value="<%=student_educational_info.getHons_result()%>"/></div>
                                                </td>
                                                <td>
                                                    <div class="input-group"><input type="text" class="form-control" id="hons_passyear" name="hons_passyear" value="<%=student_educational_info.getHons_passyear()%>" /></div>
                                                </td>
                                                <td>
                                                    <div class="input-group"><input type="text" class="form-control" id="hons_session" name="hons_session" value="<%=student_educational_info.getHons_session()%>" /></div>
                                                </td>
                                            </tr>
                                            <tr >
                                                <td colspan="6">
                                                    <button type="submit" name="save_essential_info" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-save"></span>&nbsp;Save</button>
                                                </td>
                                            </tr>   
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div><!-- Educational Information Tab End --->
                <div id="tab2" class="tab-pane fade "><!-- Personal Information Tab Start --->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Personal Information</h4>
                        </div>
                        <div class="panel-body">
                            <form action="" method="POST">
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Father's Name</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="MD. Sanaul Haque" />
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Mother's Name</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="Afruza Haque"/>
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Date Of Birth</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="19-11-1995" />
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Blood Group</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="B+" />
                                </div>
                                <br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Religious Views</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="Islam" />
                                </div>
                                <br/>
                                <button type="submit" name="save_basic_info" class="btn btn-info">Save</button>
                            </form>
                        </div>
                    </div>
                </div><!-- Personal Information Tab End --->
                <div id="tab3" class="tab-pane fade"><!-- Contact/Address Tab Start --->

                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <h4>Contact/Address</h4>
                        </div>
                        <div class="panel-body"><form action="" method="POST">
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Mobile NO.</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="01771083581" />
                                </div><br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Current Address</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="30/6,Babor Road, Dhaka-1027."/>
                                </div><br/>
                                <div class="input-group">
                                    <span class="input-group-addon"><b>Permanent Address</b></span>
                                    <input id="username" type="text" class="form-control" name="username" value="30/6,Babor Road, Dhaka-1027." />
                                </div><br/>
                                <button  class="btn btn-warning">
                                    <span class="glyphicon glyphicon-floppy-save"></span> Save 
                                </button>
                            </form>
                        </div>
                    </div>
                </div><!-- Contact/Address Tab End --->
                <div id="tab4" class="tab-pane fade"><!-- Photography Tab Start --->
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h4>Photography</h4>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <form action="SavePhoto"  id="f" method="post" enctype="multipart/form-data" name="">
                                    <center> <button class="btn btn-danger"><input type="file" class="form-control-file"  accept="image/*" onchange="loadFile(event)" id="photo" name="photo" size="50"></button></center><br/>
                                    <center> <img src="images/male.png" class="img-thumbnail custom img-responsive" width="256px" height="256px" id="output" /></center>
                                    <center> <button class="btn btn-danger">Upload Photography</button> </center><br>
                                </form>
                            </div>
                        </div>
                    </div>
                </div><!-- Photography Tab End --->
                <!------------------ Tab Content ------------------------>
            </div><!-- Tab Content End --->
            <!------------------ Tab Section End --------------------------------------->
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>

            <div class="well">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>

            <!---------------------------------------------- Footer Section End ------------------------------------------------>
        </div>
        <!----- Ending Content --->                    
    </body>
</html>

