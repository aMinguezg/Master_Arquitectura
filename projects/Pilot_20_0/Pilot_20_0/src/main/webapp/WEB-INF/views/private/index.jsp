<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amazin</title>
</head>
<body>
	<h1 style="text-align: center;"><spring:message code="title"/></h1>
	<br>
	<h2 style="text-align: center;"><spring:message code="welcome"/></h2>
	<br />
	<br /><spring:message code="choose.option"/>:
	<br />
	<a href="seekBooks"><spring:message code="show.catalog"/></a>
	<br />
	<a href="showSpecialOffer"><spring:message code="show.offers"/></a>
	<br />
	<spring:message code="visits"/>: <c:out value="${loginCounter.logins}"/>

</body>
</html>