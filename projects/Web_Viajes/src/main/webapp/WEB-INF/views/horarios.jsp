
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/assets/web/assets/mobirise-icons/mobirise-icons.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/tether/tether.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap-grid.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap-reboot.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/socicon/css/styles.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/dropdown/css/style.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/theme/css/style.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/mobirise/css/mbr-additional.css"></c:url>" type="text/css">
   <link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="alternate" type="application/rss+xml" title="RSS 2.0"
	href="http://www.datatables.net/rss.xml">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
<script>
	//Inicializar las variables js que proceden de jsp
	var contextPath = '${pageContext.request.contextPath}';
</script>
<script type="text/javascript" class="init">
	var rowIda = null;
	var rowVuelta = null;
	var seguro = null;
	$(document).ready(function() {
		$('#tb_viajesIda').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'print' ],
			columnDefs : [ {
				"className" : "dt-center",
				"targets" : "_all"
			} ],
			"order" : [ [ 1, 'asc' ] ],
			language : {

				"searchPlaceholder" : "  ",
				"decimal" : "",
				"emptyTable" : "No hay viajes disponibles",
				"info" : "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
				"infoEmpty" : "Mostrando 0 to 0 of 0 Entradas",
				"infoFiltered" : "(Filtrado de _MAX_ total entradas)",
				"infoPostFix" : "",
				"thousands" : ",",
				"lengthMenu" : "Mostrar _MENU_ Entradas",
				"loadingRecords" : "Cargando...",
				"processing" : "Procesando...",
				"search" : "Buscar:",
				"zeroRecords" : "Sin resultados encontrados",
				"paginate" : {
					"first" : "Primero",
					"last" : "Ultimo",
					"next" : "Siguiente",
					"previous" : "Anterior"
				}
			}
		});

		$('#tb_viajesVuelta').DataTable({
			dom : 'Bfrtip',
			buttons : [ 'print' ],
			columnDefs : [ {
				"className" : "dt-center",
				"targets" : "_all"
			} ],
			"order" : [ [ 1, 'asc' ] ],
			language : {

				"searchPlaceholder" : "  ",
				"decimal" : "",
				"emptyTable" : "No hay viajes disponibles",
				"info" : "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
				"infoEmpty" : "Mostrando 0 to 0 of 0 Entradas",
				"infoFiltered" : "(Filtrado de _MAX_ total entradas)",
				"infoPostFix" : "",
				"thousands" : ",",
				"lengthMenu" : "Mostrar _MENU_ Entradas",
				"loadingRecords" : "Cargando...",
				"processing" : "Procesando...",
				"search" : "Buscar:",
				"zeroRecords" : "Sin resultados encontrados",
				"paginate" : {
					"first" : "Primero",
					"last" : "Ultimo",
					"next" : "Siguiente",
					"previous" : "Anterior"
				}
			}
		});
	});

	function gotoReserva() {

		 
		// Sacamos el div confirmar reserva

		document.getElementById("confirmarReserva").style.display = "block";
		document.getElementById("btConfirmarReserva").style.display = "block";
		document.getElementById("sendData").style.display = "none";
		document.getElementById("primerForm").style.display = "none";

	}
 
 
</script>
<meta charset="ISO-8859-1">
<title><spring:message code="viajes"/></title>
</head>
<body>
  <section class="menu cid-ruMBnOoEGw" once="menu" id="menu1-8">

    

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                  <a href="login">
                         <img src="<c:url value="/resources/assets/images/mbr-122x81.jpg"></c:url>" alt="Mobirise" title="" style="height: 3.8rem;">
                    </a>
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="login">
                        <spring:message code="viaje.junto"/></a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                    
                    <form action="<c:url value="/reserva/historial" />" method="GET"> <span class="input-group-btn">
 
 <button type="submit" class="btn btn-primary btn-form display-4"> <spring:message code="historial.reservas"/> </button></span>
    
  </form> 
                    
                </li>
                <li class="nav-item">
                    <form action="<c:url value="/reserva/cancelar" />" method="GET"> <span class="input-group-btn">
 
 <button type="submit" class="btn btn-primary btn-form display-4"> <spring:message code="cancelar.reserva"/> </button></span>
    
  </form> 
                </li></ul>
            
        </div>
    </nav>
</section>
 

</br>


<section class="mbr-section form1 cid-ruN1sazoYG" id="form1-j">
	<form:form method="POST" action="reserva" modelAttribute="reserva">
		<div class="container">
		<div class="well well-sm" style="display: inline-flex;">
						<img src="<c:url value="/resources/assets/images/${fn:trim(fn:toLowerCase(listaida[0].destino))}.jpg"></c:url>" class="img-thumbnail" alt="img" width="304" height="236">

</div> 
			<h2><spring:message code="selecciona.viaje"/></h2>
			<c:if test="${not empty errorReserva}">
<div class="alert alert-danger">
  <strong><spring:message code="error"/></strong> ${errorReserva}
