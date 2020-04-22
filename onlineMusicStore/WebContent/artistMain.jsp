<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<head>
<meta charset="ISO-8859-1">
<title>Artist Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="scripts.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">

</head>

<body>	

<div class="container-fluid" id="header" >
  <h1 align="center" class="display-2">Artist Management</h1>
  <p align="center"><em>Manage Artist details</em></p>
</div>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="index.jsp">Online Music Store</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/UserServlet">Employee Management</a>
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

<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="assets/eminem.jpg" alt="Eminem" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Eminem</h3>
        <p>The best Rap Artist!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="assets/linkin.jpg" alt="Linkin Park" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Linkin Park</h3>
        <p>Rock Music!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="assets/drake.jpg" alt="Drake" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Drake</h3>
        <p>Rap Artist!</p>
      </div>   
    </div>
      <div class="carousel-item">
      <img src="assets/marsh.jpg" alt="Marsh" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Marshmallo</h3>
        <p>Electronic Dance Music!</p>
      </div>   
    </div>
      <div class="carousel-item">
      <img src="assets/micheal.jpg" alt="MJ" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Michael Jackson</h3>
        <p>American singer-songwriter!</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<br><br><br>

<div class="container-fluid">
<table border = "1" class="table table-dark table-striped table-hover">
	<thead class="thead-dark">
	<tr>
		<th>Name</th>
		<th>Genre</th>
		<th>No Of Albums</th>
		<th>Sex</th>
	</tr>
	</thead>
	<c:forEach items="${list}" var="artist">
	<tr>
		<td>${artist.name}</td>
		<td>${artist.genre}</td>
		<td>${artist.noOfAlbum}</td>
		<td>${artist.sex}</td>
	<tr>
	</c:forEach>
</table>
</div>

</body>
</html>