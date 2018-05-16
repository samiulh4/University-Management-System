<%-- 
    Document   : test01
    Created on : May 15, 2018, 9:45:53 PM
    Author     : Sami
--%>

<%@page import="dao.Department_DAO"%>
<%@page import="java.util.List"%>
<%@page import="entity.Student_Essential_Info"%>
<%@page import="dao.Student_Essential_Info_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String student_id = "201311035001";
    Student_Essential_Info_DAO student_essential_dao = new Student_Essential_Info_DAO();
    Student_Essential_Info student_essential_info = student_essential_dao.getStudent_Essential_Info(student_id);
    List<Student_Essential_Info> student_de = student_essential_dao.getDeactivaStudent();
    List<Student_Essential_Info> student_ac = student_essential_dao.getActivaStudent();
    Department_DAO department_dao = new Department_DAO();
    request.setAttribute("students", student_ac);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <select name="text"> 
            <c:forEach var="student" items="${students}">
                <option value="${student.student_name}"><c:out value="${student.student_name}"/></option>     
            </c:forEach>
           </select>
        
       
            
        
    </body>
</html>
