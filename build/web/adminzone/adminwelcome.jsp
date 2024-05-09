<%-- 
    Document   : index
    Created on : Aug 25, 2022, 1:44:00 PM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to Admin Panel</title>
        <%@include file="adminlinkmaster.jsp"%>
        <style>
            h5{
                text-align: center;
                color:#E67E22;
            }
            .card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
}
            </style>
    </head>
    <body>
        <div class="container-fluid outer">
            <!--Outer Start -->
              <%@include file="adminheadermaster.jsp"%>    
            
                <!--Admin panel start-->
                <div class="row mt-5">
                    <div class="col-sm-12 p-0">
                        <h5 class="text-center"><b style="font-size:30px;color:#E67E22;">Welcome ! </b> <b style="font-size:30px;color:#8B0000;">ADMIN ZONE</b></h5>
                       
                    </div>
                </div>
                <!--Main row start-->
<div class="row  mt-5">
                <!--Main column start-->
                <div class="col-sm-12">
         
          <!--1st row start-->
         <div class="row bg-light">
               <div class="col-sm-12 mb-4">
        
                   <h2 style="margin-left: 60px;">ADMINISTRATIVE<span style="color:darkred;"> SETUP....</span></h2> 
               </div> 
 
               <div class="col-sm-3 mb-5">
                   <div onclick="window.location.href='registration.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 80px;cursor: pointer;">
  <img src="images/registration.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px; margin-left: 40px; margin-top: 20px; margin-bottom:4px;">
  <h5>REGISTRATION</h5>
</div>
               </div>
             
               <div class="col-sm-3">
                   <div onclick="window.location.href='notification.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 60px;cursor: pointer;">
  <img src="images/notimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left:40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>NOTIFICATION</h5>
    
 
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='course.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 35px;cursor: pointer;">
  <img src="images/courseimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>COURSE's</h5>
  
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='usm.jsp'" class="card btn btn-light" style="width: 15rem;cursor: pointer;">
  <img src="images/studymaterialimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>STYUDY MATERIAL</h5>
  
  
</div>
               </div>
           </div>
           <!--1st row end-->
           <!--2nd row start-->
           <div class="row bg-light">
               <div class="col-sm-3 mb-5">
                   <div onclick="window.location.href='studycentre.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 80px;cursor: pointer;">
  <img src="images/studycentre.jpg" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px; margin-left: 40px; margin-top: 20px; margin-bottom:4px;">
  <h5>STUDY CENTRE</h5>
</div>
               </div>
               <div class="col-sm-3 mb-5">
                   <div onclick="window.location.href='feedback.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 60px;cursor: pointer;">
  <img src="images/feedbackimg.jfif" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left: 40px; margin-top: 20px; margin-bottom:4px;">
  <h5>FEEDBACK</h5>
</div>
               </div>
               
              
 
               <div class="col-sm-3 mb-5">
                   <div onclick="window.location.href='complaint.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 35px;cursor: pointer;">
  <img src="images/complaintimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left: 40px; margin-top: 20px; margin-bottom:4px;">
  <h5>COMPLAINT LIST</h5>
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='studentlist.jsp'" class="card btn btn-light" style="width: 15rem;cursor: pointer;">
  <img src="images/studentimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left:40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>STUDENT LIST</h5>
    
 
</div>
               </div>
               
               
               </div>
                    <!--2nd row end-->
           <!--3rd row start-->
           <div class="row bg-light mb-5">
              <div class="col-sm-3">
                   <div onclick="window.location.href='changepassword.jsp'" class="card btn btn-light" style="width: 15rem;margin-left: 124%;cursor: pointer;">
  <img src="images/changepasswordimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>CHANGE PASSWORD</h5>
  
</div>
               </div>
 
               <div class="col-sm-3 mb-5">
                   <div onclick="window.location.href='logout.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 117%;cursor: pointer;">
  <img src="images/logoutimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>LOGOUT </h5>
               </div>
           </div>
           
           </div>
           <!--3rd row end-->
           
           
         
         
         
                </div>
    <!--Main column end-->
            </div>
                <!--Main row end-->
                                            
                <!--Dashboard icon end-->
                
                <%@include file="adminfootermaster.jsp"%>
    <!-- Admin Panel end -->
        </div>
        <!--outer end-->
    </body>
</html>


