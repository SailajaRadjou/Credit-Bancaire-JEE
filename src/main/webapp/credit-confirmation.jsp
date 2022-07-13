<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<%@ include file = "css/style.jsp"%>
<title>Credit Confirmation</title>
</head>
<body>
<%@ include file = "layout/navbar-credit.jsp" %>
<div class="container-lg">
<div class="card" style="width: 45rem; margin: 10rem auto;">
  <div class="card-header bg-light text-center">
    <h1>Credit Confirmation</h1>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item h4">Client Id&emsp;:&emsp;${credit.getClient().getId()}</li>
    <li class="list-group-item h4">Nom &emsp;:&emsp;${credit.getClient().getNom()}</li>
    <li class="list-group-item h4">Prenom&emsp;:&emsp;${credit.getClient().getPrenom()}</li>
    <li class="list-group-item h4">N° de Crédit&emsp;:&emsp;${credit.getNumCredit()}</li>
    <li class="list-group-item h4">Date de Demande&emsp;:&emsp;${credit.getCreditDate()}</li>
    <li class="list-group-item h4">Montant du Crédit&emsp;:&emsp;${credit.getCapital()}</li>
    <li class="list-group-item h4">Durée du Crédit (en années)&emsp;:&emsp;${credit.getDuree()}</li>
    <li class="list-group-item h4">Taux d'intérêt %&emsp;:&emsp;${credit.getTaux()}</li>
    <li class="list-group-item h4">Mensualité&emsp;:&emsp;${credit.getMensualite()}</li>
    <li class="list-group-item h4">État de Crédit&emsp;:&emsp;${credit.getEtat()}</li>
  </ul>
</div>
</div>
<%@ include file = "layout/footer.jsp" %>
</body>
</html>