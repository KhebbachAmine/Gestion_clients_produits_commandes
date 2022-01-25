<%-- 
    Document   : DetailCmd
    Created on : 11 avr. 2020, 02:31:10
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Classes.CNX"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../../Styles.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="topnav">
                
                   <a href="../../index.html">TP1</a>
                   <a href="../../Client/ListeClient.jsp">Gestion Client</a>
                   <a href="../../Produit/ListProduit.jsp">Gestion Produit</a>
                   <a href="../ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
        <%  String numcmd= request.getParameter("numcmd");
            String pre=request.getParameter("pre");
            String nom=request.getParameter("nom");
            String date=request.getParameter("date");
            
        %>
        <div class="container">
            <div class="form">
                <label>Num Commond : </label>
                <input type="text" class="form-control" value="<%= numcmd%>" readonly="">
            </div>
            <div class="form">
                <label>Client : </label>
                <input type="text"class="form-control" value="<%= pre%> <%= nom%>" readonly="">
            </div>
            <div class="form">
                <label>Date : </label>
                <input type="text"class="form-control" value="<%= date%>" readonly="">
            </div>
            <a href="ChoixProduit.jsp?numcmd=<%= request.getParameter("numcmd")%>" class="btn btn-bleu" >Ajouter</a>
            <table class="tab">
                <thead class="content">
                    <tr class="head">
                        <th>Ref</th>
                        <th>Libelle</th>
                        <th>Quantiter</th>
                        <th>Prix (qte*prix uniter)</th>                                                
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody class="content tr-hover">
                    <%  
                        ResultSet rs= CNX.Select_requwest("select d.refp,p.libelle,d.qtepick,d.qtepick*p.prixunit,p.qte from detailcmd d join produit p on d.refp=p.refp where d.numcmd= "+numcmd);
                    while (rs.next()) {  %>
                    <tr id="bb">
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        
                        
                        <td>
                            <a class="btn btn-bleu" onclick="return confirm('?')" href="EditDetailCmd.jsp?ref=<%= rs.getString(1) %>&qte=<%= rs.getString(3) %>&numcmd=<%= numcmd%>&date=<%= date%>&nom=<%= nom%>&pre=<%= pre%>&qteo=<%= rs.getString(5) %>">edit</a><span>|</span>
                            <a class="btn btn-red" onclick="return confirm('?')" href="DelDetailCmd.jsp?ref=<%= rs.getString(1) %>&numcmd=<%= numcmd%>&qte=<%= rs.getString(3) %>&date=<%= date%>&nom=<%= nom%>&pre=<%= pre%>">supp</a>
                        </td>
                    </tr>   
                    
                    <%}%> 
                </tbody>
            </table>
        </div>
    </body>
</html>
