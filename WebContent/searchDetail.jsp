<%@page import="java.util.ArrayList"%>
<%@page import="rent.car.CarDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="rentBean" class="rent.rent.RentBean" scope="session"/>
<jsp:setProperty property="car_id" name="rentBean"/>
<jsp:useBean id="carprocess" class="rent.car.CarProcessDao"/>

<c:set var="dto" value="<%=carprocess.searchCarData(rentBean)%>"/>

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
<body style="display: none">
<script type="text/javascript"	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<%@ include file="customer/index_top.jsp" %>
<script>
$("#rental_date").text("대여날짜 "+"${rentBean.rent_sdate}");
$("#return_date").text("반납날짜 "+"${rentBean.rent_edate}");

</script>
 <!-- Modal Structure -->
<div id="redirect_modal" class="modal">
    <div class="modal-content center">
      <h4>죄송합니다</h4>
      <h5>다른분께서 예약했습니다.</h5>
      <h5>다른 차를 확인해주세요</h5>
  
    </div>
    <div class="modal-footer">
      <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">돌아가기</a>
    </div>
</div>
<!-- 검색해서 가져온 값이 다른사람이 예약해서 사라질경우 -->
<c:if test="${dto==null}">
 <!-- Modal Trigger -->
 <script>
 $('#redirect_modal').openModal({
     dismissible: true, // Modal can be dismissed by clicking outside of the modal
     opacity: .5, // Opacity of modal background
     in_duration: 300, // Transition in duration
     out_duration: 200, // Transition out duration
     starting_top: '4%', // Starting top style attribute
     ending_top: '10%', // Ending top style attribute
     ready: function() {}, // Callback for Modal open
     complete: function() { location.href="search.jsp?period1=${rentBean.rent_sdate}&period2=${rentBean.rent_edate}";} // Callback for Modal close
   }
 );
 </script>
</c:if>




	<div class="row">
		<div class="col s12 m6">
			<img class="responsive-img" src="data/main.jpg">
		</div>
		<!-- 차명 스펙정보 -->
		<div class="col s12 m6">
			<div class="card">
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">
						${dto.car_name}
						${dto.car_id }
					</span>
					<p>
						<div class="chip">${dto.spec}</div>
					</p>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 대여 요금정보 -->
	<div class="row">
		<div class="col s12">
		
		
		</div>
	</div>
	
	
	<!--회원정보 보험여부및  결제정보  로그인후에만 사용가능하도록  -->
	<c:choose>
		<c:when test="${sessionScope.id==null }">
			<div class="row">
				<div class="col s12"><h4 class="center"><a href="#modal1" id="modallogin2">로그인을 해주세요</a></h4></div>
			</div>
		</c:when>
		
		<c:otherwise>
		
			<div class="row">
			
				<div class="col s12 m6">
				
				</div>
				<div class="col s12 m6">
				
				</div>
			</div>
		</c:otherwise>


	</c:choose>
	
		
		
	
	
	



	<%@ include file="customer/index_bottom.jsp" %>
</body>
</html>