<%-- 
    Document   : EditCmd
    Created on : 8 avr. 2020, 04:40:57
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
    <%      String numcmd=request.getParameter("numcmd");
            String date = request.getParameter("date");
            String cin = request.getParameter("cin");
    %>
    <body>
         <div class="topnav">
                
                <a href="../index.html">TP1</a>
                   <a href="../Client/ListeClient.jsp">Gestion Client</a>
                   <a href="../Produit/ListProduit.jsp">Gestion Produit</a>
                   <a href="ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
        <div class="container">
            <form action="EditCmd_code.jsp">
                <div class="form">
                    <label>Num Commond : </label>
                    
                    <input required="" value="<%= numcmd %>" name="numcmd" type="number" class="form-control" min="0" placeholder="Entre la REF " readonly="">
                </div><div class="form">
                    <label>Date Command : </label>
                    <input required name="date" value="<%= date %>" type="date" class="form-control"  placeholder="Entre le Libelle ">
                </div> 
                <div class="form">
                    <label>Client : </label>
                    <select name="cin" class="form-control" required >
                        <option value="null" selected="" disabled=""> Selectione le Client </option>
                       <% ResultSet  rs2= CNX.Select_requwest("select PRENOM,NOM,CIN from Client_v2");
                    while (rs2.next()) {  %>
                    <option value="<%= rs2.getString(3) %>" <%if(cin.equals(rs2.getString(3))){%> selected="" <%}%> ><%= rs2.getString(1) %> <%= rs2.getString(2) %></option>
                        <%}%>
                    </select>
                </div> 
                <div class="form">
                    <button type="submit" class="btn btn-bleu">Valider</button>
                    <button type="reset" class="btn btn-red">Vider</button>
                </div>
            </form>
        </div>
    </body>
</html>
