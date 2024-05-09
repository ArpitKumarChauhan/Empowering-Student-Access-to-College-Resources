<%-- 
    Document   : deletefeedback
    Created on : 1 Sep, 2022, 9:00:41 AM
    Author     : shubh rawat
--%>

<%@page import="connect.DbManager"%>
<%
    String id=request.getParameter("id");
    
    String cmd="delete from feedback where id='"+id+"'";
    
    DbManager db=new DbManager();
    db.insertUpdateDelete(cmd);
    
    response.sendRedirect("feedback.jsp");
    
%>
