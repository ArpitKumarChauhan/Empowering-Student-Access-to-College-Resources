<%@page import="connect.DbManager"%>
<!-- Headline start -->
            
            <div class="row colorouter text-light">
                <div class="col-sm-4" style="text-align:center;" data-aos="fade-right" data-aos-duration="3000">
                    <i  class="fa-solid fa-phone"></i>Call us :+91 7838845217
                </div>
                <div class="col-sm-4" style="text-align:center;" data-aos="zoom-in" data-aos-duration="3000">
                    <%=new DbManager().getDate()%>
                </div>
                <div class="col-sm-4" style="text-align:center;" data-aos="fade-left" data-aos-duration="3000">
                    <i class="fa-solid fa-envelope"></i>Email: gpcbijnor@gmail.com
                </div>
            </div>
<!-- Headline end -->

<!-- Header start-->
                
                <div class="row">
                    <div class="col-sm-1">
                    </div>
                        <div class="col-sm-1 py-3" data-aos="zoom-in" data-aos-duration="3000">
                        <img style="width:90px;"src="images/logogpc.png" class="logo"/>
                    </div>
                    <div class="col-sm-6 py-2" data-aos="zoom-in" data-aos-duration="3000">
                        <h4 style="font-size:30px;color:#8B0000;"><b>G.P.C PORTAL</b></h4>
                        <p style="color:#E67E22;">
                        (A Concept by Govt. Polytechnic Changipur)<br/>
                        (An Initiative Taken By Govt. Polytechnic Changipur)</p>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
       
<!-- Header end-->

<!--Navbar start-->
                
                <div class="row">
                    <div class="col-sm-12 p-0">
                        <nav style="background-color:#BFC9CA;"class="navbar navbar-expand-lg">
  <div class="container-fluid">
      
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item ms-5">
          <a style="color:#8B0000;" class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item ms-4">
          <a style="color:#8B0000;" class="nav-link" href="about.jsp">About Us</a>
        </li>
        <li class="nav-item dropdown ms-3">
          <a style="color:#8B0000;" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Course
          </a>
          <ul class="dropdown-menu">
            <li><a style="color:#8B0000;" class="dropdown-item" href="course.jsp">Courses</a></li>
            
          </ul>
        </li>
         <li class="nav-item dropdown ms-3">
          <a style="color:#8B0000;" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Login
          </a>
          <ul class="dropdown-menu">
            <li><a style="color:#8B0000;" class="dropdown-item" href="loginstudent.jsp">Student</a></li>
            <li><a style="color:#8B0000;" class="dropdown-item" href="loginadmin.jsp">Admin</a></li>
          </ul>
        </li>
         <li class="nav-item ms-3">
          <a style="color:#8B0000;" class="nav-link" href="contactus.jsp">Contact Us</a>
        </li>
        <li class="nav-item ms-4">
          <a style="color:#8B0000;" class="nav-link" href="https://bteup.ac.in/webapp/home.aspx">Result</a>
        </li>
      </ul>
        <div data-aos="zoom-in" data-aos-duration="3000">
        <img style="width:50px;"src="images/logogpc.png" class="logo"/>
        <a  style="color:#E67E22;"class="navbar-brand me-5" href="#"><b>G.P Changipur</b></a>
        </div>
      <!--
      <form class="d-flex" role="search">
        <input style="border-color:#8B0000;" class="form-control me-2" type="search" place  holder="Search" aria-label="Search">
        <button style="background-color:#E67E22;color:#8B0000;border-color: #8B0000;" class="btn btn-outline" type="submit">Search</button>
      </form>
      -->
    </div>
  </div>
</nav>
                    </div>
                </div>
                
<!--Navbar end-->
