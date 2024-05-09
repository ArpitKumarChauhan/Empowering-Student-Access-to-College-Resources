<%@page import="connect.DbManager"%>
<%
String id=request.getParameter("id");
String cmd="delete from studentinfo where enrollmentno='"+id+"' ";
DbManager db=new DbManager();
db.insertUpdateDelete(cmd);
response.sendRedirect("studentlist.jsp");
%>