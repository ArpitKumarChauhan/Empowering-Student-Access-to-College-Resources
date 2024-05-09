<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>GPC Portal || ADMIN</title>
        
        <%@include file="adminlinkmaster.jsp" %>
   
    </head>
    <body>
        <div class="container-fluid">
            
            <%@include file="adminheadermaster.jsp" %>
           
            
            
            <!-- notification box-->
            <div class="row  mt-5">
                <h3 style="font-weight:bold;">Student List</h3>
                <div class="col-sm-12 p-0 table-responsive">
         
         <br>
         <table  class="table table-bordered " >
             <tr class="bg-danger">
                 <th>Sr.No</th>
                 <th>Enrollment No</th>
                 <th>Name</th>
                 <th>Father Name</th>
                 <th>Mother Name</th>
                 <th>Gender</th>
                 <th>Address</th>
                 <th>Email</th>
                 <th>Contact No</th>
                 <th>DOB</th>
                 <th>Aadhar No</th>
                 <th>Course</th>
                 <th>Year</th>
                 <th>Centre Name</th>
                <th>Registration Date</th>
                <th>Password</th>
                <th>Delete</th>
             </tr>
             <tr>
                 <%
               String cmd="select * from studentinfo  where   enrollmentno<>'admin' ";
               DbManager db=new DbManager();
               ResultSet rs=db.selectQuery(cmd);
               
               int n=1;
               while(rs.next())
               {
                 %>
             <tr   class="bg-info">
                 <td><%=n %></td> 
                 <td><%=rs.getString("enrollmentno") %></td>
                 <td><%=rs.getString("name") %></td>
                 <td><%=rs.getString("fname") %></td>
                 <td><%=rs.getString("mname") %></td>
                 <td><%=rs.getString("gender") %></td>
                 <td><%=rs.getString("address") %></td>
                 <td><%=rs.getString("emailaddress") %></td>
                 <td><%=rs.getString("contactno") %></td>
                 <td><%=rs.getString("dob") %></td>
                 <td><%=rs.getString("aadharno") %></td>
                 <td><%=rs.getString("course") %></td>
                 <td><%=rs.getString("year") %></td>
                 <td><%=rs.getString("centrename") %></td>
                  <td><%=rs.getString("registrationdate") %></td>
                  <td><%=rs.getString("pwd") %></td>
                  <td>
                      <a onclick="return confirm('Are you  sure do you want to delete record')" href="delreg.jsp?id=<%=rs.getString("enrollmentno") %>">Delete</a>
                  </td>
             </tr>
                 <%
                 
                 n++;
               }
                
                 %>
             </tr>
             
         </table>
               
                </div>
            </div>
                        
            <!--notification end-->
            
            <%@include file="adminfootermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>