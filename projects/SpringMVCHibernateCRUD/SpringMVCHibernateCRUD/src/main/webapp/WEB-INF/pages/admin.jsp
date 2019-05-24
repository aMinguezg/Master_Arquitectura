

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<title>ViajesColombia</title>
</head>
<body>
	<h1 style="text-align: center;">ViajesColombia.COM</h1>
	<br>
	<h2 style="text-align: center;">Administracion ViajesColombia!</h2>
	<br> Zona Registro:
	<form:form modelAttribute="register">
		Nombre: <form:input path="nombre" />
		Primer Apellido: <form:password path="primerApellido" />
		Fecha Entrada: <form:input type="date" path="fechaEntrada" />
		Fecha Salida: <form:input type="date" path="fechaSalida" />
		Hombre: <form:radiobutton path="sexo" value="M" />
		Mujer: <form:radiobutton path="sexo" value="F" />
		Centro Turistico: <form:select path="centro" items="${centros}" />

		<input type="submit" />







	</form:form>
	<br />
	<!-- In case there was any error message, we show it -->
	<p style="color: red;">
		<c:out value="${message}" />
	</p>

</body>
</html>

