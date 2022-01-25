<%-- 
    Document   : DelCmd
    Created on : 8 avr. 2020, 04:32:13
    Author     : LEGION
--%>

<%@page import="Classes.CNX"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%String numcmd=request.getParameter("numcmd");
             
          boolean rs=CNX.AMS_requwest("DELETE from Cmd WHERE numcmd ="+numcmd+"");  
          if(rs == false){out.print("<script>alert('there is a problem(DELETE from Cmd WHERE numcmd ="+numcmd+")')</script>");}else{out.print("<script>alert('it del seccsecc')</script>");}
          RequestDispatcher dispatcher = request.getRequestDispatcher("ListeCmd.jsp");
          dispatcher.include(request, response);
%>
    </body>
</html>
