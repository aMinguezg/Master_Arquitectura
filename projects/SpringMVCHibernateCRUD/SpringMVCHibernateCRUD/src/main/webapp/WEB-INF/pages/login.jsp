

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<title>ViajesColombia</title>
</head>
<body>
	<h1 style="text-align: center;">ViajesColombia.COM</h1>
	<br>
	<h2 style="text-align: center;">Welcome to ViajesColombia!</h2>
	<br> Introduce user and password:
	<form:form modelAttribute="login">
		Login: <form:input path="login" />
		Password: <form:password path="password" />
		<input type="submit" />
	</form:form>
	<br />
	<!-- In case there was any error message, we show it -->
	<p style="color: red;">
		<c:out value="${message}" />
	</p>

</body>
</html>

