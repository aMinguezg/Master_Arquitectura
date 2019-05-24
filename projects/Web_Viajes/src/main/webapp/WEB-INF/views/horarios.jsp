
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
		<c:forEach items="${listaida}" var="id">
			<tr>
				
				<td><c:out value="${id.origen}"></c:out></td>
				<td><c:out value="${id.destino}"></c:out></td>
				<td><c:out value="${id.precio}"></c:out></td>
				<td><c:out value="${id.fecha}"></c:out></td>
				<td><c:out value="${id.horario}"></c:out></td>
				<td><c:out value="${id.pasajeros}"></c:out></td>
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
		<c:forEach items="${listavuelta}" var="vuel">
			<tr>
				
				<td><c:out value="${vuel.origen}"></c:out></td>
				<td><c:out value="${vuel.destino}"></c:out></td>
				<td><c:out value="${vuel.precio}"></c:out></td>
				<td><c:out value="${vuel.fecha}"></c:out></td>
				<td><c:out value="${vuel.horario}"></c:out></td>
				<td><c:out value="${vuel.pasajeros}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>