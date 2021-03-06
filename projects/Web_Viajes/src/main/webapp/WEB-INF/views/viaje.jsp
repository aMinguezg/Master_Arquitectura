<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v4.8.7, mobirise.com">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1">
<link rel="shortcut icon" href="assets/images/logo4.png"
	type="image/x-icon">
<meta name="description" content="Web Maker Description">
<title><spring:message code="viajes"/></title>



<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
<script>
	$(function() {

		var dateToday = new Date();
		let dateIda = '2019-05-06';
		$("#fechaIda")
				.datepicker(
						{
							dateFormat : 'yy-mm-dd',
							defaultDate : "+1w",
							changeMonth : true,
							numberOfMonths : 2,
							minDate : dateToday,
							onSelect : function(selectedDate) {
								var option = this.id == "from" ? "minDate"
										: "maxDate", instance = $(this).data(
										"datepicker"), date = $.datepicker
										.parseDate(
												instance.settings.dateFormat
														|| $.datepicker._defaults.dateFormat,
												selectedDate, instance.settings);
								$("#fechVuelta").datepicker("option", "minDate", selectedDate);
								
							}
						});
		$("#fechaIda").attr("readonly", "readonly");
$("#fechaIda").datepicker( "setDate", new Date());

		$("#fechVuelta").datepicker({
			dateFormat : 'yy-mm-dd'
		});

		$("#fechaIda").datepicker({
			onClose : function(selectedDate) {
				$("#fechVuelta").datepicker("option", "minDate", selectedDate);
			}
		});
		$("#fechVuelta").datepicker({
			onClose : function(selectedDate) {
				$("#fechaIda").datepicker("option", "maxDate", selectedDate);
			}
		});

		$("#fechVuelta").attr("readonly", "readonly");

		$("#fechVuelta").hide();
		$("#labelFecha").hide();

		$('input:radio[name=checkfecha]').click(function() {
			if ($('input:radio[name=checkfecha]:checked').val() == "si") {
				$("#fechVuelta").show();
				$("#labelFecha").show();
				$("#fechVuelta").datepicker( "setDate", new Date());
				
			} else {
				$("#fechVuelta").hide();
				$("#labelFecha").hide();
			}
		})

	});
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
	

	<section class="engine">
		<a href="https://mobirise.info/a">online site builder</a>
	</section>
	<section
		class="mbr-section content5 cid-ruN12ARoRs mbr-parallax-background"
		id="content5-i">





		<div class="container">
			<div class="media-container-row">
				<div class="title col-12 col-md-8">
					<h2
						class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-2">
						<br><spring:message code="donde.viajar"/>
					</h2>
					<h3
						class="mbr-section-subtitle align-center mbr-light mbr-white pb-3 mbr-fonts-style display-5"></h3>


				</div>
			</div>
		</div>
	</section>

	<section class="mbr-section form1 cid-ruN1sazoYG" id="form1-j">




		<div class="container">
			<div class="row justify-content-center">
				<div class="title col-12 col-lg-8">
					<h2
						class="mbr-section-title align-center pb-3 mbr-fonts-style display-2"></h2>
					<h3
						class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-5"></h3>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="media-container-column col-lg-8"
					data-form-type="formoid">
					

					<form:form modelAttribute="viaje">

						<div class="row row-sm-offset">
							<div class="col-md-6 multi-horizontal" data-for="name">
								<div class="form-group">
									<label class="form-control-label mbr-fonts-style display-7"
										for="origen"><spring:message code="origen"/></label>
									<form:select path="origen" items="${listaviajeida}"
										class="form-control" id="origen" />
								</div>
							</div>
							<div class="col-md-6 multi-horizontal" data-for="email">
								<div class="form-group">
									<label class="form-control-label mbr-fonts-style display-7"
										for="destino"><spring:message code="destino"/></label>
									<form:select path="destino" items="${listaviajevuelta}"
										class="form-control" id="destino" />
								</div>
							</div>
							<div class="col-md-4 multi-horizontal" data-for="phone">
								<div class="form-group">
									<label class="form-control-label mbr-fonts-style display-7"
										for="fechaIda"><spring:message code="fecha"/></label>
									<form:input path="fecha" readonly="readonly" id="fechaIda"
										required="required" class="form-control" />

									<label id="labelFecha"
										class="form-control-label mbr-fonts-style display-7"
										for="fechVuelta"><spring:message code="fecha.vuelta"/></label>
									<form:input path="fechaVuelta" readonly="readonly"
										id="fechVuelta" class="form-control" />
									<p style="font-weight: bold;"><spring:message code="quieres.vuelta"/></p>
									<label class="radio-inline"><input type="radio"
										name="checkfecha" value="si" /><spring:message code="si"/></label> <label class="radio-inline"><input
										type="radio" name="checkfecha" value="no" checked="checked" /><spring:message code="no"/></label>
								</div>
							</div>

							<div class="col-md-4 multi-horizontal" data-for="email">

								<div class="form-group">
									<label class="form-control-label mbr-fonts-style display-7"
										for="pasajeros"><spring:message code="numero.pasajeros"/></label>
									<form:input path="pasajeros" min="1" required="required"
										type="number" class="form-control" value="1"/>
								</div>
							</div>
						</div>


						<span class="input-group-btn">
							<button href="horarios" type="submit"
								class="btn btn-primary btn-form display-4"><spring:message code="buscar"/></button>
						</span>
					</form:form>
				</div>
			</div>
		</div>
	</section>
	<section once="" class="cid-ruMDUybqDE" id="footer7-b">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
           
            
            <div class="row row-copirayt">
                <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                    � Copyright 2019 Mobirise - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section>
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

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