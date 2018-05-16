<%
session.setAttribute("student_id", null);
session.invalidate();
response.sendRedirect("student_login.jsp");
%>