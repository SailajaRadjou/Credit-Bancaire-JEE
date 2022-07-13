<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<%@ include file = "css/style.jsp"%>
<title>New Compte</title>
</head>
<body>
	<%@ include file="layout/navbar-compte.jsp"%>	
	
	<div class="container-lg mt-20">
		<h2 style="margin-top: 5rem; margin-bottom: 3rem;">Créer Un
			nouveau Compte</h2>
			
			<form method="post" action="find-id-compte" style="margin-top: 15px;">
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
		<form class="row g-3" method="post" action="save-compte"
			style="margin-top: 15px;">
			<div class="col-md-4">
				<label for="inputNum" class="form-label">Numero de Compte</label>			
				<input	type="text" class="form-control" id="inputNum" name="num" />
			</div>
			
			<div class="col-md-4">
				<label for="inputId" class="form-label">Numero de Client</label>
				
				<c:if test="${clientId == null && client.getId() == null}">
				  <input type="number" class="form-control" id="inputId" name="id">
				</c:if>				
				
				<c:if test="${clientId != null}">
				  <input type="number" class="form-control" id="inputId" name="id" readonly value = ${clientId}>
				</c:if>
				<c:if test="${client.getId()!= null }">
				  <input type="number" class="form-control" id="inputId" name="id" readonly value = ${client.getId()}>
				</c:if>
								
			</div>
			
			<div class="col-md-4">
				<label for="inputDateCree" class="form-label">Date de
					Création</label>
				<input type="date" class="form-control" id="inputDate"
					name="date_cree" >
					<%@ include file="scripts/affiche-date.jsp"%>
			</div>
			<div class="col-6">
				<label for="inputSoldes" class="form-label">Soldes</label> <input
					type="number" class="form-control" id="inputSoldes" name="soldes">
			</div>
			<div class="col-md-6">
				<label for="inputType" class="form-label">Type</label>
				 <select
					id="inputType" class="form-select" name="type">
					<option selected>Choose...</option>
					<option value="Compte Courant">Compte Courant</option>
					<option value="Compte Epargne">Compte Epargne</option>

				</select>
				
			</div>
			<div class="col-md-6">
				<label for="inputDecouvert" class="form-label">Decouvert</label> <input
					type="number" class="form-control" id="inputDecouvert"
					name="decouvert" readonly value=0>
			</div>
			<div class="col-md-6">
				<label for="inputTaux" class="form-label">Taux</label> <input
					type="number" class="form-control" id="inputTaux" name="taux" readonly value=0>
			</div>

			

			<div class="col-12" style="margin-top: 20px;">
				<button type="submit" class="btn btn-primary mt-5">Enregistrer</button>
			</div>
		</form>
		<%@ include file = "scripts/choix-compte.jsp" %> 
	</div>
	<%@ include file="layout/footer.jsp"%>
</body>
</html>