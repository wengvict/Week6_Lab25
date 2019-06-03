<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-hVpXlpdRmJ+uXGwD5W6HZMnR9ENcKVRn855pPbuI/mwPIEKAuKgTKgGksVGmlAvt"
	crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Edit Item-Admin</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="home">G&C Roasting Collective</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor02" aria-controls="navbarColor02"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor02"
			bis_skin_checked="1">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="login-page">Login</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="reg-page">Register</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="admin-page">Admin<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<h3>Add Items</h3>
	<form action="edit-form">
		Item number: ${id } <br> <br> Item name: <input type="text"
			name="name" value="name"> <br> <br> Item
		description: <input type="text" name="description" value="description">
		<br> <br> Item quantity: <input type="number"
			name="quantity" value="quantity"> <br> <br> Item
		price: <input type="double" name="price" value="price"> <br>
		<br> <input type="submit" value="Update">
	</form>

</body>
</html>