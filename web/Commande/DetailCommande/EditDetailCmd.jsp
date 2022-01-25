<%-- 
    Document   : EditDetailCmd
    Created on : 11 avr. 2020, 03:16:03
    Author     : LEGION
--%>

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
            <form action="EditDetailCmd_code.jsp">
                <div class="form">
                    <label>Ref : </label>
                    <input value="<%= request.getParameter("ref") %>" required="" name="ref" type="number" class="form-control" min="0" placeholder="Entre la REF " readonly="">
                    <input type="text" hidden="" name="numcmd" value="<%= request.getParameter("numcmd") %>">
                    <input type="text" hidden="" name="pre" value="<%= request.getParameter("pre") %>">
                    <input type="text" hidden="" name="nom" value="<%= request.getParameter("nom") %>">
                    <input type="text" hidden="" name="date" value="<%= request.getParameter("date") %>">
                    <input type="text" hidden="" name="qte0" value="<%= request.getParameter("qte") %>">
                    
                </div><div class="form">
                    <label>Libelle : </label>
                    <input value="<%= request.getParameter("lib") %>" required="" name="lib" type="text" class="form-control"  placeholder="Entre le Libelle "readonly="">
                </div> <div class="form">
                    <label>Prix Uniter : </label>
                    <input value="<%= request.getParameter("prix") %>" required="" name="prix" type="number" class="form-control" min="0" placeholder="Entre le prix "readonly="">
                </div> <div class="form">
                    <label>Quantiter : </label>
                    <input required="" name="qte" type="number" class="form-control" min="0" max="<%= Integer.parseInt(request.getParameter("qteo"))+Integer.parseInt(request.getParameter("qte")) %>" placeholder="Entre la Quantiter " value="<%= request.getParameter("qte") %>">
                </div>
                <div class="form">
                    <button type="submit" class="btn btn-bleu">Valider</button>
                    <button type="reset" class="btn btn-red">Vider</button>
                </div>
            </form>
        </div>
    </body>
</html>
