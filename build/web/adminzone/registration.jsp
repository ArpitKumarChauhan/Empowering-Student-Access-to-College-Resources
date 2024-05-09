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
        <title>GPC Portal || REGISTRATION  ||</title>
        <%@include file="adminlinkmaster.jsp"%>
    </head>
    <body>
        <div class="container-fluid outer">
        <%@include file="adminheadermaster.jsp"%>
        
        <div class="container mt-5 mb-5">
        <div class="row border border-danger border-3" style="border-radius: 10%;">
            <div style="text-align: center;" class="col-sm-12 mt-3 mb-3">
                <img style="text-align: center; height:100px;" src="images/logogpc.png">
            </div>
                    <div class="col-sm-12">
                        <h5 class="mb-5 text-center"><b style="font-size:25px;color:#E67E22;">G.P.C STUDENT's</b> <b style="font-size:25px;color:#8B0000;">REGISTRATION FORM</b></h5>
                        <form action="regcode.jsp" method="post" border:1;>
                            <div class="row">
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="enrollmentno" class="form-label">Enrollment No <sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="text" class="form-control" id="enrollmentno" name="enrollmentno" required="true"/>
                                </div>
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="name" class="form-label">Student Name <sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="text" class="form-control" id="name" name="name" required="true"/>
                                </div>
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="fname" class="form-label">Father's Name <sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="text" class="form-control" id="fname" name="fname" required="true"/>
                                </div>
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="mname" class="form-label">Mother's Name <sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="text" class="form-control" id="mname" name="mname" required="true"/>
                                </div>
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="gender" class="form-label">Gender <sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="radio" id="gender" name="gender" required="true" value="Male"/>Male
                                        <input style="background-color:#BFC9CA ;" type="radio" id="gender" name="gender" required="true" value="Male"/>Female
                                </div>
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="address" class="form-label">Address<sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="text" class="form-control" id="address" name="address" required="true"/>
                                </div>       
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="contactno" class="form-label">Contact No<sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="number" class="form-control" id="contactno" name="contactno" required="true"/>
                                </div>  
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="email" class="form-label">Email ID<sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="email" class="form-control" id="email" name="email" required="true"/>
                                </div> 
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="dob" class="form-label">Date of Birth<sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="date" class="form-lable" id="dob" name="dob" required="true"/>
                                </div>
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="aadharno" class="form-label">Aadhar No<sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="number" class="form-control" id="aadharno" name="aadharno" required="true"/>
                                </div>
                                <div class="col-sm-6 mb-3" style="color:#8B0000;">
                                    <label for="course" class="form-label">Course<sup style="color:red;">*</sup></label>
                                    <select style="background-color:#BFC9CA ;" class="form-control" name="course" id="course" required="true">
                                        <option value="">--Select--</option>
                                        <option>CSE</option>
                                        <option>CE</option>
                                        <option>TE</option>
                                        
                                    </select>
                                </div>   
                                <div class="col-sm-6 mb-3">
                                    <label for="year" class="form-label">Year<sup style="color:red;">*</sup></label>
                                    <select style="background-color:#BFC9CA ;" class="form-control" name="year" id="year" required="true">
                                        <option value="">--Select--</option>
                                        <option>First Year</option>
                                        <option>Second Year</option>
                                        <option>Third Year</option>
                                        
                                        </select>
                                </div>
                                <div class="col-sm-6" style="color:#8B0000;">
                                    <label for="centrename" class="form-label">Centre Name<sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="text" class="form-control" id="centrename" name="centrename" required="true"/>
                                </div>
                                <div class="col-sm-6" style="color:#8B0000;">
                                    <label for="password" class="form-label">Password<sup style="color:red;">*</sup></label>
                                        <input style="background-color:#BFC9CA ;" type="password" class="form-control" id="password" name="password" required="true"/>
                                </div>
                                </div>
                            <div class="row">
                                <div class="col-sm-12 mb-3 text-center mb-1">
                                    <input type="submit" value="SUBMIT" class="btn btn-primary form-control" style="margin-top:40px;width:95px;color:#8B0000;background-color:#E67E22;"/>
                                  
                                </div>    
                            </div>
                        </form>
                        <b><sup class="ms-5 me-5" style="color:red"><b>*</b></sup>NOTE:-<u></u><u></u></b>
                          <!-- form Tag end -->
                    </div>
                </div>
        </div>
        <%@include file="adminfootermaster.jsp"%>
        </div>
    </body>
</html>
