<%-- 
    Document   : InsertCmd_code
    Created on : 8 avr. 2020, 04:19:41
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
       
        <%  String numcmd=request.getParameter("numcmd");
            String date = request.getParameter("date");
            String cin = request.getParameter("cin");
            
            boolean rs=CNX.AMS_requwest(" INSERT INTO Cmd VALUES("+numcmd+",to_date('"+date+"','yyyy-MM-dd'),'"+cin+"')");
            if(rs==false){out.print("<script>alert('there is a problem');</script>");}
            else{out.print("<script>alert('it add seccsecc');</script>");}
            RequestDispatcher dispatcher = request.getRequestDispatcher("DetailCommande/ChoixProduit.jsp");
          dispatcher.include(request, response);
        %>
    </body>
</html>
