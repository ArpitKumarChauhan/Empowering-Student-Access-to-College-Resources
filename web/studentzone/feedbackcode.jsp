<%-- 
    Document   : feedbackcode
    Created on : 31 Aug, 2022, 7:39:09 AM
    Author     : shubh rawat
--%>

<%@page import="connect.DbManager"%>
<%
    
    String subject=request.getParameter("subject");
    
    String feedbacktext=request.getParameter("feedbacktext");
    
    String enrollmentno=session.getAttribute("studentid").toString();
    
    String cmd ="insert into feedback(enrollmentno,subject,feedbacktext,posteddate) values('"+enrollmentno+"','"+subject+"','"+feedbacktext+"',curdate())";
    
    DbManager db=new DbManager();
    
    boolean status=db.insertUpdateDelete(cmd);
    
    if(status==true)
    {
    %>
    <script>
        alert('Feedback Successfully Submitted');
        window.location.href="feedback.jsp";
    </script>
    <%
    }
    else
    {
    %>
    <script>
        alert('Feedback is not Submitted');
        window.location.href="feedback.jsp"; 
    </script>
    <%
    }
%>
