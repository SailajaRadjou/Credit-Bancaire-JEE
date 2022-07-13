<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<%@ include file = "css/style.jsp"%>
<title>Liste de Cr�dits</title>
</head>
<body>
<%@ include file = "layout/navbar-credit.jsp" %>

<div class="container mt-15">
<h3 style="margin-top: 5rem; margin-bottom: 3rem;">Liste de Cr�dits</h3>
<form method="post" action="search-credit" style="margin-top: 15px;">
	<div class="row g-3">
	  <div class="col">
	    <input type="text" class="form-control" placeholder="Nom" name="nom">
	  </div>
	  <div class="col">
	    <input type="text" class="form-control" placeholder="Prenom" name="prenom">
	  </div>
	  <button type="submit" class="btn btn-secondary col-sm-2 mb-2">Chercher</button>
	</div>
</form>

<hr style =	"margin-top: 2rem; margin-bottom: 2rem; height: 2px; border: 0; background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);">

<table class="table" style="margin-top: 15px;">
  <thead>
    <tr>
      
      <th scope="col">N� de Cr�dit</th>
      <th scope="col">Date de Demande</th>
      <th scope="col">Montant</th>
      <th scope="col">Dur�e</th>
      <th scope="col">Taux d'int�r�t</th>
      <th scope="col">Mensualit�</th>
      <th scope="col">�tat</th>   
      <th scope="col">Client Id</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var = 'c' items="${credits}">
    <tr>
      <td>${c.getNumCredit()}</td>
      <td>${c.getCreditDate()}</td>
      <td>${c.getCapital()}</td>
      <td>${c.getDuree()}</td>
      <td>${c.getTaux()}</td>
      <td>${c.getMensualite()}</td>
      <td class="etat">${c.getEtat()}</td>
      
      <td>${c.getClient().getId()}</td>
      <td><a href="modify-credit?num=${c.getNumCredit()}" class="btn btn-warning">Modifier</a></td>
      <td><a href="delete-credit?num=${c.getNumCredit()}" class="btn btn-danger">Supprimer</a></td>
      <td><a href="credit-detail?num=${c.getNumCredit()}" class="btn btn-info">Plus info</a></td>
    </tr>
   
  </c:forEach>
  <%@ include file = "scripts/affiche-etat.jsp" %> 
  </tbody>
</table>

</div>
<%@ include file = "layout/footer.jsp" %>
</body>
</html>