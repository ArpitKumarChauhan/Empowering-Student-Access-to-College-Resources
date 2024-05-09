
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>GPC Portal || WELCOME</title>
        
        <%@include file="studentlinkmaster.jsp" %>
        <style>
            h5{
                text-align: center;
                color:#E67E22;
            }
            .card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4 px 8px rgba(0,0,0,.06);
  
}
            </style>
    </head>
    <body>
        <div class="container-fluid">
            
            <%@include file="studentheadermaster.jsp" %>
           
            
            
            <!-- notification box-->
            <div class="row  mt-5">
                
                <div class="col-sm-12">
         
          
         <div class="row bg-light">
               <div class="col-sm-12 mb-4">
        
                   <h2 style="margin-left: 60px;">ADMINISTRATIVE<span style="color:darkred;"> SETUP....</span></h2> </div> 
 
               <div class="col-sm-3 mb-5">
                   <div onclick="window.location.href='welcome.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 80px;cursor: pointer;">
  <img src="images/dashimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px; margin-left: 40px; margin-top: 20px; margin-bottom:4px;">
  <h5>DASHBOARD</h5>
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='feedback.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 60px;cursor: pointer;">
  <img src="images/feedbackimg.jfif" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left:40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>FEEDBACK</h5>
    
 
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='course.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 35px;cursor: pointer;">
  <img src="images/courseimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>COURSE</h5>
  
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='studymaterial.jsp'" class="card btn btn-light" style="width: 15rem;cursor: pointer;">
  <img src="images/studymaterialimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>STYUDY MATERIAL</h5>
  
  
</div>
               </div>
           </div>
           
           
           <div class="row bg-light mb-5">
              
 
               <div class="col-sm-3 mb-5">
                   <div onclick="window.location.href='complaint.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 80px;cursor: pointer;">
  <img src="images/complaintimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left: 40px; margin-top: 20px; margin-bottom:4px;">
  <h5>COMPLAINT</h5>
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='profile.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 60px;cursor: pointer;">
  <img src="images/profileimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left:40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>PROFILE</h5>
    
 
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='changepassword.jsp'" class="card btn btn-light" style="width: 15rem; margin-left: 35px;cursor: pointer;">
  <img src="images/changepasswordimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px;; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>CHANGE PASSWORD</h5>
  
</div>
               </div>
               <div class="col-sm-3">
                   <div onclick="window.location.href='logout.jsp'" class="card btn btn-light" style="width: 15rem;cursor: pointer;">
  <img src="images/logoutimg.png" class="card-img-top" alt="image not found..." style="height:140px; width:140px; border:1px solid yellow; border-radius:100px; margin-left: 40px; margin-top: 20px; margin-bottom: 8px;">
  <h5>LOGOUT </h5>
  
  
</div>
               </div>
           </div>
           
           
           
           
           
           
           
         
         
         
                </div>
            </div>
                        
            <!--notification end-->
            
            <%@include file="studentfootermaster.jsp" %>
            
            <!-- outer end -->
        </div>   
    </body>
</html>



