<%@page import="connect.DbManager"%>
<%
    
String id=request.getParameter("id");
String cmd="delete from courseinfo where courseid='"+id+"'";

DbManager db=new DbManager();
db.insertUpdateDelete(cmd);
response.sendRedirect("course.jsp");

%>