<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<%@ include file = "css/style.jsp"%>
<title>Page Confirmation</title>
</head>
<body>
<%@ include file = "layout/navbar.jsp" %>
<div class="container-lg">
<div class="card" style="width: 45rem; margin: 10rem auto;">
  <div class="card-header bg-light text-center">
    <h1>Confirmation</h1>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item h4">Client Id&emsp;:&emsp;${client.getId()}</li>
    <li class="list-group-item h4">Nom&emsp;:&emsp;${client.getNom()}</li>
    <li class="list-group-item h4">Prenom&emsp;:&emsp;${client.getPrenom()}</li>
    <li class="list-group-item h4">Date Naissance&emsp;:&emsp;${client.getDateNaissance()}</li>
    <li class="list-group-item h4">Adresse&emsp;:&emsp;${client.getAdresse()}</li>
    <li class="list-group-item h4">Telephone&emsp;:&emsp;${client.getTel()}</li>
    <li class="list-group-item h4">Email&emsp;:&emsp;${client.getMail()}</li>
    <li class="list-group-item h4">Civilité&emsp;:&emsp;${client.getCivilite()}</li>
  </ul>
</div>
</div>
<%@ include file = "layout/footer.jsp" %>
</body>
</html>