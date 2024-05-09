<%-- 
    Document   : feedback
    Created on : 30 Aug, 2022, 8:26:20 AM
    Author     : shubh rawat
--%>

<!--Admin feedback-->
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>     
        <title>GPC Portal || ADMIN WELCOME PAGE</title>
        <%@include file="adminlinkmaster.jsp" %>
    </head>
    <body>
<!--outer start-->
        <div class="container-fluid">
            <%@include file="adminheadermaster.jsp" %>
            
<!--course start-->
        <div class="row mt-5">
            <div class="col-sm-12 border" style="text-align: justify;">
                <h3 class="py-2 text-danger text-center">FEEDBACK LIST</h3>
                <div class="row">
            <div class="col-sm-12 mb-5  mt-4">
                <table class="bg-light mb-5 w-100 h-100">
                    <tr class="border border-2 border-danger">
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold text-warning">Sr.No</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold text-warning">Enrollment No</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold text-warning">Student Name</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold text-warning">Subject</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold text-warning">Feedback Text</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold text-warning">Posted Date</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold text-warning">Delete</th>
                    </tr>
                    <%
                        String cmd="select * from feedback a left join studentinfo b on a.enrollmentno=b.enrollmentno";
                            
                        DbManager db=new DbManager();
                        ResultSet rs=db.selectQuery(cmd);
                        int n=1;
                        while(rs.next())
                        {
                    %>
                    <tr class="border border-2 border-danger">
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=n%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("enrollmentno")%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("name")%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("subject")%></td>
                        <td style="text-align: justify;" class="fw-semibold pe-4 ps-2 border border-2 border-danger"><%=rs.getString("feedbacktext")%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("posteddate")%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><a onclick="return confirm('Are You Sure! Do You Want to Delete this Record ?')" href="deletefeedback.jsp?id=<%=rs.getString("id")%>">Delete</a></td>
                    </tr>
                    <%
                    n++;}
                    %>    
                </table>
            </div>
        </div>
            </div>
        </div>
<!--course end-->
<%@include file="adminfootermaster.jsp" %>
        </div>
<!--outer end-->
    </body>
</html>
