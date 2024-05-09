<%@page import="connect.DbManager"%>
<%

String id=request.getParameter("id");
String cmd="delete from notification  where nid='"+id+"'";
DbManager   db=new DbManager();

db.insertUpdateDelete(cmd);
response.sendRedirect("notification.jsp");

%>