<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
String userid=request.getParameter("userid");
String pwd=request.getParameter("pwd");
//this query is use for seclect record from database.
String q="select * from logininfo where userid='"+userid+"'";

DbManager db=new DbManager();
ResultSet rs=db.selectQuery(q);
boolean status=false;
if(rs!=null)
{
    if(rs.next()==true)
    {
        String pass=rs.getString("pwd");
        if(pass.equals(pwd)==true)
        {
            status=true;          
        }
    }
    else
    {
        
    }
}
else
{
    
}
if(status==true)
{
        session.setAttribute("adminid",userid);
        %>
        
        <script>
         alert('Login Success.');
         window.location.href='adminzone/adminwelcome.jsp';
     </script>
        <%
        //response.sendRedirect("studentzone/welcome.jsp");
}
else
{
   %> //out.print("Login not Success.");
    <script>
         alert('Login Details Invalid');
         window.location.href='loginadmin.jsp';
     </script>
     <%
}
%>

