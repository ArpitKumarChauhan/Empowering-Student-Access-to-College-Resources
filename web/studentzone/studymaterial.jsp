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
        <title>GPC ||COURSE||</title>
        <%@include file="studentlinkmaster.jsp"%>    
    </head>
    <body>
        <div class="container-fluid outer">
            <!--Outer Start -->
              <%@include file="studentheadermaster.jsp"%>    
            
                <!--Course start-->
                <div class="row mt-5">
                    <div class="col-sm-12 p-0">
                        <h5 class="text-center"><b style="font-size:25px;color:#E67E22;"><u>STUDY </u></b> <b style="font-size:25px;color:#8B0000;"><u>MATERIAL LIST</u></b></h5>
                        <table class="table table-bordered">
                         <tr style="background-color: #BFC9CA;color:red;">
                         <th>Sr.No</th>
                         <th>Course Name</th>
                         <th>Year</th>
                         <th>File Name</th>
                         <th>Upload Date</th>
                         <th>Download</th>
                          <!--<th>Delete</th>-->
                         </tr>
                         <%
                         
        String cmd="select b.coursename,a.* from studymaterial a left join courseinfo b on b.courseid=a.coursename";
        DbManager db=new DbManager();
        ResultSet row=db.selectQuery(cmd);
        int n=1;
        while(row.next())
        {
        %>
        <tr style="background-color: #E67E22;">
            <td><%=n %></td>
            <td><%=row.getString("coursename") %></td>
            <td><%=row.getString("year") %></td>
            <td><%=row.getString("filename") %></td>
            <td><%=row.getString("uploaddate") %></td>
            <td>
                <a  target="_blank" href="../uploadimage/<%=row.getString("filename") %>">Download</a>
            </td>
            <!--<td>
                <a onclick="return confirm('Are you sure do you want to delete record ?')" href="delusm.jsp?id=<%=row.getString("id") %>">Delete</a>
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


