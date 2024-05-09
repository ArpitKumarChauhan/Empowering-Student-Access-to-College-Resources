<%@page import="connect.DbManager"%>
<%

    String ntext=request.getParameter("ntext");
    String cmd="insert into  notification(ntext,posteddate)  values('"+ntext+"',curdate())";
    DbManager   db=new  DbManager();
 boolean b=    db.insertUpdateDelete(cmd);
 
 if(b==true)
 {
 %>
 <script>
     alert('Notification successfully added');
     window.location.href="notification.jsp";
 </script>
 <%
 }
 else
 {
 %>
 <script>
     alert('Notification is not added');
     window.location.href="notification.jsp";
 </script>
 <%
 }
    
%>