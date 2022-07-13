<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<%@ include file = "css/style.jsp"%>
<title>New Client</title>
</head>
<body>
<%@ include file = "layout/navbar.jsp" %>
<div class="container-lg mt-20">
	<h2 style="margin-top: 5rem; margin-bottom: 3rem;">New Client</h2>
	<form class="row g-3" method = "post" action = "save-client" style="margin-top: 15px;">
		  <div class="col-md-6">
		    <label for="inputNom" class="form-label">Nom</label>
		    <input type="text" class="form-control" id="inputNom" name="nom">
		  </div>
		  <div class="col-md-6">
		    <label for="inputPrenom" class="form-label">Prenom</label>
		    <input type="text" class="form-control" id="inputPrenom" name="prenom">
		  </div>
		  <div class="col-12">
		    <label for="inputAddress" class="form-label">Address</label>
		    <input type="text" class="form-control" id="inputAddress" name="adresse">
		  </div>
		  <div class="col-md-4">
		    <label for="inputDate" class="form-label">Date de Naissance</label>
		    <input type="date" class="form-control" id="inputDate" name="date">
		  </div>
		  <div class="col-md-8">
		    <label for="inputTel" class="form-label">Telephone</label>
		    <input type="text" class="form-control" id="inputTel" name="tel">
		  </div>
		  <div class="col-md-8">
		    <label for="inputEmail4" class="form-label">Email</label>
		    <input type="email" class="form-control" id="inputEmail4" name="email">
		  </div>
		  
		  <div class="col-md-4">
		    <label for="inputGenre" class="form-label">Civilité</label>
		    <select id="inputGenre" class="form-select" name="civilite">
		      <option selected>Choose...</option>
		      <option value="Mlle.">Mlle.</option>
		      <option value="Mme.">Mme.</option>
		      <option value="Mr.">Mr.</option>
		    </select>
		  </div>
		  
		  <div class="col-12" style="margin-top: 20px;">
		    <button type="submit" class="btn btn-primary  mt-5">Enregistrer</button>
		  </div>
	</form>
</div>	
<%@ include file = "layout/footer.jsp" %>
</body>
</html>