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

<title>Insert title here</title>
</head>
<body>

<div class="container my-4">
        <h2 class="text-center">
            TODO LIST
        </h2>
        	<form action="${pageContext.request.contextPath }/tablee" method="post">
        	<input type="text" value="${us.userId }" name="userId"/>
            <div class="form-group">
              <label for="title">UPDATE DATA </label>
              <input type="text" class="form-control" name="title" aria-describedby="emailHelp" placeholder="Enter here" value="${us.title }"/>
              <small id="emailHelp" class="form-text text-muted">update the item</small>
            </div>
            
            <div class="form-group">
                <label for="description">Description</label>
                <textarea class="form-control" name="description" rows="10">${us.description }</textarea>
            </div>
            
            <div class="text-center">
            	<button type="submit" id="add" class="btn btn-primary">Add to List</button>
            	<button type="submit" id="clear" class="btn btn-primary" onclick="clearStorage()">Clear List</button>
            </div>
            </form>
            
     </div>

</body>
</html>