<%-- 
    Document   : InsertProduit_code
    Created on : 8 avr. 2020, 02:30:26
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
        <%String ref=request.getParameter("ref");
       
            String lib=request.getParameter("lib");
            String prix=request.getParameter("prix");
            String qte=request.getParameter("qte");
            String qtemin=request.getParameter("qtemin"); 
             boolean rs=CNX.AMS_requwest("INSERT INTO produit VALUES ("+ref+",'"+lib+"',"+prix+","+qte+","+qtemin+")");
             if(rs==false){out.print("<script>alert('there is a problem');</script>");}else{out.print("<script>alert('it add seccsecc');</script>");}
             RequestDispatcher dispatcher = request.getRequestDispatcher("ListeProduit.jsp");
          dispatcher.include(request, response);
             
    %>
    </body>
</html>
