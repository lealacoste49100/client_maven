<%@page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<head>
<meta charset="ISO-8859-1">
<title>Distance</title>
</head>
<body  style="text-align: center;">

<h2>Choisissez deux villes : </h2>
<br>
<form method="post" action="CalculD">
<div  style="display: flex;margin-left: auto;
    margin-right: auto;
    width: min-content;">
<div class="form-group" style="width:250px;">
      <label for="ville1" style="font-weight:bold">Ville n°1</label>
 <select id="ville1" name="ville1" required class="form-control" data-role="select-dropdown" data-profile="minimal">
          <%if (session.getAttribute("ville1") != null){ %>
    
    <option value="${ville1}" selected>${ville1}</option>
				
					<c:forEach items="${listoutils}" var="v">
						<c:if test="${v.getNomCommune() != ville1}">
            				<option  value="${v.getNomCommune()}">${v.getNomCommune()}</option>
       					</c:if>
			
					</c:forEach>
      <%session.setAttribute("ville1", null); %>
<%}
       
          else{ %>
          <c:forEach items="${listeVilles}" var="v">
      <option value="<c:out value="${v.getCodeComune()}"></c:out>"><c:out
							value="${v.getNomCommune()}"></c:out></option>

</c:forEach>
        
          
           
          <%} %>
      </select>
     
      </div>
     
     <div class="form-group" style="margin-left:23px;width:250px;">
      <label for="ville2" style="font-weight:bold">Ville n°2</label>
      <select id="ville2" name="ville2" required class="form-control" data-role="select-dropdown" data-profile="minimal">
     
               <%if (session.getAttribute("ville2") != null){ %>
    
    <option value="${ville2}" selected>${ville2}</option>
				
					<c:forEach items="${listoutils}" var="v">
						<c:if test="${v.getNomCommune() != ville2}">
            				<option  value="${v.getNomCommune()}">${v.getNomCommune()}</option>
       					</c:if>
			
					</c:forEach>
      <%session.setAttribute("ville2", null); %>
<%}
       
          else{ %>
          <c:forEach items="${listeVilles}" var="v">
      <option value="<c:out value="${v.getCodeComune()}"></c:out>"><c:out
							value="${v.getNomCommune()}"></c:out></option>

</c:forEach>
        
          
           
          <%} %>
      </select>
     </div>
      </div>
      <%if (session.getAttribute("km")!= null) {  %>
      <br>
     <p> La distance entre ces deux villes est de : <strong><%=session.getAttribute("km")%> km</strong>. </p>
     <br>
     <button type="button" onclick="window.location.href='index.jsp'" class="btn btn-info">Retour à l'accueil</button>
      <% session.setAttribute("km",null); 
      }else{ %>
      <br><br>
      <div style="display:flex; margin-left: auto;
    margin-right: auto;
    width: min-content;">
     <button type="submit" type="button" class="btn btn-info" style="width:176px">Calculer la distance</button>
     <button type="button" onclick="window.location.href='index.jsp'" class="btn btn-light" style="margin-left:23px; width:176px">Retour à l'accueil</button>
     </div>
     <%} %>
           
     
      </form>
     
      
</body>
</html>