<%-- 
    Document   : index
    Created on : Aug 25, 2022, 1:44:00 PM
    Author     : kumar
--%>
<%@page import="connect.DbManager"%>
<%@page import="connect.DbManager"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welmome to G.P Changipur Portal</title>
        <%@include file="linkmaster.jsp"%>
        <style>
            .card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4 px 8px rgba(0,0,0,.06);
  
}
.textcolor
{
position:relative;
animation-name:test;
animation-duration:4s;
animation-iteration-count:infinite;
}
@keyframes test
{
    0% {color:#FFA500;}
    25% {color:#E67E22;}
    50% {color:#BFC9CA;}
    75% {color:#8B0000;}
    100% {color:#FFA500;}
}
        </style>
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid outer">
            <!--Outer Start -->
              <%@include file="headermaster.jsp"%>    
                <!--Slider Start-->
                
                <div class="row" data-aos="zoom-in" data-aos-duration="2000">
                    <div class="col-sm-12 p-0">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/gpc2.jpg" class="d-block w-100" style="height:380px;" alt="Image is not found....">
      </div>
    <div class="carousel-item">
      <img src="images/clg2.jpg" class="d-block w-100" style="height:380px;" alt="Image is not found....">
    </div>
    <div class="carousel-item">
      <img src="images/clg.jpg" class="d-block w-100" style="height:380px;" alt="Image is not found.....">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
                    </div>
                </div>
                
                <!--slider end-->
                
                <!-- Marquee Start -->
                <div class="container-fluid p-0">
                <div style="background-color: #FFA500;" class="row">
                    <div class="col-sm-12">
                        <marquee scrollamount="13" onmouseover="this.stop()" onmouseout="this.start()">
                        <p class="marpara marpara1"><b>
                            The portal is easy to access & highly user
                            <br/>friendly for the students & admin.</b></p>
                            <p class="marpara marpara1"><b>The portal is fully secured and accessible
                                <br/>24 x 7 to its authorised users.</b></p>
                            <p class="marpara marpara1"><b>The portal is easy to access & highly user
                                    <br/>friendly for the students & study admin.</b></p>
                        </marquee>
                    </div>
                </div>
                </div>
                   
                <!-- Marquee End -->    
                
                
                <!--About e-gyan portal Start -->
                <div class="container-fluid p-0">
                <div class="row mt-5">
                    <div class="col-sm-4 border p-0" data-aos="fade-zoom-in"
     data-aos-duration="3000">
                        <div class="colorouter text-light text-center p-1 rounded-2">
                            
                            <h4>Notice Board</h4>
                            
                            <br>
                            <div style="background-color:#BFC9CA;">
                        <%@include file="notice.jsp" %>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-8" data-aos="fade-zoom-in"
     data-aos-duration="3000">
                        <div class="textcolor">
                        <h5><b style="font-size:28px;">ABOUT</b> <b style="font-size:25px;">G.P Changipur PORTAL</b></h5>
                        </div>
                        <p>The first academic session of Polytechnic 2013-14 started with civil engineering course whose classes were conducted in the campus of Government Polytechnic Bijnor. From session 2015-16, teaching-training started in the second course in the form of Diploma in Computer Science and Engineering in Polytechnic and session Teaching training of third course Diploma in Textile Technology started from 2016-17.
                        </p>
                        
                         <p>Government Polytechnic Changipur, Noorpur, Bijnor is located in Changipur village, about 50 km from Bijnor on Moradabad Highway. Three courses of Polytechnic, Diploma in Civil Engineering, Diploma in Computer Science and Engineering and Diploma in Textile Technology have been approved by All India Council of Technical Education, New Delhi. are received.</p>
                    </div>
                </div>
                </div>
                    
                <!-- ABOUT E-Gyan Portal end -->
                
                <!--Users of the portal start -->
                <!--Admin type start-->
                
                    <div class="row mt-5 bg-light">
                        <div class="col-sm-12">
                            <div><b style="font-size:25px;"><br>ADMIN </b><b style="color:#8B0000;font-size:25px;">TYPE....<br></b></div>
                        </div>
                    </div>
                    <div class="row bg-light">
                        
                                                
  <div class="col-sm-6 mt-3" data-aos="fade-up"
     data-aos-duration="2000">
    
      <div class="card btn btn-light border border-dark border-3 " style="width:18rem;margin-left: 35%;">
          <a href="loginadmin.jsp" class="btn text-center">
              <h5 style="text-align:center;color:#8B0000;" class="card-title"><b>NOU</b></h5>
        <p style="text-align:center;" class="card-text">The Campus admin can login to monitor the portal, provide access to authorised stake holders, upload study material and etc.</p>
        </a>
      </div>
    
  </div>
                        
  <div class="col-sm-6 mb-3 mt-3" data-aos="fade-up"
     data-aos-duration="2000">
    
      <div class="card btn btn-light border border-3 border-dark" style="width:18rem;margin-left: 15%;">
          <a href="loginstudent.jsp" class="btn">
              <h5 style="text-align:center;color:#8B0000;"class="card-title"><b>NOU Students</b></h5>
        <p style="text-align:center;" class="card-text">The Campus enrolled students can login to view the notification by university, access the e-contents, give assignments & track thier progress report.</p>
        </a>
      
    </div>
  </div>
                        
</div>
                <div class="row mt-5 bg-light">
                    
                    <div class="col-sm-12"><b style="font-size:25px;"><br>ADMINISTRATIVE </b><b style="color:#8B0000;font-size:25px;">SETUP....<br></b></div>
                </div>
                <div class="row bg-light">
                    <div class="col-sm-3 text-center"  data-aos="fade-up"
     data-aos-duration="2000">
                        <div class="card border border-3 border-dark mb-5 ms-5 mt-3" style="width: 15rem;">
  <img src="images/ashok.jpg" style="height:220px;" class="card-img-top" alt="Image not found...">
  <div class="card-body" style="background-color:#FFA500;">
      <h5 class="card-title" style="color:#8B0000;">MR. ASHOK KUMAR</h5><br>
    <p class="card-text" style="color:#8B0000;">PRINCIPAL</p>
    
  </div>
</div>
                    </div>
                    <div class="col-sm-3 text-center"   data-aos="fade-up"
     data-aos-duration="2000">
                        <div class="card border border-3 border-dark mb-5 ms-3 mt-3" style="width: 15rem;">
  <img src="images/DC.jpg" style="height:220px;" class="card-img-top" alt="Image not found...">
  <div class="card-body" style="background-color:#FFA500;">
      <h5 class="card-title" style="color:#8B0000;">Mr.Dalchand</h5>
    <p class="card-text" style="color:#8B0000;">HOD Computer Science & Engineering</p>
    
  </div>
</div>
                    </div>
                    <div class="col-sm-3 text-center"  data-aos="fade-up"
     data-aos-duration="2000">
                           <div class="card border border-3 border-dark mb-5 ms-3 mt-3" style="width: 15rem;">
  <img src="images/jp.jpg" style="height:220px;" height:50px class="card-img-top" alt="Image not found...">
  <div class="card-body" style="background-color:#FFA500;">
      <h5 class="card-title" style="color:#8B0000;">Mr.Jai Prakash Singh</h5><br>
    <p class="card-text" style="color:#8B0000;">HOD Civil Engineering</p>
    
  </div>
</div>
                    </div>
                    <div class="col-sm-3 text-center" data-aos="fade-up"
     data-aos-duration="2000">
                           <div class="card border border-3 border-dark mb-5 ms-3 mt-3" style="width: 15rem;">
  <img src="#" style="height:220px;" class="card-img-top" alt="Image not found...">
  <div class="card-body" style="background-color:#FFA500;">
    <h5 class="card-title" style="color:#8B0000;">-------------</h5>
    <br>
    <p class="card-text" style="color:#8B0000;">HOD Textile Engineering</p>
    
  </div>
</div>
                    </div>
                </div>
                    <!--Admin type end-->
                

                <!--Users of the portal start -->
                
                <%@include file="footermaster.jsp"%>
                
            <!-- Outer end -->
        </div>
                  <!-- aos start -->
  <!-- aos end -->
        
    </body>
</html>
