<%-- 
    Document   : InsertClient
    Created on : 7 avr. 2020, 23:29:24
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Styles.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Client</title>
    </head>
    <body>
         <div class="topnav">
                
                <a href="../index.html">TP1</a>
                   <a href="ListeClient.jsp">Gestion Client</a>
                   <a href="../Produit/ListProduit.jsp">Gestion Produit</a>
                   <a href="../Commande/ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
        <div class="container">
            <form action="InsertClient_code.jsp" >
                <div class="form">
                    <label>Prenom : </label>
                    <input required="" name="pre" type="text" class="form-control" placeholder="Entre votre Prenom ">
                </div> 
                <div class="form">
                    <label>Nom : </label>
                    <input required="" name="nom" type="text" class="form-control" placeholder="Entre votre Nom ">
                </div> 
                <div class="form">
                    <label>Age : </label>
                    <input required="" name="age" type="number" class="form-control" min="0" placeholder="Entre votre Age ">
                </div> 
                <div class="form">
                    <label>Cin : </label>
                    <input required="" name="cin" type="text" class="form-control" placeholder="Entre votre CIN ">
                </div>
                <div class="form">
                    <label>Sex : </label>
                    <select name="sex" class="form-control" required="" >
                        <option value="null" selected="" disabled=""> Selectione voter sex </option>
                        <option value="Homme">Homme</option>
                        <option value="Famme">Famme</option>
                        <option value="Autre">Autre</option>
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
