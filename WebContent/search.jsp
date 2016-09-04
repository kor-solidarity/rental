<%@page import="java.util.ArrayList"%>
<%@page import="rent.car.CarDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="rentBean" class="rent.rent.RentBean" scope="session"/>
<%
rentBean.setRent_sdate(request.getParameter("period1"));
rentBean.setRent_edate(request.getParameter("period2"));
%>
<jsp:useBean id="carprocess" class="rent.car.CarProcessDao"></jsp:useBean>


<c:choose>
	<c:when test="${param.period1 != null && param.period2 != null && param.option != null}">
	 <c:set var="dto" value="<%=carprocess.searchCarDataAll(rentBean)%>"/>
	 
	</c:when>
	<c:when test="${param.period1 != null && param.period2 != null && param.option == null}">
	<c:set var="dto" value="<%=carprocess.searchCarDataAll(rentBean)%>"/>
	</c:when>
</c:choose>

<!DOCTYPE html>
<html>
<head>

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css"/>
<link rel="stylesheet" href="css/style.css"/>
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"/>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
<script type="text/javascript"	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<%@ include file="customer/index_top.jsp" %>
<script>
$("#rental_date").text("대여날짜 "+"${param.period1}");
$("#return_date").text("반납날짜 "+"${param.period2}");
</script>

<c:forEach var="s" items="${dto}">
	<a href="searchdetail.jsp?car_id=${s.car_id}">
	<div class="col s12 m12">
		<div class="card horizontal">
			<div class="card-image">
				<img src="data/${s.image }">
			</div>
			<div class="card-stacked">
				<div class="card-content">
					<table>
						<tr><td><b>${s.car_name}</b></td></tr>
						<tr><td>${s.com_id}</td></tr>
						<tr>
							<td>
								<div class="chip">${s.spec}</div>
							</td>
						</tr>
					</table>
					<p><hr>
					<b>가격: ${s.price }원</b>
				</div>
			</div>
		</div>
	</div>
	</a>
</c:forEach>




<%@ include file="customer/index_bottom.jsp" %>
</body>
</html>