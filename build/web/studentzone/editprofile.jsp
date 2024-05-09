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
        
        <title> NOULMS ||Edit profile||</title>
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
              
               
               <div class="col-sm-12 border p-0 text">
                   <h4 class="bg-danger text-light text-center p-2 rounded-2">My Profile</h4>
                   
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
                               img=pic;
                           }
                   
                   %>
                   <form action="../updateprofile" method="post" enctype="multipart/form-data" >
                   <table class="table table bordered">
                       <tr>
                           <th>Student Pic</th>
                           <td>
                               <input type="file" name="filepic" class="form-control" required="" />
                           </td>
                       </tr>
                       <tr>
                           <th>Student Name</th>
                           <td>
                       <input type="text" name="name" value="  <%=rs.getString("name")%>" class="form-control" required="" />
                           </td>
                       </tr>
                       <tr>
                           <th>Contact No.</th>
                           <td><input type="text" name="contactno" value="<%=rs.getString("contactno") %>" class="form-control" required=""/>
                           </td>
                           
                       </tr>
                        <tr>
                           <th>E-mail</th>
                           <td><input type="email" name="emailaddress" value="<%=rs.getString("emailaddress") %>" class="form-control" required="" /></td>
                       </tr>
                        <tr>
                           <th>Address</th>
                           <td><textarea name="address" class="form-control" required=""><%=rs.getString("address") %></textarea></td>
                       </tr>
                       <tr>
                           <td colspan="2" align="center">
                               <input type="submit" value="UPDATE PROFILE" class="btn btn-primary">        
                           </td>
                       </tr>
                       
                   </table>
                       </form>
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