<%@page import="connect.DbManager"%>
<%
String id=request.getParameter("id");
String cmd="update complaint set status='Approved',statusdate=curdate() where id='"+id+"' ";
DbManager db=new DbManager();
db.insertUpdateDelete(cmd);
response.sendRedirect("complaint.jsp");
%>