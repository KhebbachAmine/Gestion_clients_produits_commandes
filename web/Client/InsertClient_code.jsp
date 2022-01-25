<%-- 
    Document   : InsertClient_code
    Created on : 8 avr. 2020, 00:27:16
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
        <%  String cin=request.getParameter("cin");
            String pre=request.getParameter("pre");
            String nom=request.getParameter("nom");
            String age=request.getParameter("age");
            String sex=request.getParameter("sex");
                    
                    
                    
                    
             boolean rs=CNX.AMS_requwest(" INSERT INTO Client_v2 VALUES('"+pre+"','"+nom+"',"+age+",'"+cin+"','"+sex+"')");
             if(rs==false){out.print("<script>alert('there is a problem');</script>");}else{out.print("<script>alert('it add seccsecc');</script>");}
             RequestDispatcher dispatcher = request.getRequestDispatcher("ListeClient.jsp");
             dispatcher.include(request, response);
        %>
    </body>
</html>
