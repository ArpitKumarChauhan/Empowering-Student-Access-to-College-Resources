<%-- 
    Document   : registration
    Created on : Aug 28, 2022, 9:15:05 AM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GPC Portal || LOGIN PANEL ||</title>
        <%@include file="linkmaster.jsp"%>
    </head>
    <body>
        <div class="container-fluid outer">
        <%@include file="headermaster.jsp"%>
        <div class="container-fluid p-0">
           <div class="row mb-5">
               <div class="col-sm-12 p-0">
                   <div calss="aboutimage">
                   <img style="width:100%;"src="images/gpc2.jpg" height="280">
                   <h5 class="aboutimagefirsttxt" style="color:#E67E22;font-size:40px;"><b>LOGIN </b> <b style="color:#8B0000;font-size:40px;">PAGE</b></h5>                   
                   </div>
                </div>
           </div>
       </div>
        <div class="container mb-5">
        <div class="row mt-5 border border-danger border-3" style="border-radius:15%;">
            <div style="text-align: center;" class="col-sm-12 mt-3 mb-3">
                <img style="text-align: center; height:100px;" src="images/logogpc.png">
            </div>
                    <div class="col-sm-12 p-0 mb-5">
                        <h5 style="text-align:center;"><b style="font-size:25px;color:#E67E22;">G.P.C Student</b><b style="font-size:25px;color:#8B0000;"> Login PANEL</b></h5>
                        <form action="logincodestudent.jsp" method="post">
                            <table style="margin:0px auto;width:50%;margin-top:2%;">                                <tr>
                                    <th style="text-align:right;padding: 20px;" class="form-label">User Id :- </th>
                                    <td>
                                        <input type="text" name="userid" class="form-control" required="true"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="text-align:right;padding: 20px;" class="form-label">Password :- </th>
                                    <td>
                                        <input type="password" name="pwd" class="form-control" required="true"/>
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td colspan="2" class="text-center">
                                        <input style="background-color: #E67E22;color:#8B0000;" type="submit" value="LOGIN" class="btn btn-primary">
                                    </td>
                                </tr>
                            </table>
                            <br/><br/>
                            <b><sup style="color:red;margin-left: 15%;"><b>*</b></sup><u> Your Enrollment Number is your your userid for your Login and password is same which you are uploaded at the time of registration</u>.....</b>
                        </form>
                    </div>
                </div>
        </div>
        <%@include file="footermaster.jsp"%>
    </div>
    </body>
</html>

