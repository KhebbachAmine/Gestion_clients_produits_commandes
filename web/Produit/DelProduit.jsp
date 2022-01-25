<%-- 
    Document   : DelProduit
    Created on : 8 avr. 2020, 02:38:59
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
        <%String cin=request.getParameter("ref");
          boolean rs=CNX.AMS_requwest("DELETE from Produit WHERE CIN ='"+cin+"'");
  
         if(rs == false)
         {out.print("<script>alert('there is a problem')</script>");}
         else{out.print("<script>alert('it del seccsecc')</script>");}
         RequestDispatcher dispatcher = request.getRequestDispatcher("ListeProduit.jsp");
          dispatcher.include(request, response);
             
%> 
    </body>
</html>
