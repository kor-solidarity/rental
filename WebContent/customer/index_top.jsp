<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- large미만 로고 뷰 -->
<%request.setCharacterEncoding("utf-8"); %>
<div class="hide-on-large-only">
   <nav>
    <div class="nav-wrapper light-blue darken-3 ">
      <a href="#!" class="brand-logo center">RENTAL</a>
      <!-- Modal Trigger -->
      <a href="#modal1" class="button-collapse modal-trigger" id="modallogin"><i class="material-icons">menu</i></a>
    </div>
  </nav>
</div>
  <!-- Modal Structure 로그인 창-->

<div id="modal1" class="modal teal accent-4">
	<c:choose>
		
		<c:when test="${sessionScope.id==null}">
			<form action="customer/login.jsp" method="post">
				<div class="modal-content">
					<h4 class="white-text text-darken-2">로그인</h4>
					<p>
					<div class="input-field col s12">
						<input id="id" type="text"
							class="validate white-text text-darken-2" name="id"> <label
							for="id" class="white-text text-darken-2">아이디</label>
					</div>
					<div class="input-field col s12">
						<input id="password" type="password"
							class="validate white-text text-darken-2" name="pwd"> <label
							for="password" class="white-text">패스워드</label>
					</div>
					</p>
				</div>
				<div class="modal-footer teal accent-4">
					<a href="#!"
						class="modal-close waves-effect waves-green btn-flat deep-orange lighten-2"><span
						class="white-text text-darken-2">닫기</span></a> <a href="index.jsp?flag=register"
						class="modal-action waves-effect waves-green btn-flat light-blue darken-3"><span
						class="white-text text-darken-2">회원가입</span></a>
					<button class="btn col s12 waves-effect waves-light light-blue darken-3"
						type="submit" name="action">로그인</button>
				</div>
			</form>
		</c:when>
		<c:otherwise>
			<form action="customer/login.jsp" method="post">
				<div class="modal-content">
					<h4 class="white-text text-darken-2">${sessionScope.id}님 환영합니다</h4>
					
				</div>
				<div class="modal-footer blue accent-2">
					<a href="#!"
						class="modal-close waves-effect waves-green btn-flat blue accent-3"><span
						class="white-text text-darken-2">닫기</span></a> <a href="index.jsp?flag=update"
						class="modal-action waves-effect waves-green btn-flat blue accent-3"><span
						class="white-text text-darken-2">수정</span></a>
					<button class="btn col s12 waves-effect waves-light blue accent-3"
						type="submit" name="action">로그아웃</button>
				</div>
			</form>
		</c:otherwise>
	</c:choose>
	
</div>
 

<!-- 패럴렉스 이미지 및 로고 뷰 large에서만 보임 -->
<div class="parallax-container">
   <a href="#" class="valign hide-on-med-and-down"><h1 class="white-text center">RENTAL</h1></a>
   <div class="parallax"><img src="data/main.jpg">
	</div>
