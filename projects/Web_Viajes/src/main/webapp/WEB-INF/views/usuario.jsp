

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Viajes</title>
</head>
<body>
	<h1>HOLA TENEMOS VIAJES</h1>
	
	<table>
		<tr>
			<td><b>Id</b></td>
			<td><b>Origen</b></td>
			<td><b>Destino</b></td>
			<td><b>Contador</b></td>
			<td><b>Imagen</b></td>
			<td><b>Precio</b></td>
			<td><b>Fecha</b></td>
			<td><b>Horario</b></td>
			<td><b>Pasajeros</b></td>
		</tr>
		<c:forEach items="${listaviaje}" var="viaje">
			<tr>
				<td><c:out value="${viaje.id}"></c:out></td>
				<td><c:out value="${viaje.origen}"></c:out></td>
				<td><c:out value="${viaje.destino}"></c:out></td>
				<td><c:out value="${viaje.contador}"></c:out></td>
				<td><c:out value="${viaje.imagen}"></c:out></td>
				<td><c:out value="${viaje.precio}"></c:out></td>
				<td><c:out value="${viaje.fecha}"></c:out></td>
				<td><c:out value="${viaje.horario}"></c:out></td>
				<td><c:out value="${viaje.pasajeros}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

