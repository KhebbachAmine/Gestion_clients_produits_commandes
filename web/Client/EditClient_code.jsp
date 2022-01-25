<%-- 
    Document   : EditClient_code
    Created on : 8 avr. 2020, 00:43:21
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
            String cin0=request.getParameter("cin0");
            String pre=request.getParameter("pre");
            String nom=request.getParameter("nom");
            String age=request.getParameter("age");
            String sex=request.getParameter("sex");
                    
                    
                    
                    
             boolean rs=CNX.AMS_requwest("UPDATE CLIENT_V2 SET PRENOM ='"+pre+"',NOM='"+nom+"',AGE="+age+",CIN='"+cin+"',SEXE='"+sex+"' WHERE CIN='"+cin0+"'");
             if(rs==false){out.print("<script>alert('there is a problem');</script>");}else{out.print("<script>alert('it add seccsecc');</script>");}
             RequestDispatcher dispatcher = request.getRequestDispatcher("ListeClient.jsp");
             dispatcher.include(request, response);
        %>
    </body>
</html>
