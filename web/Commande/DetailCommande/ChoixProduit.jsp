<%-- 
    Document   : ChoixProduit
    Created on : 10 avr. 2020, 02:01:48
    Author     : LEGION
--%>

<%@page import="Classes.CNX"%>
<%@page import="java.sql.ResultSet"%>
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
        <div class="container">
            <input type="text" hidden="" name="numcmd" value="<%= request.getParameter("numcmd") %>">
            
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
                            <a class="btn btn-bleu" onclick="return confirm('?')" href="ConfirmProduit.jsp?ref=<%= rs.getString(1) %>&lib=<%= rs.getString(2) %>&prix=<%= rs.getString(3) %>&qte=<%= rs.getString(4) %>&numcmd=<%= request.getParameter("numcmd") %>">Ajouter au panier</a>                            
                        </td>
                    </tr>   
                    
                    <%}%> 
                </tbody>
            </table>
        </div>
    </body>
</html>
