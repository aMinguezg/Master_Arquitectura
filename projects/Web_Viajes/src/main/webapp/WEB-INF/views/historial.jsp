
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.7, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logo4.png" type="image/x-icon">
  <meta name="description" content="Web Site Generator Description">
  <title>historial</title>

  <link rel="stylesheet" href="<c:url value="/resources/assets/web/assets/mobirise-icons/mobirise-icons.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/tether/tether.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap-grid.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap-reboot.min.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/socicon/css/styles.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/dropdown/css/style.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/theme/css/style.css"></c:url>">
  <link rel="stylesheet" href="<c:url value="/resources/assets/mobirise/css/mbr-additional.css"></c:url>" type="text/css">
  
  
  
  
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
                   
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" >
                        ViajesColombia</a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                    
                    <form action="<c:url value="/reserva/historial" />" method="GET"> <span class="input-group-btn">
 
 <button type="submit" class="btn btn-primary btn-form display-4"> Historial reservas </button></span>
    
  </form> 
                    
                </li>
                <li class="nav-item">
                    <form action="<c:url value="/reserva/cancelar" />" method="GET"> <span class="input-group-btn">
 
 <button type="submit" class="btn btn-primary btn-form display-4"> Cancelar reserva </button></span>
    
  </form> 
                </li></ul>
            
        </div>
    </nav>
</section>

<section class="engine"><a href="https://mobirise.info/k">develop free website</a></section><section class="header13 cid-ruPyhds6Hw mbr-fullscreen mbr-parallax-background" id="header13-p">

    

    

    <div class="container">
        

        <h1 class="mbr-section-title align-center pb-3 mbr-white mbr-bold mbr-fonts-style display-1">Historial de reservas</h1>

        <h3 class="mbr-section-subtitle mbr-fonts-style display-5">
            Consulte su historial de viajes</h3>

        <div class="container mt-5 pt-5 pb-5">
            <div class="media-container-column" data-form-type="formoid">
                <div data-form-alert="" hidden="">Thanks for filling out the form!</div>

<form:form method="POST" action="historial/listado" modelAttribute="reserva">
<div class="form-group"> 
<form:input class="form-control" type="email" path="email" required="required" placeholder="Email"/>

 </div>
 <span class="input-group-btn">
                            <button type="submit" class="btn btn-primary display-4"> ver historial</button>
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
                    © Copyright 2019 Mobirise - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section>
  <script src="<c:url value="/resources/assets/web/assets/jquery/jquery.min.js"></c:url>"></script>
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