</div>
</c:if>
			<div id="primerForm">
				<div class="panel-group">
					<div class="panel panel-primary">
						<div class="panel-heading"><spring:message code="selecciona.ida"/></div>
						<div class="panel-body">
 							<table id="tb_viajesIda" class="display" style="width: 100%">
								<thead>
									<tr>
										<th></th>
										<th><b><spring:message code="origen"/></b></th>
										<th><b><spring:message code="destino"/></b></th>
										<th><b><spring:message code="precio"/></b></th>
										<th><b><spring:message code="fecha"/></b></th>
										<th><b><spring:message code="horario"/></b></th>
										<th><b><spring:message code="pasajeros"/></b></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listaida}" var="id">
										<c:if test="${id.pasajeros > 0}">

											<tr>
												<td><label class="radio-inline"
													style="display: inline;"> <form:radiobutton checked="checked"
															path="idViajeIda" value="${id.id}" required="required"/>

												</label></td>
												<td><c:out value="${id.origen}"></c:out></td>
												<td><c:out value="${id.destino}"></c:out></td>
												<td><c:out value="${id.precio}"></c:out></td>
												<td><c:out value="${id.fecha}"></c:out></td>
												<td><c:out value="${id.horario}"></c:out></td>
												<td><c:out value="${id.pasajeros}"></c:out></td>
											</tr>
										</c:if>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>

					<c:if test="${fn:length(listavuelta) gt 0}">

						<div class="panel panel-primary">
							<div class="panel-heading"><spring:message code="selecciona.vuelta"/></div>
							<div class="panel-body">


 								<table id="tb_viajesVuelta" class="display" style="width: 100%">
									<thead>
										<tr>
											<th></th>
											<th><b><spring:message code="origen"/></b></th>
											<th><b><spring:message code="destino"/></b></th>
											<th><b><spring:message code="precio"/></b></th>
											<th><b><spring:message code="fecha"/></b></th>
											<th><b><spring:message code="horario"/></b></th>
											<th><b><spring:message code="pasajeros"/></b></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listavuelta}" var="vuelta">
											<c:if test="${vuelta.pasajeros > 0}">

												<tr>
													<td><label class="radio-inline"
														style="display: inline;"> <form:radiobutton checked="checked"
																path="idViajeVuelta" value="${vuelta.id}" required="required" />

													</label></td>
													<td><c:out value="${vuelta.origen}"></c:out></td>
													<td><c:out value="${vuelta.destino}"></c:out></td>
													<td><c:out value="${vuelta.precio}"></c:out></td>
													<td><c:out value="${vuelta.fecha}"></c:out></td>
													<td><c:out value="${vuelta.horario}"></c:out></td>
													<td><c:out value="${vuelta.pasajeros}"></c:out></td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</c:if>

				</div>


				<h2><spring:message code="extra"/></h2>
				<div class="well well-sm">

					<p style="font-size: large; font-weight: bold;"><spring:message code="equipaje.extra"/></p>

					<div class="checkbox">
						<label class="checkbox-inline"><form:checkbox
								path="equipaje" value="Bicicleta" /> <spring:message code="bicicleta"/></label>
					</div>


					<div class="checkbox">
						<label class="checkbox-inline"><form:checkbox
								path="equipaje" value="Mascota" /> <spring:message code="mascota"/></label>
					</div>

					<div class="checkbox">
						<label class="checkbox-inline"><form:checkbox
								path="equipaje" value="Tabla_surf" /> <spring:message code="surf"/></label>
					</div>

					<div class="checkbox">
						<label class="checkbox-inline"><form:checkbox
								path="equipaje" value="Esquies" /> <spring:message code="esquies"/></label>
					</div>
				</div>

				<div class="well well-sm">

					<p style="font-size: large; font-weight: bold;"><spring:message code="seguro"/></p>
					<div id="seguro">
						<form:radiobutton path="seguro" value="si" required="required"/>
						<spring:message code="si"/>
					</div>

					<div id="seguro">
						<form:radiobutton path="seguro" value="no" checked="checked" required="required" />
						<spring:message code="no"/>
					</div>
				</div>


				</br>
				<c:if test="${fn:length(listaida) gt 0}">

					<button onclick="gotoReserva()" id="sendData" type="button"
						class="btn btn-primary btn-lg"><spring:message code="enviar.datos"/></button>
				</c:if>
			</div>

			<div id="confirmarReserva" style="display: none;">
<div class="panel-group">
					<div class="panel panel-primary">
						<div class="panel-heading"><spring:message code="confirmar.reserva"/></div>
						<div class="panel-body">
				<h2><spring:message code="nombre"/></h2>
				<form:input class="form-control" path="nombre" required="required"/>
				<br />
				<h2><spring:message code="apellidos"/></h2>
				<form:input class="form-control" path="apellidos" required="required"/>
				<br />
				<h2><spring:message code="email"/></h2>
				<form:input class="form-control" type="email" path="email" required="required"/>
				<br />
				<h2><spring:message code="identificacion"/></h2>

				<form:select class="form-control" path="tipoId">
					<form:options items="${countryList}" />
 					<form:option value="DNI" label="DNI" />
					<form:option value="NIE" label="NIE" />
					<form:option value="PASAPORTE" label="PASAPORTE" />
				</form:select>
				<form:input path="dni" class="form-control" required="required"/>

			</div>
</div></div></div>
			</br> <input id="btConfirmarReserva" type="submit" style="display: none;"
				class="btn btn-primary btn-lg" value="Confirmar" />

		</div>
	</form:form>
	</section>
	
<section once="" class="cid-ruMDUybqDE" id="footer7-b">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
           
            
            <div class="row row-copirayt">
                <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                    © Copyright 2019 Mobirise - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section>	
<script src="<c:url value="/resources/assets/popper/popper.min.js"></c:url>"></script>
  <script src="<c:url value="/resources/assets/tether/tether.min.js"></c:url>"></script>
  <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"></c:url>"></script>
  <script src="<c:url value="/resources/assets/dropdown/js/script.min.js"></c:url>"></script>
  <script src="<c:url value="/resources/assets/touchswipe/jquery.touch-swipe.min.js"></c:url>"></script>
  <script src="<c:url value="/resources/assets/parallax/jarallax.min.js"></c:url>"></script>
  <script src="<c:url value="/resources/assets/smoothscroll/smooth-scroll.js"></c:url>"></script>
  <script src="<c:url value="/resources/assets/theme/js/script.js"></c:url>"></script>
</body>
</html>