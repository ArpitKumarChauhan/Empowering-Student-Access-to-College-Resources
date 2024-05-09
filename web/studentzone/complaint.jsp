
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>GPC Portal </title>

        <%@include file="studentlinkmaster.jsp" %>

    </head>
    <body>
        <div class="container-fluid">

            <%@include file="studentheadermaster.jsp" %>



            <!-- notification box-->
            <div class="container">
            <div class="row  mt-5">

                <div class="col-sm-12 border border-3 border-danger rounded-4">
                     <h5 class="text-center"><b style="font-size:25px;color:#E67E22;"><u>COMPLAINT </u></b> <b style="font-size:25px;color:#8B0000;"><u>FORM</u></b></h5>
                      

                    <form action="complaintcode.jsp" method="post">
                        <table class="text-right  mb-3 m-auto p-5 m-5" style="border-radius:15;height: 250px;">
                            <tr  style="width:200px;">
                                <td class="fs-5 fw-semibold px-2">Enter Subject :</td>
                                <td class="py-3">
                                    <input type="text"  style="background-color: #BFC9CA" name="subject" class="form-control" required="" />
                                </td>
                            </tr>   
                            <tr>
                                <td class="fs-5 fw-semibold px-2">Enter Complaint Text : </td>
                                <td class="py-3">
                                    <textarea name="ctext"  style="background-color: #BFC9CA" class="form-control" required=""></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input type="submit"  style="background-color:#E67E22;border-color: red;color:red;"  style="background-color: #E67E22;border-color:#8B0000;" class="btn btn-primary" value="Submit" />
                                </td>
                            </tr>
                        </table>
                </div>
            </div>
                </div>
                        <br>
                        <div class="row">
                        <div class="col-sm-12 mt-5">
                        <h5 class="text-center"><b style="font-size:25px;color:#E67E22;"><u>COMPLAINT </u></b> <b style="font-size:25px;color:#8B0000;"><u>LIST</u></b></h5>
                     
                        <table class="table table-bordered table-hover" >
                            <tr style="background-color: #BFC9CA;color:red;">
                                <th>Sr.No.</th>
                                <th>Enrollment No</th>
                                <th>Student Name</th>
                                <th>Subject</th>
                                <th>Complaint Text</th>
                                <th>Post Date</th>
                                <th>Status</th>
                                <th>Approve Date </th>
                            </tr>

                            <%
                            String q="select * from complaint a left join studentinfo b on b.enrollmentno=a.enrollmentno  where a.enrollmentno='"+session.getAttribute("studentid")+"'";
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery(q);
                            int n=1;
                            while(rs.next())
                            {
                                %>
             <tr style="background-color: #E67E22;">
              <td><%=n %></td> 
              <td><%=rs.getString("enrollmentno") %></td>
              <td><%=rs.getString("name") %></td>
              <td><%=rs.getString("subject") %></td>
              <td><%=rs.getString("complainttext") %></td>
              <td><%=rs.getString("posteddate") %></td>
              <td><%=rs.getString("status") %></td>
              <td><%=rs.getString("statusdate") %></td>
             </tr>
                                <%
                                n++;
                            }
                            
                            %>
                        </table>
                        <div style="height: 250px;"></div>

                    </form>

                </div>
            </div>

            <!--notification end-->

            <%@include file="studentfootermaster.jsp" %>

            <!-- outer end -->
        </div>   
    </body>
</html>
