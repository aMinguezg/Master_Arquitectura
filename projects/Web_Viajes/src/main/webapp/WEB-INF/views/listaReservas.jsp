
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
 
<link rel="stylesheet"
	href="<c:url value="/resources/assets/web/assets/mobirise-icons/mobirise-icons.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/tether/tether.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/bootstrap/css/bootstrap-grid.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/bootstrap/css/bootstrap-reboot.min.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/socicon/css/styles.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/dropdown/css/style.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/theme/css/style.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/resources/assets/mobirise/css/mbr-additional.css"></c:url>"
	type="text/css">
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
                  
                         <img src="<c:url value="/resources/assets/images/mbr-122x81.jpg"></c:url>" alt="Mobirise" title="" style="height: 3.8rem;">
                     
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4">
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
	</br>
	<section class="mbr-section form1 cid-ruN1sazoYG" id="form1-j">
		<div class="container">
			<h2><spring:message code="historial.titulo"/></h2>
			<form action="<c:url value="/login" />" method="GET"> <span class="input-group-btn">
 
 <button type="submit" class="btn btn-primary btn-form display-4"><spring:message code="inicio"/></button></span>
    
  </form>
			<div id="primerForm">
				<div class="panel-group">
					<div class="panel panel-primary">
						<div class="panel-heading"><spring:message code="ultimos.destinos"/></div>
						<div class="panel-body">
							<table id="tb_viajesIda" class="display" style="width: 100%">
								<thead>
									<tr>
										<th><b><spring:message code="origen"/></b></th>
										<th><b><spring:message code="destino"/></b></th>
										<th><b><spring:message code="precio"/></b></th>
										<th><b><spring:message code="fecha"/></b></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listaReserva}" var="viaje">

										<tr>
											<td><c:out value="${viaje.origen}"></c:out></td>
											<td><c:out value="${viaje.destino}"></c:out></td>
											<td><c:out value="${viaje.precio}"></c:out></td>
											<td><c:out value="${viaje.fecha}"></c:out></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
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
	<script
		src="<c:url value="/resources/assets/popper/popper.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/assets/tether/tether.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/assets/dropdown/js/script.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/assets/touchswipe/jquery.touch-swipe.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/assets/parallax/jarallax.min.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/assets/smoothscroll/smooth-scroll.js"></c:url>"></script>
	<script
		src="<c:url value="/resources/assets/theme/js/script.js"></c:url>"></script>
</body>
</html>