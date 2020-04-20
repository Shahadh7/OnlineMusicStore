<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="scripts.js"></script>
<title>Home Page</title>
</head>

<body>	

<div class="container-fluid" id="header" >
  <h1 align="center" class="display-2">Online Music Store</h1>
  <p align="center"><em>Music gives a soul to the universe, wings to the mind, flight to the imagination and life to everything.</em></p>
</div>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="index.jsp">Online Music Store</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Employee Management</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/ArtistController">Artist Management</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Customer Management</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">Payment Management</a>
      </li>      
    </ul>
  </div>  
</nav>

</body>
</html>