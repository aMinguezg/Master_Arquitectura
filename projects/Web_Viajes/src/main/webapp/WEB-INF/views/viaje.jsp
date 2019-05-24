

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Viajes</title>
</head>
<body>
	<h1>¿A DONDE TE GUSTARÍA VIAJAR?</h1>

	
	<form:form modelAttribute="viaje">
		<form:errors path="" />
		<br />
		<h2>ELIGE CIUDAD DE ORIGEN</h2>
		Elige ciudad de origen:
		<form:select path="origen" items="${listaviajeida}"/>
		<br/>
		<h2>ELIGE CIUDAD DESTINO</h2>
		Elige ciudad de destino:
		<form:select path="destino" items="${listaviajevuelta}"/>
		<br/>
		<h2>SELECCIONA NUMERO DE PASAJEROS</h2>
		¿Cuantas personas van a viajar?:
		<form:select path="pasajeros" items="${numbers}"/>
		<h2>SELECCIONA UNA FECHA</h2>
		Dia:
		<form:select path="dia" items="${dias}"/>
		<br/>
		Mes:
		<form:select path="mes" items="${meses}"/>
		<br/>
		Año:
		<form:select path="anno" items="${annos}"/>
		<br/>
		<br/>
		<input type="submit" />
	</form:form>


</body>
</html>

