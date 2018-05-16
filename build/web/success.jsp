<!DOCTYPE html>
<html><!-- Start Of HTML Tag -->
    <head><!-- Head Tag Start -->
        <title>University Management System - Success</title>
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
                </div><!-- Nav Bar Container Div End -->
            </nav><!-- Navigation Bar End -->
            <!------------------------------------------------ Header Section End ----------------------------------------------------->
            <!---------------------------------------------- Error Section Start ------------------------------------------------>
            <div class="panel panel-success"><!-- Panel Div Start -->
                <div class="panel-heading"><!-- Panel Heading Div Start -->
                    <h2>Message - Success</h2>
                </div><!-- Panel Heading Div End -->
                <div class="panel-body"><!-- Panel Body Div Start -->
                    <%if (request.getAttribute("success") != null) {%>
                    <h4 style="color:green;"><%=request.getAttribute("success")%></h4>
                    <%}%>
                </div><!-- Panel Heading Div End -->
            </div><!-- Panel Div End -->
            <!---------------------------------------------- Error Section End ------------------------------------------------>
            <!---------------------------------------------- Footer Section Start ------------------------------------------------>
            <div class="well">
                <h4 style="text-align:center">Copyright &copy; 2016 Md.Sami Ul Haque.</h4>
            </div>
            <!---------------------------------------------- Footer Section End -------------------------------------------------->
        </div><!-- Main Container Div Start -->
    </body><!-- Body Tag End -->
</html><!-- End Of HTML Tag -->