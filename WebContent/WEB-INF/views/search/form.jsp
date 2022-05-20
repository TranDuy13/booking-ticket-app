<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="searchTicket.htm"  method="post">
		<input name="destination" type="text">
		<input name="departFrom" type="text">
		
		<button type ="submit"></button>
	</form>
		 <table class="table table-hover">
							  <thead class="thead-light">
							    <tr>
							      <th scope="col">ID</th>
							      <th scope="col">FROM</th>
							    </tr>
							  </thead>
							  <tbody>
							   <c:forEach var = "a" items = "${ticketsss}">
							    <tr>
                                <td>${a.plane.idplane}</td>
                                <td>${a.prices}</td>
                               
                              
							    </tr>
							  </c:forEach>
							  </tbody>
						</table>
</body>
</html>