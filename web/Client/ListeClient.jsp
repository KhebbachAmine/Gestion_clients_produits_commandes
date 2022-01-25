<%-- 
    Document   : ListeClient
    Created on : 8 avr. 2020, 00:45:25
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
                   <a href="ListeClient.jsp">Gestion Client</a>
                   <a href="../Produit/ListProduit.jsp">Gestion Produit</a>
                   <a href="../Commande/ListeCmd.jsp">Gestion Command</a>
            </div>
        <div class="container">
            <a href="InsertClient.jsp" class="btn btn-bleu" >Ajouter</a>
            <table class="tab">
                <thead class="content">
                    <tr class="head">
                        <th>Prenom</th>
                        <th>Nom</th>
                        <th>Age</th>
                        <th>CIN</th>
                        <th>Sexe</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody class="content tr-hover">
                    <% ResultSet rs= CNX.Select_requwest("select *from Client_v2");
                        while (rs.next()) {  %>
                        <tr>
                            <td><%= rs.getString(1) %></td>
                            <td><%= rs.getString(2) %></td>
                            <td><%= rs.getString(3) %></td>
                            <td><%= rs.getString(4) %></td>
                            <td><%= rs.getString(5) %></td>
                            <td>
                                <a class="btn btn-bleu" onclick="return confirm('?')" href="EditClient.jsp?cin=<%= rs.getString(4) %>&nom=<%= rs.getString(2) %>&pre=<%= rs.getString(1) %>&age=<%= rs.getString(3) %>&sex=<%= rs.getString(5) %>">edit</a>
                                <span>|</span><a class="btn btn-red" onclick="return confirm('?')" href="DelClient.jsp?cin=<%= rs.getString(4) %>">supp</a>
                            </td>
                        </tr>
                    <%}%> 
                </tbody>
            </table>
        </div>
    </body>
</html>
