

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Viaje</title>
</head>
<body>
	<h1 style="text-align: center;">VIAJES.COM</h1>
	<br>
	<h2 style="text-align: center;">Bienvenido a tu pagina de viajes</h2>
	<br> Introduce usuario y contraseña:
	<form:form modelAttribute="login">
		<form:errors path="" /><br/>
	
		Login: <form:input path="login" />
		<form:errors path="login" />
		<br />
		Password: <form:password path="password" />
		<form:errors path="password" />
		<br />
		<input type="submit" value="Login" />
	</form:form>
	<br />
	<a href="registro">Registrarse como usuario</a>
	<a href="viaje">Acceder como invitado</a>
	<!-- In case there was any error message, we show it -->
	<p style="color: red;">
		<c:out value="${message}" />
	</p>

</body>
</html>

