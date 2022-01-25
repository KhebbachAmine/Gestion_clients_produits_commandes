<%-- 
    Document   : InsertCmd
    Created on : 8 avr. 2020, 03:01:02
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
                
                <<a href="../index.html">TP1</a>
                   <a href="../Client/ListeClient.jsp">Gestion Client</a>
                   <a href="../Produit/ListProduit.jsp">Gestion Produit</a>
                   <a href="ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
      <div class="container">
          <form action="InsertCmd_code.jsp">
                <div class="form">
                    <label>Num Commond : </label>
                    <%ResultSet rs= CNX.Select_requwest("select max(numcmd) from CMD");
                        int maxref=0;
                        if(rs.next()){
                    String numcmd= rs.getString(1);
                   if(numcmd== null){
                       maxref=1;
                   }else{
                       maxref=Integer.parseInt(numcmd)+1;
                   }}
                    %>
                    <input required="" value="<%= maxref %>" name="numcmd" type="number" class="form-control" min="0" placeholder="Entre la REF " readonly="">
                </div><div class="form">
                    <label>Date Command : </label>
                    <input required name="date" type="date" class="form-control"  placeholder="Entre le Libelle ">
                </div> 
                <div class="form">
                    <label>Client : </label>
                    <select name="cin" class="form-control" required >
                        <option value="null" selected="" disabled=""> Selectione le Client </option>
                       <% ResultSet  rs2= CNX.Select_requwest("select PRENOM,NOM,CIN from Client_v2");
                    while (rs2.next()) {  %>
                    <option value="<%= rs2.getString(3) %>"><%= rs2.getString(1) %> <%= rs2.getString(2) %></option>
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
