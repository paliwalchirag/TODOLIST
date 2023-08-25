<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<title>Schedule</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">TODO LIST</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath }/home" class="btn btn-primary text-center" id="edit_btn">add to list</a></li>
			</ul>			
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	
	
	<table>
		<c:forEach items="${users }" var="users">
		<tr>
		<div class="card mt-3 m-4">
		<img class="card-img-top m-4 mx-auto" style="max-width: 100px;" src="<c:url value='/resources/image/post-it.png'/>"  alt="Card image cap">
		<div class="card-body">
			<h5 class="card-title text-center" id="title">${users.title }</h5>
			<p class="card-text" id="description"> ${users.description }</p>
			<div class="text-center">
				<a href="update/${users.userId }" class="btn btn-primary text-center" id="edit_btn">Edit</a>
				<a href="delete/${users.userId }" class="btn btn-primary text-center" id="delete_btn">Delete</a>
			</div>
		</div>
	</div>
	</tr>
	</c:forEach>
	</table>
	
</body>
</html>