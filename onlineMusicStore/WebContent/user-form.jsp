<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Employee Management Application</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
	
	
	<div class="container-fluid" id="header" >
  		<h1 align="center" class="display-2">Employee Management</h1>
  		<p align="center"><em>Manage Employee details</em></p>
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
	
	<br>
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit Employee
            		</c:if>
						<c:if test="${user == null}">
            			Add New Employee
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>User Country</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
