<%-- 
    Document   : index
    Created on : Aug 25, 2022, 1:44:00 PM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <%@include file="adminlinkmaster.jsp"%>    
    </head>
    <body>
        <div class="container-fluid outer">
            <!--Outer Start -->
              <%@include file="adminheadermaster.jsp"%>    
            
                <!--Course start-->
                <div class="row mt-5">
                    <div class="col-sm-12 p-0">
                        <h5 class="text-center"><b style="font-size:25px;color:#E67E22;">CHANGE </b> <b style="font-size:25px;color:#8B0000;">PASSWORD</b></h5>
                        <!--Change password form start-->
                        <form action="passcode.jsp" method="post">
                            <table>
                                <tr>
                                    <th>
                                        Enter Old password :- 
                                    </th>
                                    <td>
                                        <input type="text" name="oldpass" class="form-control" required="">
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        Enter New Password :-
                                    </th>
                                    <td>
                                        <input type="password" name="newpass" class="form-control" required=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        Confirm Password :- 
                                    </th>
                                    <td>
                                        <input type="password" name="repass" class="form-control" required=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="submit" value="Change Password" class="btn btn-primary"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
                    
                <!-- Course end -->
                
                <%@include file="adminfootermaster.jsp"%>
    
        </div>
        <!-- Outer end -->
    </body>
</html>


