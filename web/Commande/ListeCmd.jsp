<%-- 
    Document   : ListeCmd
    Created on : 8 avr. 2020, 05:03:31
    Author     : LEGION
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Classes.CNX"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Styles.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="topnav">
                
                <a href="../index.html">TP1</a>
                   <a href="../Client/ListeClient.jsp">Gestion Client</a>
                   <a href="../Produit/ListProduit.jsp">Gestion Produit</a>
                   <a href="ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
        <div class="container">
            <a href="InsertCmd.jsp" class="btn btn-bleu" >Ajouter</a>
            <table class="tab">
                <thead class="content">
                    <tr class="head">
                        <th>Num Command</th>
                        <th>Date command</th>
                        <th>Client</th>
                        <th>Montan</th>
                                               
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody class="content tr-hover">
                    <% ResultSet rs= CNX.Select_requwest("select cm.numcmd ,to_char(cm.datecmd,'yyyy-MM-dd'), c.prenom , c.nom ,cm.cin,(select sum(d.qtepick*p.prixunit) from CMD c join DETAILCMD d on c.NUMCMD=d.NUMCMD join PRODUIT p on p.REFP=d.REFP WHERE c.NUMCMD=cm.NUMCMD) from cmd cm join client_v2 c on cm.cin=c.cin order by cm.NUMCMD");
                    while (rs.next()) {  %>
                    <tr id="bb">
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>                        
                        <td><%= rs.getString(3) %> <%= rs.getString(4) %></td>
                        <td><%= rs.getString(6) %></td>
                        
                        
                        <td>
                            <a class="btn btn-bleu" onclick="return confirm('?')" href="EditCmd.jsp?numcmd=<%= rs.getString(1) %>&date=<%= rs.getString(2) %>&cin=<%= rs.getString(5) %>">edit</a><span>|</span>
                            <a class="btn btn-bleu" onclick="return confirm('?')" href="DetailCommande/DetailCmd.jsp?numcmd=<%= rs.getString(1)%>&date=<%= rs.getString(2)%>&nom=<%= rs.getString(4)%>&pre=<%= rs.getString(3)%>">detail</a><span>|</span>
                            <a class="btn btn-red" onclick="return confirm('?')" href="DelCmd.jsp?numcmd=<%= rs.getString(1) %>">supp</a>
                        </td>
                    </tr>   
                    
                    <%}%> 
                </tbody>
            </table>
        </div>
    </body>
</html>
