<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   

<html>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
    </head>
    <body style="text-align: center;">
        <h1>Bienvenue!</h1>
        <br><br>
        <div style="display:flex;margin-left: auto;
    margin-right: auto;
    width: min-content;">
        <form method="post" action="VilleServ">
        <button type="submit" class="btn btn-info" style="width:176px">Calculer une distance</button>
       </form>
       <form method="get" action="VilleServ">
        <button type="submit" class="btn btn-info" style="width:176px;margin-left:23px;">Afficher les villes</button>
       </form>
       </div><br><br>
       <img src="images/france-political-map.jpg" alt="map" style="opacity: 0.5;
    width: 500px;
    height: 500px;"/>
   
   
    </body>
</html>
