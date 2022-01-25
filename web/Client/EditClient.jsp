<%-- 
    Document   : EditClient
    Created on : 8 avr. 2020, 00:36:33
    Author     : LEGION
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../Styles.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editer Client</title>
    </head>
    <body>
        <%  String cin=request.getParameter("cin");
            String pre=request.getParameter("pre");
            String nom=request.getParameter("nom");
            String age=request.getParameter("age");
            String sex=request.getParameter("sex");
        %>
         <div class="topnav">
                
                <a href="../index.html">TP1</a>
                <a href="ListeClient.jsp">Gestion Client</a>
                <a href="../Produit/ListProduit.jsp">Gestion Produit</a>
                <a href="../Commande/ListeCmd.jsp">Gestion Command</a>                 
               
            </div>
        <div class="container">
            <form action="EditClient_code.jsp" >
                <div class="form">
                    <label>Prenom : </label>
                    <input required="" value="<%=pre %>" name="pre" type="text" class="form-control" placeholder="Entre votre Prenom ">
                </div> 
                <div class="form">
                    <label>Nom : </label>
                    <input required="" value="<%=nom %>" name="nom" type="text" class="form-control" placeholder="Entre votre Nom ">
                </div> 
                <div class="form">
                    <label>Age : </label>
                    <input required="" value="<%=age %>" name="age" type="number" class="form-control" min="0" placeholder="Entre votre Age ">
                </div> 
                <div class="form">
                    <label>Cin : </label>
                    <input required="" value="<%=cin %>" name="cin" type="text" class="form-control" placeholder="Entre votre CIN ">
                    <input type="text" hidden="" readonly="" name="cin0" value="<%=cin%>" >
                </div>
                <div class="form">
                    <label>Sex : </label>
                    <select name="sex" class="form-control" required="" >
                        <option value="null" selected="" disabled=""> Selectione voter sex </option>
                        <option <%if(sex.equals("Homme")){%> selected="" <%}%>value="Homme">Homme</option>
                        <option <%if(sex.equals("Famme")){%> selected="" <%}%> value="Famme">Famme</option>
                        <option <%if(sex.equals("Autre")){%> selected="" <%}%> value="Autre">Autre</option>
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
