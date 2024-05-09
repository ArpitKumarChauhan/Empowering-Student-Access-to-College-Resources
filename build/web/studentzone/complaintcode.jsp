<%@page import="connect.DbManager"%>
<%

String subject=request.getParameter("subject");
String ctext=request.getParameter("ctext");
String enrollmentno=session.getAttribute("studentid").toString();

String query="insert into complaint(enrollmentno,	subject,complainttext,posteddate,status,statusdate) values('"+enrollmentno+"','"+subject+"','"+ctext+"',curdate(),'pending','NA') ";

DbManager db=new DbManager();
boolean b=db.insertUpdateDelete(query);
if(b==true)
{
     %>
     <script>
         alert('Complaint Successfully submitted');
         window.location.href="complaint.jsp";
     </script>
         
     <%
}
else
{
     %>
     <script>
         alert('Complaint is not saved');
         window.location.href="complaint.jsp";
     </script>
     <%
}


%>