

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title><spring:message code="viajes"/></title>
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
<script type="text/javascript">
$(document).ready(function() {
    $('#reservaRealizada').DataTable({
			dom : 'Bfrtip',
			"paging":   false,
			  "searching": false,
			    "ordering": false,
			buttons : [ 'print' ],
			"order" : [ [ 1, 'asc' ] ],
			language : {

 				"decimal" : "",
				"emptyTable" : "No hay viajes disponibles",
				"info" : "",
				"infoEmpty" : "Mostrando 0 to 0 of 0 Entradas",
				"infoFiltered" : "(Filtrado de _MAX_ total entradas)",
				"infoPostFix" : "",
				"thousands" : ",",
				"lengthMenu" : "Mostrar _MENU_ Entradas",
				"loadingRecords" : "Cargando...",
				"processing" : "Procesando...",
 				"zeroRecords" : "Sin resultados encontrados",
				"paginate" : {
					"first" : " ",
					"last" : " ",
					"next" : " ",
					"previous" : " "
				}
			}
		});
} );

</script>
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

<section class="engine"></section><section class="mbr-section content5 cid-ruN1DMyZKp mbr-parallax-background" id="content5-l">

    

    

    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-2"><br><spring:message code="reserva.exito"/></h2>
                <h3 class="mbr-section-subtitle align-center mbr-light mbr-white pb-3 mbr-fonts-style display-5">
                   <spring:message code="resumen.reserva"/></h3>
                
                
            </div>
        </div>
    </div>
</section>

<div class="container">
<form action="<c:url value="/reserva/mail/${reserva.localizador}" />" method="GET">
 <span class="input-group-btn">
                            <button type="submit" class="btn btn-primary btn-form display-4"><spring:message code="enviar.email"/></button>
                        </span>
    
 </form>
 
 <form action="<c:url value="/login" />" method="GET"> <span class="input-group-btn">
 
 <button type="submit" class="btn btn-primary btn-form display-4"><spring:message code="inicio"/></button></span>
    
  </form>

<div class="panel panel-default">
  <div class="panel-body">
	<table id="reservaRealizada" class="hover" style="width: 100%">
		<thead>
			<tr>
				<th><spring:message code="detalles.reserva"/></th>
				<th><spring:message code="localizador"/>: ${reserva.localizador}</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><spring:message code="nombre2"/></td>
				<td>${reserva.nombre}  ${reserva.apellidos}</td>
				<td></td>
			</tr>
			<tr>
				<td><spring:message code="identificacion2"/></td>
				<td>${reserva.dni}</td>
				<td></td>
			</tr>
			<tr>
				<td><spring:message code="equipaje"/></td>
				<td>
					<c:forEach items="${reserva.equipaje}" var="extra">
					${extra} -
					</c:forEach>
				</td>
				<td></td>
			</tr>
			<tr>
				<td><spring:message code="viaje.ida.origen"/></td>
				<td>${viajeIda.origen}</td>
				<td></td>
			</tr>
			<tr>
				<td><spring:message code="viaje.ida.destino"/></td>
				<td>${viajeIda.destino}</td>
				<td></td>
			</tr>
			<tr>
				<td><spring:message code="viaje.ida.fecha"/></td>
				<td>${viajeIda.fecha}</td>
				<td></td>
			</tr>
			<tr>
				<td><spring:message code="viaje.ida.horario"/></td>
				<td>${viajeIda.horario}</td>
				<td></td>
			</tr>
			<tr>
				<td><spring:message code="viaje.ida.precio"/></td>
				<td>${viajeIda.precio}</td>
				<td></td>
			</tr>

			<c:if test="${not empty viajeVuelta}">

				<tr>
					<td><spring:message code="viaje.vuelta.origen"/></td>
					<td>${viajeVuelta.origen}</td>
					<td></td>
				</tr>
					<tr>
					<td><spring:message code="viaje.vuelta.destino"/></td>
					<td>${viajeVuelta.destino}</td>
					<td></td>
				</tr>
				<tr>
					<td><spring:message code="viaje.vuelta.fecha"/></td>
					<td>${viajeVuelta.fecha}</td>
					<td></td>
				</tr>
				<tr>
					<td><spring:message code="viaje.vuelta.horario"/></td>
					<td>${viajeVuelta.horario}</td>
					<td></td>
				</tr>
				<tr>
					<td><spring:message code="viaje.vuelta.precio"/></td>
					<td>${viajeVuelta.precio}</td>
					<td></td>
				</tr>
			</c:if>




		</tbody>

	</table>
	</div>
	</div>
</div>
 
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

