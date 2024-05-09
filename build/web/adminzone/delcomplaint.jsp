<%@page import="connect.DbManager"%>
<%
    String id=request.getParameter("id");
    
    String cmd="delete from complaint where id='"+id+"'";
    DbManager db=new DbManager();
    
    db.insertUpdateDelete(cmd);
    response.sendRedirect("complaint.jsp");
   
    
    
%>