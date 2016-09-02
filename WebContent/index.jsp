<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">
<link rel="stylesheet" href="css/style.css">
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"/>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
<script type="text/javascript"	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<%@ include file="customer/index_top.jsp" %>

<%String str=request.getParameter("flag"); %>
<c:set var="flagvar" value="<%=str %>"/>
<c:choose>
	<c:when test="${flagvar == 'register'}">
	<jsp:include page="customer/register.jsp"/>
	</c:when>
	<c:when test="${flagvar == 'update'}">
	<jsp:include page="customer/update.jsp"/>
	</c:when>
	<c:otherwise>
	
	</c:otherwise>
</c:choose>



<%@ include file="customer/index_bottom.jsp" %>
</body>
</html>