<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>   

<!DOCTYPE html>
<html lang="pt">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- <link rel="shortcut icon" href="<c:url value="resources/images/iconS.ico" />" />
 --%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
	<title>Supremacia | BR</title>
	<%-- <link rel="stylesheet" href="<c:url value="resources/css/bootstrap.css" />" />
	<link rel="stylesheet" href="<c:url value="resources/css/syslocc.css"  />" />
	<link rel="stylesheet" href="<c:url value="resources/css/jquery-ui-1.8.18.custom.css" />" />
	<link rel="stylesheet" href="<c:url value="resources/css/novosyslocclayout.css" />" />
	<link rel="stylesheet" href="<c:url value="resources/css/font-awesome.min.css" />" /> --%>
	
</head>
<body>
	Supremacia BR
	
	<form action="hieraquia" method="post">
	
		<input name="teste">
		<br><br>
		<button type="submit">Enviar</button>
	</form>
	
	
</body>
</html>