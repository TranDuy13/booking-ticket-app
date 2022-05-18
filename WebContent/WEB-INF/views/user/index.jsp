<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <base href="${pageContext.servletContext.contextPath}/"> 
 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
${message}
<br>

<br>
<a href="admin/form.htm">
		<button type="button"  class="btn btn-warning">Thêm</button></a>
<table class="table table-hover">
	<tr>
		<th>Username</th>
		<th>Password</th>
		<th>Fullname</th>
		<th></th>
		<th></th>
	</tr>
	<c:forEach var="u" items = "${users}">
	<tr>
		<td>${u.idplane}</td>
		<td>${u.flighttime}</td>
		<td>${u.destination}</td>
		<td>
	</tr>
	</c:forEach>
</table>
<div>${message }</div>
</body>
</html>