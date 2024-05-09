<%@page import="connect.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<!-- headline start -->
            <div style="background-color:#660000;" class="row text-light">
                <div style="text-align:center;" class="col-sm-4">
                    Welcome to Admin Zone
                </div>
                
                <div style="text-align:center;" class="col-sm-4">
                    <%=new DbManager().getDate()  %>
                </div>
                <div style="text-align:center;" class="col-sm-4">
                    <%=session.getAttribute("adminid")%>
                </div>
            </div> 
            <!--headline end-->
            
             <!--header start-->
            <div class="row">
                    <div class="col-sm-1">
                    </div>
                        <div class="col-sm-1 py-3">
                        <img style="width:90px;"src="images/logogpc.png" class="logo"/>
                    </div>
                    <div class="col-sm-6 py-2">
                        <h4 style="font-size:30px;color:#8B0000;"><b>G.P.C PORTAL</b></h4>
                        <p style="color:#E67E22;">
                        (A Concept by Govt.Polytechnic Changipur)<br/>
                        (An Initiative Taken By Govt.Polytechnic Changipur)</p>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            
            
            <!--header end-->
            
             <!--navbar--->
            
            <div class="row mt-3">
              <div class="col-sm-12 p-0 bg-warning">
                   <nav class="navbar navbar-expand-lg"  style="background-color: #BFC9CA">
  <div class="container-fluid">
      
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       <li class="nav-item ms-5">
            <a style="color:#8B0000;" class="nav-link active" aria-current="page" href="adminwelcome.jsp">Dashboard</a>
        </li>
        <li class="nav-item ms-5">
            <a style="color:#8B0000;" class="nav-link active" aria-current="page" href="registration.jsp">Registration</a>
        </li>
        <li class="nav-item ms-3">
            <a style="color:#8B0000;" class="nav-link" href="notification.jsp">Notification</a>
        </li>
        <li class="nav-item dropdown ms-3">
          <a style="color:#8B0000;" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Upload
          </a>
          <ul class="dropdown-menu">
              <li><a style="color:#8B0000;" class="dropdown-item" href="course.jsp">Courses</a></li>
              
<!--              <li><a class="dropdown-item" href="studycenter.jsp">Study Centers</a></li>-->

<li><a style="color:#8B0000;" class="dropdown-item" href="usm.jsp">Study Material</a></li>
              
          </ul>
        </li>
        <li class="nav-item ms-3">
            <a style="color:#8B0000;" class="nav-link" href="feedback.jsp">Feedback</a>
        </li>
        
        <li class="nav-item ms-3">
            <a style="color:#8B0000;" class="nav-link" href="complaint.jsp">Complaint</a>
        </li>
        
        <li class="nav-item ms-3">
            <a style="color:#8B0000;" class="nav-link" href="studentlist.jsp">Student List</a>
        </li>
        
         <li class="nav-item ms-3">
            <a style="color:#8B0000;" class="nav-link" href="changepassword.jsp">Change Password</a>
        </li>
        
        <li class="nav-item ms-3">
            <a style="color:#8B0000;" class="nav-link" href="logout.jsp">Logout</a>
        </li>
        
        
      </ul>
        <img style="width:50px;"src="images/logogpc.png" class="logo"/>
        <a  style="color:#E67E22;"class="navbar-brand me-5" href="#"><b>G.P Changipur</b></a>
      
     
    </div>
  </div>
</nav> 
            </div>  
                
            </div>
             
             
             <!-- navbar end-->
             
             
             
            
            
            
            