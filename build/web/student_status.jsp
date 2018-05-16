<%@page import="dao.Department_DAO"%>
<%@page import="java.util.List"%>
<%@page import="dao.Student_Essential_Info_DAO"%>
<%@page import="entity.Student_Essential_Info"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Student_Essential_Info student_essential_info = new Student_Essential_Info();
    Student_Essential_Info_DAO student_essential_dao = new Student_Essential_Info_DAO();
    List<Student_Essential_Info> student_de = student_essential_dao.getDeactivaStudent();
    List<Student_Essential_Info> student_ac = student_essential_dao.getActivaStudent();
    Department_DAO department_dao = new Department_DAO();
%>
<!DOCTYPE html>
<html><!-- Start Of HTML Tag -->
    <head><!-- Head Tag Start -->
        <title>University Management System - Student Status</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Tab Logo -->
        <link rel="shortcut icon" type="image/png" href="images/university_logo.png" />
        <!-- CSS Links -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Javascript Links -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/student_status.js"></script>
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
                        <div class="btn-group show-on-hover"><!-- User Drop-Down Div Start -->
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="margin-top:10px">
                                <b>Admin Name&nbsp;</b><span class="caret"></span>
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
            <!------------------------------------------------ Active Account Search Section Start ----------------------------------------------------->
            <div class="panel panel-default"><!-- Panel Div Start -->
                <div class="panel-heading"><!-- Panel Heading Div Start -->
                    <h3>Search For Active Student</h3>
                </div><!-- Panel Heading Div End -->
                <div class="panel-body"><!-- Panel Body Div Start -->
                    <form role="form" action="" method="POST">
                        <div class="input-group">
                            <input type="text" class="form-control" id="student_id1" name="student_id1" placeholder="Student ID"/>
                            <span class="input-group-addon" onclick="searchActiveStudent()"><i class="glyphicon glyphicon-search"></i></span><!-- searchActiveStudent, searchstudentactivation-->
                        </div><br/>
                        <div class="table-responsive"><!-- Search Active Account Table Div Start -->
                            <table id="table1" class="table table-bordered table-hover table-condensed">

                            </table>
                        </div><!-- Search Active Account Table Div Start -->
                        <button type="submit" name="deactive" class="btn btn-danger">Deactive</button>
                    </form>
                </div><!-- Panel Body Div End -->
            </div><!-- Panel Div End -->
            <!------------------------------------------------ Active Account Search Section End ----------------------------------------------------->
            <!------------------------------------------------ Active Account Table Section Start ----------------------------------------------------->
            <div class="panel panel-default"><!-- Active Account Panel Div Start -->
                <div class="panel-heading" role="tab" id="headingOne"><!-- Active Account Panel Heading Div Start -->
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#active_student" aria-expanded="true" aria-controls="active_student">
                            <i class="glyphicon glyphicon-plus"></i>
                            Active Student
                        </a>
                    </h4>
                </div><!-- Active Account Panel Heading Div End -->
                <div id="active_student" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne"><!-- Active Account ID Div Start -->
                    <div class="panel-body"><!-- Active Account Panel Body Div Start -->
                        <div class="container-fluid"><!-- Active Account Container Div Start -->
                            <!--<div style="max-height:600px;margin:0 auto;"><!-- Active Account Size Div Start -->
                            <div class="table-responsive"><!-- Active Account Table Div Start -->
                                <form role="form" action="Student_Deactivation" method="POST"><!-- Form Tag Start -->
                                    <table class="table table-bordered table-hover table-condensed">
                                        <thead>
                                            <tr>
                                                <th>Index</th>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Batch</th>
                                                <th>Section</th>
                                                <th>Department</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <%for (int i = 0; i < student_ac.size(); i++) {%>
                                            <tr>
                                                <td>
                                                    <div class="checkbox">
                                                        <label><input type="checkbox" id="active_student_id" name="active_student_id" value="<%=student_ac.get(i).getStudent_id()%>"><%=i%></label>
                                                    </div>
                                                </td>
                                                <td><%=student_ac.get(i).getStudent_id()%></td>
                                                <td><%=student_ac.get(i).getStudent_name()%></td>
                                                <td><%=student_ac.get(i).getStudent_batch()%></td>
                                                <td><%=student_ac.get(i).getStudent_section()%></td>
                                                <td><%=department_dao.getDepartmentName(student_ac.get(i).getDepartment_id())%></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
                                    <button type="submit" name="deactive2" class="btn btn-info">Deactive</button>
                                </form><!-- Form Tag End -->
                            </div><!-- Active Account Table Div End -->
                            <!--</div><!-- Active Account Size Div Start -->
                        </div><!-- Active Account Container Div End -->
                    </div><!-- Active Account Panel Body Div End -->
                </div><!-- Active Account ID Div End -->
            </div><!-- Active Account Panel Div End -->
            <!------------------------------------------------ Active Account Table Section End ----------------------------------------------------->
            <!------------------------------------------------ Deactive Account Search Section Start ----------------------------------------------------->
            <div class="panel panel-default"><!-- Panel Div Start -->
                <div class="panel-heading"><!-- Panel Heading Div Start -->
                    <h3>Search For Deactive Student</h3>
                </div><!-- Panel Heading Div End -->
                <div class="panel-body"><!-- Panel Body Div Start -->
                    <form role="form" action="" method="POST">
                        <div class="input-group">
                            <input type="text" class="form-control" id="student_id2" name="student_id2" placeholder="Student ID"/>
                            <span class="input-group-addon" onclick="searchDeactiveStudent()"><i class="glyphicon glyphicon-search"></i></span>
                        </div><br/>
                        <div class="table-responsive"><!-- Search Deactive Account Table Div Start -->
                            <table id ="table2" class="table table-bordered table-hover table-condensed">

                            </table>
                        </div><!-- Search Deactive Account Table Div Start -->
                        <button type="submit" name="active1" class="btn btn-info">Active</button>
                    </form>
                </div><!-- Panel Body Div End -->
            </div><!-- Panel Div End -->
            <!------------------------------------------------ Deactive Account Search Section End ----------------------------------------------------->
            <!------------------------------------------------ Deactive Account Table Section Start ----------------------------------------------------->
            <div class="panel panel-default"><!-- Deactive Account Panel Div Start -->
                <div class="panel-heading" role="tab" id="headingTwo"><!-- Deactive Account Panel Heading Div Start -->
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#deactive_student" aria-expanded="true" aria-controls="deactive_student">
                            <i class="glyphicon glyphicon-plus"></i>
                            Deactive Student
                        </a>
                    </h4>
                </div><!-- Deactive Account Panel Heading Div End -->
                <div id="deactive_student" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo"><!-- Deactive Account ID Div Start -->
                    <div class="panel-body"><!-- Deactive Account Panel Body Div Start -->
                        <div class="container-fluid"><!-- Deactive Account Container Div Start -->
                            <!--<div style="max-height:600px;margin:0 auto;"><!-- Deactive Account Size Div Start -->
                            <div class="table-responsive"><!-- Deactive Account Table Div Start -->
                                <form role="form" action="Student_Activation" method="POST"><!-- Form Tag Start -->
                                    <table class="table table-bordered table-hover table-condensed">
                                        <thead>
                                            <tr>
                                                <th>Index</th>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Batch</th>
                                                <th>Section</th>
                                                <th>Department</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <%for (int i = 0; i < student_de.size(); i++) {%>
                                            <tr>
                                                <td>
                                                    <div class="checkbox">
                                                        <label><input type="checkbox" id="deactive_student_id" name="deactive_student_id" value="<%=student_de.get(i).getStudent_id()%>"><%=i%></label>
                                                    </div>
                                                </td>
                                                <td><%=student_de.get(i).getStudent_id()%></td>
                                                <td><%=student_de.get(i).getStudent_name()%></td>
                                                <td><%=student_de.get(i).getStudent_batch()%></td>
                                                <td><%=student_de.get(i).getStudent_section()%></td>
                                                <td><%=department_dao.getDepartmentName(student_de.get(i).getDepartment_id())%></td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
                                    <button type="submit" name="active2" class="btn btn-danger">Active</button>
                                </form><!-- Form Tag End -->
                            </div><!-- Deactive Account Table Div End -->
                            <!--</div><!-- Deactive Account Size Div Start -->
                        </div><!-- Deactive Account Container Div End -->
                    </div><!-- Deactive Account Panel Body Div End -->
                </div><!-- Deactive Account ID Div End -->
            </div><!-- Deactive Account Panel Div End -->
            <!------------------------------------------------ Deactive Account Table Section End ----------------------------------------------------->
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>
            <div class="well">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>
            <!---------------------------------------------- Footer Section End -------------------------------------------------->
        </div><!-- Main Container Div Start -->
    </body><!-- Body Tag End -->
</html><!-- End Of HTML Tag -->