

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<marquee direction="up" behavior="scroll" onmousemove="this.stop()" onmouseout="this.start()" scrollamount="6"  style="height: 300px;">
    <ul style="color: #FFA500;">
        
    <%
      String cmd="select * from notification";
      DbManager db=new DbManager();
      ResultSet rs=db.selectQuery(cmd);
      while(rs.next())
      {
      %>
      
      <li> <!--<img src="images/new.gif" height="50px" width="50px" />--> <%=rs.getString("ntext") %></li>
      <%
      }
    %>
    </ul>
    
</marquee>