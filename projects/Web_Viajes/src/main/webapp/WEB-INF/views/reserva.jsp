

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Viajes</title>
</head>
<body>
	<h1>HOLA TENEMOS VIAJES</h1>
	
	<h2>IDA</h2>
	<table>
		<tr>
			
			<td><b>Origen</b></td>
			<td><b>Destino</b></td>
			<td><b>Precio</b></td>
			<td><b>Fecha</b></td>
			<td><b>Horario</b></td>
			<td><b>Pasajeros</b></td>
		</tr>
		<c:forEach items="${listaviajeida}" var="ida">
			<tr>
				
				<td><c:out value="${ida.origen}"></c:out></td>
				<td><c:out value="${ida.destino}"></c:out></td>
				<td><c:out value="${ida.precio}"></c:out></td>
				<td><c:out value="${ida.fecha}"></c:out></td>
				<td><c:out value="${ida.horario}"></c:out></td>
				<td><c:out value="${ida.pasajeros}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	<h2>VUELTA</h2>
	<table>
		<tr>
			
			<td><b>Origen</b></td>
			<td><b>Destino</b></td>
			<td><b>Precio</b></td>
			<td><b>Fecha</b></td>
			<td><b>Horario</b></td>
			<td><b>Pasajeros</b></td>
		</tr>
		<c:forEach items="${listaviajevuelta}" var="vuelta">
			<tr>
				
				<td><c:out value="${vuelta.origen}"></c:out></td>
				<td><c:out value="${vuelta.destino}"></c:out></td>
				<td><c:out value="${vuelta.precio}"></c:out></td>
				<td><c:out value="${vuelta.fecha}"></c:out></td>
				<td><c:out value="${vuelta.horario}"></c:out></td>
				<td><c:out value="${vuelta.pasajeros}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

