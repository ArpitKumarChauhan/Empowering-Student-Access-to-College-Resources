<%@page import="connect.DbManager"%>
<%
    String enrollmentno=request.getParameter("enrollmentno");
    
    String name=request.getParameter("name");
    
    String fname=request.getParameter("fname");
    
    String mname=request.getParameter("mname");
    
    String gender=request.getParameter("gender");
    
    String address=request.getParameter("address");
    
    String contactno=request.getParameter("contactno");
    
    String email=request.getParameter("email");
    
    String dob=request.getParameter("dob");
    
    String aadharno=request.getParameter("aadharno");
    
    String course=request.getParameter("course");
    
    String year=request.getParameter("year");
    
    String centrename=request.getParameter("centrename");
    
    String password=request.getParameter("password");
    
    //this query is use to insert record in datadbase
    String cmd="insert into studentinfo(enrollmentno,name,fname,mname,gender,address,contactno,emailaddress,dob,aadharno,course,year,centrename,registrationdate,pwd) values('"+enrollmentno+"','"+name+"','"+fname+"','"+mname+"','"+gender+"','"+address+"','"+contactno+"','"+email+"','"+dob+"','"+aadharno+"','"+course+"','"+year+"','"+centrename+"',curdate(),'"+password+"')";
    
    DbManager db=new DbManager();
    boolean status=db.insertUpdateDelete(cmd);
    if(status==true)
    {
%>
     <script>
         alert('Registration successfully Submitted.');
         window.location.href='registration.jsp';
     </script>
     <%
    }
    else
    {
    %>
      <script>
         alert('Registration is not success.');
         window.location.href='registration.jsp';
     </script>
<%
    }
%>
