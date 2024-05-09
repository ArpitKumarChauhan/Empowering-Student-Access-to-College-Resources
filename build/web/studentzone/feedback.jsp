<%-- 
    Document   : feedback
    Created on : 31 Aug, 2022, 6:37:10 AM
    Author     : shubh rawat
--%>

<%@page import="connect.DbManager"%>
<%@page import="connect.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>     
        <title>GPC Portal || FEEDBACK</title>
        <%@include file="studentlinkmaster.jsp" %>
    </head>
    <body>
<!--outer start-->
        <div class="container-fluid bg-image" style="background-image: url('images/registrationbackground5.webp'); max-width: auto; height: auto; background-size:100% 100%;">
            <%@include file="studentheadermaster.jsp" %>
            
<!--content start-->
        <div class="row" >
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="container border border-2 border-danger rounded-4 my-5">
                    <div class="row">
                        <div class="col-sm-12 py-2">
                            <h3 class="text-center py-2"><span class="fs-2 text-danger border-3 border-bottom border-danger">FEEDBACK</span> <span class="text-warning border-3 border-warning border-bottom">FORM</span></h3>
                            <form action="feedbackcode.jsp" method="post">
                                <table class=" mb-3 m-auto">
                                    <tr>
                                        <td class="fs-5 fw-semibold px-2">Subject<sup style="color:red;">*</sup></td>
                                        <td class="py-3"><input type="text"  style="background-color: #BFC9CA" class="form-control rounded-3 border-dark" name="subject" required="true"/></td>
                                    </tr>
                                    <tr>
                                        <td class="fs-5 fw-semibold px-2">Feedback<sup style="color:red;">*</sup></td>
                                        <td class="py-3"><textarea name="feedbacktext" style="background-color: #BFC9CA" required="true" class="form-control rounded-3 border-dark"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="text-center py-2"><input type="submit" value="SUBMIT" class="btn btn-warning"/></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <div class="row">
            <div class="col-sm-12 mb-5  mt-4">
                <table class="bg-light mb-5 w-100 h-100">
                    <tr class="border border-2 border-danger" style="background-color: #BFC9CA;color:#8B0000;">
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold ">Sr.No</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold ">Enrollment No</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold ">Student Name</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold ">Subject</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold ">Feedback Text</th>
                        <th class="px-2 border border-2 border-danger fs-5 fw-bold ">Posted Date</th>
                    </tr>
                    <%
                        String cmd="select * from feedback a left join studentinfo b on a.enrollmentno=b.enrollmentno where a.enrollmentno='"+session.getAttribute("studentid")+"' ";
                            
                        DbManager db=new DbManager();
                        ResultSet rs=db.selectQuery(cmd);
                        int n=1;
                        while(rs.next())
                        {
                    %>
                    <tr class="border border-2 border-danger" style="background-color: #E67E22;">
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=n%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("enrollmentno")%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("name")%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("subject")%></td>
                        <td style="text-align: justify;" class="fw-semibold pe-4 ps-2 border border-2 border-danger"><%=rs.getString("feedbacktext")%></td>
                        <td class="px-2 border border-2 border-danger fw-semibold"><%=rs.getString("posteddate")%></td>
                    </tr>
                    <%
                    n++;    }
                    %>    
                </table>
            </div>
        </div>
<!--content end-->
<%@include file="studentfootermaster.jsp" %>
        </div>
<!--outer end-->
    </body>
</html>
