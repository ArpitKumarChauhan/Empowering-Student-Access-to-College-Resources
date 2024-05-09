<!--admin Zone-->

<%@page import="connect.DbManager"%>
<%

    String oldpass=request.getParameter("oldpass");
    String newpass=request.getParameter("newpass");
    String repass=request.getParameter("repass");
    String userid=session.getAttribute("adminid").toString();
    boolean status=false;
    if(newpass.equals(repass))
    {
        
        status=true;
    }
    boolean b=false;
    if(status==true)
    {
        String q="update logininfo set pwd='"+newpass+"'where userid='"+userid+"' and pwd='"+oldpass+"' ";
        DbManager db=new DbManager();
        b=db.insertUpdateDelete(q);
    }
    else
    {
        %>
        <script>
            alert('New Password is not updated');
            window.location.href="adminzone/changepassword.jsp";
        </script>
        <%
    }
    if(b==true)
    {
        %>
        <script>
            alert('New Password successfully updated');
            window.location.href="../loginadmin.jsp";
        </script>
        <%
    }
    else
    {
        %>
        <script>
            alert('New Password is not updated');
            window.location.href="adminzone/changepassword.jsp";
        </script>
        <%
    }
    
    
%>