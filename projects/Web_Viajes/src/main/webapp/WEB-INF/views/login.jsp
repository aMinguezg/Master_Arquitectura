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
  <link rel="shortcut icon" href="<c:url value="/resources/assets/images/logo4.png"></c:url>" type="image/x-icon">
  <meta name="description" content="Web Builder Description">
  <title><spring:message code="viaje.junto"/></title>
  
  
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

<section class="engine"></section><section class="cid-ruMBxkEqRf mbr-fullscreen mbr-parallax-background" id="header2-9">

    

    

    <div class="container align-center">
        <div class="row justify-content-md-center">
            <div class="mbr-white col-md-10">
                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">
                    <spring:message code="viaje.separado"/></h1>
                
                <p class="mbr-text pb-3 mbr-fonts-style display-5"><em>
                    <spring:message code="eslogan"/></em></p>
                <div class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href="viaje"><spring:message code="buscar.viaje"/></a></div>
            </div>
        </div>
    </div>
    <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
        <a href="#next">
            <i class="mbri-down mbr-iconfont"></i>
        </a>
    </div>
</section>


<c:if test="${fn:length(destinosTop) gt 2}">
<section class="features2 cid-ruMDPEadcR" id="features2-a">

    

    
    
    <div class="container">
        <div class="media-container-row">
            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="<c:url value="/resources/assets/images/${destinosTop[0]}.jpg"></c:url>" class="img-thumbnail" alt="img" width="304" height="236">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">
                            ${fn:toUpperCase(destinosTop[0])}
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                         </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="<c:url value="/resources/assets/images/${destinosTop[1]}.jpg"></c:url>" class="img-thumbnail" alt="img" width="304" height="236">
                    </div>
                    <div class="card-box ">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">
                            ${fn:toUpperCase(destinosTop[1])}
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                         </p>
                    </div>
                </div>
            </div>

            <div class="card p-3 col-12 col-md-6 col-lg-4">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="<c:url value="/resources/assets/images/${destinosTop[2]}.jpg"></c:url>" class="img-thumbnail" alt="img" width="304" height="236">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title pb-3 mbr-fonts-style display-7">
                           ${fn:toUpperCase(destinosTop[2])}
                        </h4>
                        <p class="mbr-text mbr-fonts-style display-7">
                        </p>
                    </div>
                </div>
            </div>

            
        </div>
    </div>
</section>
</c:if>

<section class="countdown1 cid-ruSp4z6URm" id="countdown1-u">
    
    
    
    <div class="container ">
        <h2 class="mbr-section-title pb-3 align-center mbr-fonts-style display-2">
            <spring:message code="visitas"/></h2>
        <h3 class="mbr-section-subtitle align-center mbr-fonts-style display-5"></h3>
        
    </div>
    <div class="container countdown-cont align-center">
         
        <div class="secondsCountdown" title="visitante"><h2 class="mbr-section-title pb-3 align-center mbr-fonts-style display-2">${hitCounter}</h2>
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