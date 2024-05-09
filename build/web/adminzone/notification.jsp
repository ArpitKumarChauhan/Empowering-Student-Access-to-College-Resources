  
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
            <div class="container">
            <div class="row  mt-5">
                <div class="col-sm-12 border border-5 border-danger" style="border-radius:10%;">
                <div style="text-align: center;" class="col-sm-12 mt-3 mb-3">

                
                        

                    <form  action="noticecode.jsp" method="post">
                        <table class="table table-hover table-responsive">
                            <tr>
                                <th>Enter Notification : </th>
                                <td>
                                    <textarea  name="ntext"  class="form-control"  required=""></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"  align="center">
                                    <input   type="submit" value="Submit"  class="btn btn-primary" />

                                </td>
                            </tr>

                        </table>
                        </div>
                </div >
                        <br>

                        <h4 class="text-center" >Notification List</h4>
                        <br>
                        <table class="table table-hover table-bordereds">
                            <tr class="bg-warning">
                                <th>Sr.No</th>
                                <th>Notification Text</th>
                                <th>Posted Date</th>
                                <th>Delete</th>
                            </tr >
                            <%
                                String cmd = "select * from notification";
                                DbManager db = new DbManager();
                                ResultSet rs = db.selectQuery(cmd);
                                int n = 1;
                                while (rs.next()) {
                            %>
                            <tr class="bg-info">
                  <td><%=n%></td>
                  <td><%=rs.getString("ntext")  %></td>
                  <td><%=rs.getString("posteddate")  %></td>
                  <td>
                      <a onclick="return confirm('Are you sure do you want delete record ?')" href="delnotice.jsp?id=<%=rs.getString("nid") %>">Delete</a>
                  </td>
                               
                            </tr>  
                            <%
                            n++;
                                }
                            %>

                        </table>


                    </form>



                </div>
            </div>
            <!--notification end-->

            <%@include file="adminfootermaster.jsp" %>

            <!-- outer end -->
        </div>   
    </body>
</html>
