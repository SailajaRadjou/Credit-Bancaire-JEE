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
<div class="container-lg" style="margin-top: 5rem;">
<h1 class="text-center" style="color: red; font-weight: 600;">Warning Message</h1>
<div class="alert alert-warning" role="alert" style="margin-top: 5rem;">
  <h3 class="alert-heading">WARNING !!!</h3>
  <p style="font-size: 1.5rem; font-weight: 400;">Attention Please read this important alert message !!!</p>
  <hr>
  <p class="mb-0" style="font-size: 1.5rem; color: red; font-weight: 600;">${message}</p>
  
</div>
</div>
</body>
</html>