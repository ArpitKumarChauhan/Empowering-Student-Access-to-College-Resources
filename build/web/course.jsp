<%-- 
    Document   : index
    Created on : Aug 25, 2022, 1:44:00 PM
    Author     : kumar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NOULMS || COURSES</title>
        <%@include file="linkmaster.jsp"%>
        <style>
            .card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4 px 8px rgba(0,0,0,.06);
  
}
        </style>
    </head>
    <body>
        <div class="container-fluid outer">
            <!--Outer Start -->
              <%@include file="headermaster.jsp"%>    
            
                <!--Course start-->
                <div class="container-fluid p-0">
                <div class="row">
                    <div class="col-sm-12 p-0">
                        <div calss="aboutimage">
                        <img style="width:100%;"src="images/gpc2.jpg" height="280">
                        <h5 class="aboutimagefirsttxt" style="color:#E67E22;font-size:35px;"><b>COURSE</b> <b style="color:#8B0000;font-size:40px;">details</b></h5>                   
                   
                        </div> 
                    </div>
                </div>
                </div>
                    
                <!-- Course end -->
                <!--main content start-->
                <h5><b style="font-size:28px;">Courses</b> <b style="font-size:25px;color:#8B0000;">DETAILS</b></h5>
                <div class="container">
                    <div class="row mt-5 mb-5">
                        <%
                 String cmd ="select * from courseinfo";
                 DbManager db=new DbManager();
                 ResultSet rs=db.selectQuery(cmd);
                 int n=1;
                 while(rs.next())
                 {
                  %>
                        <div class="col-sm-3">
                            <div class="card" style="width:16rem;">
                                
                            <img height="200px" width="254px" src="studentzone/../uploadimage/<%=rs.getString("courseimage") %>">
                            </div>
                        </div>
                             <%
                     n++;
                 }
                 %>
                    </div>
                </div>
                <!--main content end-->        
                <!--footer starts-->
                <%@include file="footermaster.jsp"%>
    <!--footer end-->
        </div>
        <!-- Outer end -->
        
    </body>
</html>

