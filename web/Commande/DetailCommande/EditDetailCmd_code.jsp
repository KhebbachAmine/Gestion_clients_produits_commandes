<%-- 
    Document   : EditDetailCmd_code
    Created on : 11 avr. 2020, 03:23:23
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
            String qte=request.getParameter("qte");
            String qte0=request.getParameter("qte0");
            String num=request.getParameter("numcmd");
            boolean rs=CNX.AMS_requwest("UPDATE Detailcmd set QTEPICK="+qte+"where numcmd="+num+" and refp="+ref+" ");
            int qteu=Integer.parseInt(qte);
            int qte0u=Integer.parseInt(qte0);
            
            if(rs==false){out.print("<script>alert('there is a problem');</script>");}else{
                out.print("<script>alert('it add seccsecc');</script>");
            if(qteu>qte0u){
                int c=qteu-qte0u;
            boolean rs2=CNX.AMS_requwest("UPDATE PRODUIT SET QTE=QTE-"+c+" where REFP="+ref);}
            else{
                int c=qte0u-qteu;
            boolean rs2=CNX.AMS_requwest("UPDATE PRODUIT SET QTE=QTE+"+c+" where REFP="+ref);}}
          RequestDispatcher dispatcher = request.getRequestDispatcher("DetailCmd.jsp");
         dispatcher.include(request, response);%>
    </body>
</html>
