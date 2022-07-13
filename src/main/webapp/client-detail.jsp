<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<%@ include file = "css/style.jsp"%>
<title>Client Detail</title>
</head>
<body>
<%@ include file = "layout/navbar.jsp" %>
<div class="container-lg">
<div class="card" style="width: 25rem; margin: 10rem auto;">
  <div class="card-header">
    <h1>Client Detail</h1>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Client Id : ${client.getId()}</li>
    <li class="list-group-item">Client Nom : ${client.getNom()}</li>
    <li class="list-group-item">Client Prenom : ${client.getPrenom()}</li>
    <li class="list-group-item">Client Date Naissance : ${client.getDateNaissance()}</li>
    <li class="list-group-item">Client Adresse : ${client.getAdresse()}</li>
    <li class="list-group-item">Client Telephone : ${client.getTel()}</li>
    <li class="list-group-item">Client Email : ${client.getMail()}</li>
    <li class="list-group-item">Client Civilité : ${client.getCivilite()}</li>
    <li class="list-group-item"><a href="consulte-credit?id=${client.getId()}" class="btn btn-warning">Demande Crédit</a>
  <a href="consulte-compte?id=${client.getId()}" class="btn btn-success">Consulter le Compte</a></li>
  </ul>
  
</div>
</div>
<%@ include file = "layout/footer.jsp" %>
</body>
</html>