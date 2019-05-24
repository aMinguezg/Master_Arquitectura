

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Amazin</title>
</head>
<body>
	<h1 style="text-align: center;">AMAZIN.COM</h1>
	<br>
	<h2 style="text-align: center;">Welcome to the smallest virtual
		shop in the world!</h2>
	<br> Introduce user and password:
	<form name='loginForm'
		action="<c:url value='j_spring_security_check' />" method='POST'>

		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='j_username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='j_password' /></td>
			</tr>
			<tr>
				<td><input name="submit" type="submit" value="submit" /></td>
				<td><input name="reset" type="reset" /></td>
			</tr>
		</table>

	</form>
	<br />
	<!-- In case there was any error message, we show it -->
	<p style="color: red;">
		<c:out value="${message}" />
	</p>

</body>
</html>

