<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

<title>INDEX</title>
</head>
<body>
<div class="container">
	<h1 class="display-3">List</h1>
		
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Title</th>
	      <th scope="col">Writer</th>
	      <th scope="col">Date</th>
	      <th scope="col">View</th>
	      <th scope="col">Edit</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach items="${list}" var="ls">
	    <tr>
	      <th scope="row">${ls.id}</th>
	      <td>${ls.title}</td>
	      <td>${ls.name}</td>
	      <td>${ls.date }</td>
	      <td><button type="button" class="btn btn-primary" onclick="location.href='/view/${ls.id}'">View</button></td>
	      <td><button type="button" class="btn btn-primary" onclick="location.href='/edit/${ls.id}'">Edit</button></td>
	      <td><button type="button" class="btn btn-danger" onclick="location.href='/delete/${ls.id}'">Delete</button></td>
	    </tr>
	    </c:forEach>
	  </tbody>
	</table>
	<div class="text-right">
		<button type="button" class="btn btn-warning" onclick="location.href='/write'">Write</button>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>