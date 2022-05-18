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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form  action="admin/form.htm" modelAttribute="user" method="post">
	<div>
		<label>Username</label>
		<form:input path="idplane" readonly="${btnupdate ? true : false }"/>
		<label>Password</label>
		<form:input path="flighttime"/>
		<label>Fullname</label>
		<form:input path="destination"/>
	
		<button class="btn btn-primary" type = "submit" name= "${btnupdate ? 'btnupdate' : 'Insert'}" >${btnupdate ? 'Update' : 'Insert'}</button>
	</div>

</form:form>
</body>
</html>