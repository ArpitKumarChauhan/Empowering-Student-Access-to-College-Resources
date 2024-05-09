<% 
    session.invalidate();//session clear,close,kill
    response.sendRedirect("../loginadmin.jsp");
    
%>