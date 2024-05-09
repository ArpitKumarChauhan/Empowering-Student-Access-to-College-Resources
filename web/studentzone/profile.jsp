<%-- 
    Document   : index
    Created on : 25 Aug, 2022, 1:43:59 PM
    Author     : kumar
--%>
<%@page import="connect.DbManager"%>
<!--student feedback form-->

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>GPC Portal || Profile</title>
        <%@include file="studentlinkmaster.jsp" %>
        
    </head>
    <body>
        <div class="container-fluid">
            
            <!--link headermaster-->
            <%@include file="studentheadermaster.jsp" %>
            
            <!--outer start-->
            
           <!--headline start-->
           
           <!--headline end-->
            
            <!--header start-->
            
            <!--header end-->
            
           <!--navbar start-->
           
           <!--navbar end-->
           
          <!--slider start-->
          
          <!--slider end-->
           
           <!--about start-->
           
           
           <div class="row mt-5 ">
              
               
               <div class="col-sm-12">
                   <h5 class="text-center"><b style="font-size:25px;color:#E67E22;"><u>My </u></b> <b style="font-size:25px;color:#8B0000;"><u>PROFILE</u></b></h5>
                        
                   <%
                   
                   String cmd="select * from studentinfo where enrollmentno='"+session.getAttribute("studentid")+"'";
                   DbManager db=new DbManager();
                   ResultSet rs=db.selectQuery(cmd);
                   if(rs!=null)
                   {
                       if(rs.next())
                       {
                           String img="";
                           String pic=rs.getString("profilepic")+"";
                           
                           if(pic.equals("null"))
                           {
                               img="images/download.jpg";
                           }
                           else
                           {
                               img="../uploadimage/"+pic;
                           }
                   
                   %>
                   
                   <table class="table table bordered">
                       <tr>
                           <th>Student Pic</th>
                           <td>
                               <img src="<%=img%>" style="height:100px;"  alt="Image not found" />
                           </td>
                       </tr>
                       <tr>
                           <th>Student Name</th>
                             <td><%=rs.getString("name")%></td>
                       </tr>
                       <tr>
                           <th>Contact No.</th>
                           <td><%=rs.getString("contactno") %>
                           </td>
                           
                       </tr>
                        <tr>
                           <th>E-mail</th>
                           <td><%=rs.getString("emailaddress") %></td>
                       </tr>
                        <tr>
                           <th>Address</th>
                             <td><%=rs.getString("address") %></td>
                       </tr>
                       <tr>
                           <td colspan="2" align="center">
                               <a class="btn btn-primary" style="color:red;background-color:#E67E22;" href="editprofile.jsp">Edit Profile</a>
                               
                           </td>
                       </tr>
                       
                   </table>
                   <%
                       }
                   }
                   %>
                  
                   </div>
                         </div>
           <!--about close-- >
           
          <!--footer start-->
          
          <%@include file="studentfootermaster.jsp" %>
          
          <!--footer end-->
            
            <!--outer end-->
            
    </div>
    </body>
</html>