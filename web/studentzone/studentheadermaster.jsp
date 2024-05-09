<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<!-- Headline start -->
            
            <div class="row colorouter text-light">
                <div class="col-sm-4" style="text-align:center;">
                    <!--Welcome to Student Zone.-->
                    
                    <%=session.getAttribute("name")%>
                </div>
                <div class="col-sm-4" style="text-align:center;">
                    <%=new DbManager().getDate() %>
                </div>
                <div class="col-sm-4" style="text-align:center;">
                    UserId : <%=session.getAttribute("studentid")%>
                </div>
            </div>
<!-- Headline end -->

<!-- Header start-->
                
                <div class="row">
                    <div class="col-sm-1">
                    </div>
                        <div class="col-sm-1 py-3">
                        <img style="width:90px;"src="images/logo.png" class="logo"/>
                    </div>
                    <div class="col-sm-6 py-2">
                        <h4 style="font-size:30px;color:#8B0000;"><b>G.P.C PORTAL</b></h4>
                        <p style="color:#E67E22;">
                        (A Concept by Govt. Polytchnic Changipur)<br/>
                        (An Initiative Taken By Govt. Polytechnic Changipur)</p>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
       
<!-- Header end-->

<!--Navbar start-->
                
                <div class="row">
                    <div class="col-sm-12 p-0">
                        <nav class="navbar navbar-expand-lg" style="background-color: #BFC9CA">
  <div class="container-fluid">
      
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item ms-5">
          <a style="color:#8B0000;"class="nav-link active" aria-current="page" href="welcome.jsp">Dashboard</a>
        </li>
        <li class="nav-item ms-3">
          <a style="color:#8B0000;"class="nav-link" href="feedback.jsp">Feedback</a>
        </li>
        
        <li class="nav-item ms-3">
          <a style="color:#8B0000;" class="nav-link" href="course.jsp">Course</a>
        </li>
        <li class="nav-item ms-3">
          <a style="color:#8B0000;" class="nav-link" href="studymaterial.jsp">Study material</a>
        </li>
        <li class="nav-item ms-3">
          <a style="color:#8B0000;" class="nav-link" href="complaint.jsp">Complaint</a>
        </li>
        <li class="nav-item ms-3">
          <a style="color:#8B0000;" class="nav-link" href="profile.jsp">Profile</a>
        </li>
         <li class="nav-item ms-3">
          <a style="color:#8B0000;" class="nav-link" href="changepassword.jsp">Change Password</a>
        </li>
         <li class="nav-item ms-3">
          <a style="color:#8B0000;" class="nav-link" href="logout.jsp">LogOut</a>
        </li>
      </ul>
      <img style="width:50px;"src="images/logo.png" class="logo"/>
        <a  style="color:#E67E22;"class="navbar-brand me-5" href="#"><b>NOULMS</b></a>
      
    </div>
  </div>
</nav>
                    </div>
                </div>
                
<!--Navbar end-->