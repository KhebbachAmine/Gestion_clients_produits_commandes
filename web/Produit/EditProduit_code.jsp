<%-- 
    Document   : EditProduit_code
    Created on : 8 avr. 2020, 02:47:25
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
            String ref0=request.getParameter("ref0");
            String lib=request.getParameter("lib");
            String prix=request.getParameter("prix");
            String qte=request.getParameter("qte");                              
            boolean rs=CNX.AMS_requwest("UPDATE PRODUIT SET REFP="+ref+",LIBELLE='"+lib+"',PRIXUNIT="+prix+",QTE="+qte+" where REFP="+ref0);             
            if(rs==false){out.print("<script>alert('there is a problem');</script>");}
            else{out.print("<script>alert('it add seccsecc');</script>");}
            RequestDispatcher dispatcher = request.getRequestDispatcher("ListProduit.jsp");
          dispatcher.include(request, response);
             
    %>
    </body>
</html>
