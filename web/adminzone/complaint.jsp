
<%@page import="java.sql.ResultSet"%>
<!--
admin zone -> complaint
-->

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
                
                <div class="col-sm-12">
        
                 <h4 class="text-center text-primary">Complaint List</h4>
                        <table class="table table-bordered table-hover" >
                            <tr class="bg-danger">
                                <th>Sr.No.</th>
                                <th>Enrollment No</th>
                                <th>Student Name</th>
                                <th>Subject</th>
                                <th>Complaint Text</th>
                                <th>Post Date</th>
                                <th>Status</th>
                                <th>Approve Date </th>
                                <th>Update Status</th>
                                <th>Delete</th>
                            </tr>

                            <%
                            String q="select * from complaint a left join studentinfo b on b.enrollmentno=a.enrollmentno  ";
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery(q);
                            int n=1;
                            while(rs.next())
                            {
                                %>
             <tr class="bg-info">
              <td><%=n %></td> 
              <td><%=rs.getString("enrollmentno") %></td>
              <td><%=rs.getString("name") %></td>
              <td><%=rs.getString("subject") %></td>
              <td><%=rs.getString("complainttext") %></td>
              <td><%=rs.getString("posteddate") %></td>
              <td><%=rs.getString("status") %></td>
              <td><%=rs.getString("statusdate") %></td>
              <td>
                  <a onclick="return confirm('Are you update complaint status ?')"  href="updatestatus.jsp?id=<%=rs.getString("id") %>">Update Status</a>
              </td>
              <td>
                  <a  onclick="return confirm('Are you sure do you want to delete record ?')" href="delcomplaint.jsp?id=<%=rs.getString("id") %>">Delete</a>
              </td>
             </tr>
                                <%
                                
                                n++;
                            }
                            
                            %>
                        </table>
                </div>
            </div>
                        
            <!--notification end-->
            
            <%@include file="adminfootermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>
