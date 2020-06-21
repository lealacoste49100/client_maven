<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<head>
<meta charset="ISO-8859-1">
<title>Informations</title>
</head>
<body style="margin-left: auto;
    margin-right: auto;
    width: max-content;text-align:center">
<h2> Modifiez les paramètres que vous souhaitez changer</h2>
<br>
<form method="post" action="UpdateV">
<div class="form-group">
<label for="codePostal"><strong>Code postal :</strong></label>
			<input class="form-control form-perso" name="codePostal"
				id="codePostal" type="text" style="margin: auto;"
				value="<%=session.getAttribute("codePostal")%>" required><br>
				
				<label for="nomCommune"><strong>Nom de la commune :</strong></label>
			<input class="form-control form-perso" name="nomCommune"
				id="nomCommune" type="text" style="margin: auto;"
				value="<%=session.getAttribute("nomCommune")%>" required><br>
				
				<label for="latitude"><strong>Latitude :</strong></label>
			<input class="form-control form-perso" name="latitude"
				id="latitude" type="text" style="margin: auto;"
				value="<%=session.getAttribute("latitude")%>" required><br>
				
				<label for="longitude"><strong>Longitude :</strong></label>
			<input class="form-control form-perso" name="longitude"
				id="longitude" type="text" style="margin: auto;"
				value="<%=session.getAttribute("longitude")%>" required><br>
				
				<label for="libelle"><strong>Libellé :</strong></label>
			<input class="form-control form-perso" name="libelle"
				id="libelle" type="text" style="margin: auto;"
				value="<%=session.getAttribute("libelle")%>" required><br>
				
					<label for="ligne"><strong>Ligne :</strong></label>
			<input class="form-control form-perso" name="ligne"
				id="ligne" type="text" style="margin: auto;"
				value="<%=session.getAttribute("ligne")%>" required><br>
				
				<div style="display:flex; margin-left: auto;
    margin-right: auto;
    width: max-content">
				<button type="submit" type="button" class="btn btn-info" style="width:176px">Modifier</button>
				<button type="button" onclick="window.location.href='affichageVilles.jsp'" class="btn btn-light" style="margin-left:23px; width:176px">Retour à l'accueil</button>
				</div>
				</div>
				</form>
</body>
</html>