</div>
<!-- bar 검색영역 -->
<div class="row">
	<form action="customer/search.jsp" method="get" id="search">
		<div class="row z-depth-2">
			<!-- 대여지역날짜 선택영역 -->
			<div class="col s12 l3 push-l2">
				<div class="card hoverable green lighten-3" id="search1">
					<div class="card-content white-text">
						<span class="card-title activator"> <i
							class="material-icons">location_on</i><span>대여지역</span>
						</span>
						<p>
							<i class="material-icons">av_timer</i><span>대여시간</span>
						</p>
					</div>
				</div>
				<!-- 대여지역날짜 세부선택영역 -->
				<div class="col s12" id="card1">
					<div class="row">
						<div class="card blue accent-5">
							<div class="card-content white-text">
								<span>대여날짜</span>
								<div class="input-field col s12">
									<select id="period1">
										<option value="" disabled selected>대여날짜를 선택해주세요</option>
										<option value="1">Option 1</option>
										<option value="2">Option 2</option>
										<option value="3">Option 3</option>
									</select>
								</div>
								<p>대여지역 선택</p>
								<select id="area1">
									<option value="" disabled selected>대여날짜를 선택해주세요</option>
									<option value="1">Option 1</option>
									<option value="2">Option 2</option>
									<option value="3">Option 3</option>
								</select>
								<div class="right-align">
									<a class="waves-effect waves-light btn" id="index_btn_ok1">확인</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 반납지역날짜 카드영역 -->
			<div class="col s12 l3 push-l2">
				<div class="card hoverable green lighten-3" id="search2">
					<div class="card-content  white-text">
						<span class="card-title activator"> <i
							class="material-icons">location_on</i><span>지역</span>
						</span>
						<p>
							<i class="material-icons">av_timer</i><span>시간</span>
						</p>
					</div>
				</div>
				<!-- 반납선택 세부선택영역 -->
				<div class="col s12" id="card2">
					<div class="card blue accent-5">
						<div class="card-content white-text">
							<span>대여날짜</span>
							<div class="input-field col s12">
								<select id="period2">
									<option value="" disabled selected>대여날짜를 선택해주세요</option>
									<option value="1">Option 1</option>
									<option value="2">Option 2</option>
									<option value="3">Option 3</option>
								</select>
							</div>
							<p>대여지역 선택</p>
							<select id="area2">
								<option value="" disabled selected>대여날짜를 선택해주세요</option>
								<option value="1">Option 1</option>
								<option value="2">Option 2</option>
								<option value="3">Option 3</option>
							</select>
							<div class="right-align">
								<a class="waves-effect waves-light btn" id="index_btn_ok2">확인</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--차량선택영역 -->
			<div class="col s8 l2 push-l2">

				<div class="card-panel hoverable teal accent-4" id="search3">
					<span class="white-text center">
						<p>
						<h4>차종선택</h4>
						</p>
					</span>
				</div>
				<div class="card" id="card3">
					<div class="row">
						<div class="card-content col s6">
							<input type="checkbox" id="test1" name="option" value="size1"/> <label for="test1"
								class="black-text">경차</label>
						</div>
						<div class="card-content col s6">
							<input type="checkbox" id="test2" name="option" value="size2"/> <label for="test2"
								class="black-text">소형</label>
						</div>
						<div class="card-content col s6">
							<input type="checkbox" id="test3" name="option" value="size3"/> <label for="test3"
								class="black-text">준중형</label>
						</div>
						<div class="card-content col s6">
							<input type="checkbox" id="test4" name="option" value="size4"/> <label for="test4"
								class="black-text">중형</label>
						</div>
						<div class="card-content col s6">
							<input type="checkbox" id="test5" name="option" value="size5"/> <label for="test5"
								class="black-text">대형</label>
						</div>
						<div class="card-content col s6">
							<input type="checkbox" id="test6" name="option" value="size6"/> <label for="test6"
								class="black-text">SUV</label>
						</div>
						<div class="card-content col s6">
							<input type="checkbox" id="test7" name="option" value="size7"/> <label for="test7"
								class="black-text">승합</label>
						</div>
						<div class="card-content col s6">
							<input type="checkbox" id="test8" name="option" value="size8"/> <label for="test8"
								class="black-text">수입</label>
						</div>
						<div class="center-align">
							<a class="waves-effect waves-light btn" id="index_btn_ok3">확인</a>
						</div>
						
					</div>

				</div>
			</div>
			<!-- 검색버튼 영역 -->
			<div class="col s4 l2 push-l2">
				<a href="#!" id="submit">
					<div class="card-panel deep-orange lighten-2">
						<span class="white-text center">
							<p>
							<h4>검색</h4>
							</p>

						</span>
					</div>
				</a>
			</div>
			<input type="hidden" name="period">
		</div>
	</form>
</div>


<!-- 컨테이너 영역 뷰-->
<div class="row">	
	<!-- large 확대시 로그인 패널 -->
   <div class="col l2 push-l10 hide-on-med-and-down">
		<c:if test="${sessionScope.id==null}">
			<form action="customer/login.jsp" method="post">
				<div class="card teal accent-4">
					<div class="card-content white-text text-darken-2">
						<!-- id,password입력 영역 -->
						<div class="input-field col s12">
							<input id="id" type="text"
								class="validate white-text text-darken-2" name="id"> <label
								for="id" class="white-text text-darken-2">아이디</label>
						</div>
						<div class="input-field col s12">
							<input id="password" type="text"
								class="validate white-text text-darken-2" name="pwd"> <label
								for="password" class="white-text text-darken-2">패스워드</label>
						</div>

						<!-- 로그인 회원가입 버튼 -->
						<a class="waves-effect col s12 waves-teal btn-flat teal accent-4 center" href="index.jsp?flag=register"><span
							class="white-text text-lighten-2">회원가입</span></a>
						<div class="row"></div>
						<button class="btn col s12 waves-effect waves-light deep-orange lighten-2" type="submit"
							name="action">로그인</button>

					</div>
				</div>
			</form>
		</c:if>
		<c:if test="${sessionScope.id!=null }">
			<form action="customer/login.jsp" method="post">
				<div class="card teal accent-4">
					<div class="card-content white-text text-darken-2">
						<!-- id,password입력 영역 -->
						<div class="col s12">
							<label class="white-text text-darken-2"><h6>${sessionScope.id }님 환영합니다<h6></label>
						</div>
						

						<!-- 로그인 회원가입 버튼 -->
						<a class="waves-effect col s12 waves-teal btn-flat teal accent-4 center" href="index.jsp?flag=update"><span
							class="white-text text-lighten-2">정보수정</span></a>
						<div class="row"></div>
						<button class="btn col s12 waves-effect waves-light deep-orange lighten-2" type="submit"
							name="action">로그아웃</button>
					
					</div>
				</div>
			</form>
		</c:if>
	</div>
	
	
<!-- 컨테이너 패널 -->
    <div class="col s12 l8">
   
		
		


		