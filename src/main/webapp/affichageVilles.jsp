<%@page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">


<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src=" https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src=" https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>



<title>Affichages villes</title>



</head>
<body id="page-top" style="margin-left: auto;
    margin-right: auto;
    width: min-content;">

<script type="text/javascript">
$(document).ready( function () {
   $('#myTable').DataTable();
} );
</script>
<h2 style="text-align:center">Liste des villes</h2>

<br><br>
	<table id="myTable" class="table table-striped table-bordered" >
		  <thead>
			<tr>
			<th>Code Commune</th>
			<th>Nom Commune</th>
			<th>Code Postal</th>
			<th>Libelle</th>
			<th>Ligne</th>
			<th>Latitude</th>
			<th>Longitude</th>
			<th></th>
			<th></th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="v" items="${listeVilles}" varStatus="loop">
			<tr>
				<td class="align-middle"><c:out value="${v.getCodeComune()}"></c:out></td>
				<td class="align-middle"><c:out value="${v.getNomCommune()}"></c:out></td>
				<td class="align-middle"><c:out value="${v.getCodePostal()}"></c:out></td>
				<td class="align-middle"><c:out value="${v.getLibelle()}"></c:out></td>
				<td class="align-middle"><c:out value="${v.getLigne()}"></c:out></td>
				<td class="align-middle"><c:out value="${v.getLatitude()}"></c:out></td>
				<td class="align-middle"><c:out value="${v.getLongitude()}"></c:out></td>
				<td class="align-middle">
				<form method="post" action="DelVille">
				<button type="submit" value="${v.getCodeComune()}" name="id"><span class="fa fa-trash" aria-hidden="true" style="color:red"></span>
				</button>
				</form></td>
				<td class="align-middle">
				<form method="get" action="UpdateV"><button type="submit" value="${v.getCodeComune()}" name="id">
				<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				</form></td>
				</tr>
		</c:forEach>
		</tbody>
		</table>
	
	
	</body>
	</html>