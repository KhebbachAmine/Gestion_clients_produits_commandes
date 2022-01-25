<%-- 
    Document   : EditProduit
    Created on : 8 avr. 2020, 02:42:23
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Styles.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%      String ref=request.getParameter("ref");       
            String lib=request.getParameter("lib");
            String prix=request.getParameter("prix");
            String qte=request.getParameter("qte");
    %>
    <body>
         <div class="topnav">
                
                <a href="../index.html">TP1</a>
                   <a href="../Client/ListeClient.jsp">Gestion Client</a>
                   <a href="ListProduit.jsp">Gestion Produit</a>
                   <a href="../Commande/ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
        <div class="container">
            <form action="EditProduit_code.jsp">
                <div class="form">
                    <label>Ref : </label>
                    <input required="" value="<%= ref %>" name="ref" type="number" class="form-control" min="0" placeholder="Entre la REF ">
                    <input required="" value="<%= ref %>" name="ref0" type="number" class="form-control" min="0" placeholder="Entre la REF " hidden="">
                </div><div class="form">
                    <label>Libelle : </label>
                    <input required="" value="<%= lib %>" name="lib" type="text" class="form-control"  placeholder="Entre le Libelle ">
                </div> <div class="form">
                    <label>Prix Uniter : </label>
                    <input required="" value="<%= prix %>" name="prix" type="number" class="form-control" min="0" placeholder="Entre le prix ">
                </div> <div class="form">
                    <label>Quantiter : </label>
                    <input required="" value="<%= qte %>" name="qte" type="number" class="form-control" min="0" placeholder="Entre la Quantiter ">                
                <div class="form">
                    <button type="submit" class="btn btn-bleu">Valider</button>
                    <button type="reset" class="btn btn-red">Vider</button>
                </div>
            </form>
        </div>
    </body>
</html>
