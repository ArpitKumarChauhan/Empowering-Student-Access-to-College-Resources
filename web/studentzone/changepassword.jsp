
<!--
   Student Zone   -> Change Password
--->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>NOULM </title>
        
        <%@include file="studentlinkmaster.jsp" %>
   
    </head>
    <body>
        <div class="container-fluid">
            
            <%@include file="studentheadermaster.jsp" %>
           
            
            
            <!-- notification box-->
            <div class="row  mt-5">
                
                <div class="col-sm-12">
         <h5 class="text-center"><b style="font-size:25px;color:#E67E22;"><u>Change </u></b> <b style="font-size:25px;color:#8B0000;"><u>Password</u></b></h5>
                        
         <br/>
         <form  action="passcode.jsp" method="post">
             <table  class="table table-bordered">
                 <tr>
                     <th>Enter Old Password : </th>
                     <td>
                         <input type="password" style="background-color: #BFC9CA" name="oldpass" class="form-control" required=""  />
                     </td>
                 </tr>
                 <tr>
                     <th>
                         Enter New Password :
                     </th>
                     <td>
                         <input type="password" style="background-color: #BFC9CA" name="newpass" class="form-control" required="" />
                     </td>
                 </tr>
                 
                 <tr>
                     <th>Re-Enter New Password : </th>
                     <td>
                         <input type="password" style="background-color: #BFC9CA" name="repass" class="form-control" required=""   />
                     </td>
                 </tr>
                 
                 <tr>
                     <td colspan="2" align="center">
                         <input type="submit" style="color:red;background-color:#E67E22;" value="Change Password " class="btn btn-primary" />
                     </td>
                 </tr>
                 
             </table>
         </form>
         
                </div>
            </div>
                        
            <!--notification end-->
            
            <%@include file="studentfootermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>
