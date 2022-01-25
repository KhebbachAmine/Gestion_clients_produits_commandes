<%-- 
    Document   : ListProduit
    Created on : 8 avr. 2020, 02:50:55
    Author     : LEGION
--%>

<%@page import="Classes.CNX"%>
<%@page import="java.sql.ResultSet"%>
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
                   <a href="ListProduit.jsp">Gestion Produit</a>
                   <a href="../Commande/ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
        <div class="container">
            <a href="InsertProduit.jsp" class="btn btn-bleu" >Ajouter</a>
            <table class="tab">
                <thead class="content">
                    <tr class="head">
                        <th>Ref</th>
                        <th>Libelle</th>
                        <th>Prix uniter</th>
                        <th>Quantiter</th>                        
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody class="content tr-hover">
                    <% ResultSet rs= CNX.Select_requwest("select *from Produit");
                    while (rs.next()) {  %>
                    <tr id="bb">
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        
                        
                        <td>
                            <a class="btn btn-bleu" onclick="return confirm('?')" href="EditProduit.jsp?ref=<%= rs.getString(1) %>&lib=<%= rs.getString(2) %>&prix=<%= rs.getString(3) %>&qte=<%= rs.getString(4) %>">edit</a><span>|</span>
                            <a class="btn btn-red" onclick="return confirm('?')" href="DelProduit.jsp?ref=<%= rs.getString(1) %>">supp</a>
                        </td>
                    </tr>   
                    
                    <%}%> 
                </tbody>
            </table>
        </div>
    </body>
</html>
