<%-- 
    Document   : DelDetailCmd
    Created on : 11 avr. 2020, 02:53:43
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
        <%  String ref=request.getParameter("ref");                   
            String qte=request.getParameter("qte");
            String num=request.getParameter("numcmd");
            boolean rs2=CNX.AMS_requwest("UPDATE PRODUIT SET QTE=QTE+"+qte+" where REFP="+ref);
            boolean rs=CNX.AMS_requwest("DELETE from detailCmd WHERE numcmd ="+num+"and REFP="+ref);
            if(rs==false){out.print("<script>alert('there is a problem');</script>");}else{out.print("<script>alert('it add seccsecc');</script>");}
            RequestDispatcher dispatcher = request.getRequestDispatcher("DetailCmd.jsp");
          dispatcher.include(request, response);
            
        %>
    </body>
</html>
