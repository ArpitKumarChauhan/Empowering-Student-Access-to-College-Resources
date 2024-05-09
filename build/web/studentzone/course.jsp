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
        <title>GPC POrtal ||COURSE||</title>
        <%@include file="studentlinkmaster.jsp"%>    
    </head>
    <body>
        <div class="container-fluid outer">
            <!--Outer Start -->
              <%@include file="studentheadermaster.jsp"%>    
            
                <!--Course start-->
                <div class="row mt-5">
                    <div class="col-sm-12 p-0">
                        <h5 class="text-center"><b style="font-size:25px;color:#E67E22;"><u>COURSE </u></b> <b style="font-size:25px;color:#8B0000;"><u>LIST</u></b></h5>
                        <table class="table table-bordered table-hover">
                 <tr>
                     <th style="background-color: #BFC9CA;color:red;">Sr.No.</th>
                     <th style="background-color: #BFC9CA;color:red;">Course Name</th>
                     <th style="background-color: #BFC9CA;color:red;">Course Type</th>
                     <th style="background-color: #BFC9CA;color:red;">Course Duration</th>
                     <th style="background-color: #BFC9CA;color:red;">Course Image</th>
                     <!--<th>Delete</th>-->
                 </tr>  
                <%
                 String cmd ="select * from courseinfo";
                 DbManager db=new DbManager();
                 ResultSet rs=db.selectQuery(cmd);
                 int n=1;
                 while(rs.next())
                 {
                  %>
                  <tr style="background-color: #E67E22;">
                      <td><%=n %></td>
                      <td><%=rs.getString("coursename") %></td>
                       <td><%=rs.getString("coursetype") %></td>
                        <td><%=rs.getString("courseduration") %></td>
                        <td>
                            <img height="200px" width="200px" src="../uploadimage/<%=rs.getString("courseimage") %>" />
                        </td>
                        
                        <!--<td>
                            <a onclick="return confirm('Are you sure do you want to delete record ')" href="delcourse.jsp?id=<%=rs.getString("courseid") %>">Delete</a>
                        </td>-->
                        
                  </tr>
                  <%
                     n++;
                 }
                 %>
             </table>
                    </div>
                </div>
                    
                <!-- Course end -->
                
                <%@include file="studentfootermaster.jsp"%>
    
        </div>
        <!-- Outer end -->
    </body>
</html>


