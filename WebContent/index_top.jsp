<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- large미만 로고 뷰 -->
<div class="hide-on-large-only">
   <nav>
    <div class="nav-wrapper teal lighten-2">
      <a href="#!" class="brand-logo center">RENTAL</a>
      <!-- Modal Trigger -->
      <a href="#modal1" class="button-collapse modal-trigger" id="modallogin"><i class="material-icons">menu</i></a>
    </div>
  </nav>
</div>
  <!-- Modal Structure 로그인 창-->
<div id="modal1" class="modal teal darken-3">
	<form>
    <div class="modal-content">
      <h4 class="white-text text-darken-2">로그인</h4>
      <p>
    	  
			<div class="input-field col s12">
				<input id="id" type="text" class="validate white-text text-darken-2"> <label for="id" class="white-text text-darken-2">아이디</label>
			</div>
			<div class="input-field col s12">
				<input id="password" type="text" class="validate white-text text-darken-2"> <label
					for="password" class="white-text text-darken-2">패스워드</label>
			</div>
	  </p>
    </div>
		<div class="modal-footer teal lighten-3">
			<a href="#!" class="modal-close waves-effect waves-green btn-flat teal darken-3"><span class="white-text text-darken-2">닫기</span></a>
			<a href="#!" class="modal-action waves-effect waves-green btn-flat teal darken-3"><span class="white-text text-darken-2">회원가입</span></a>
			<button class="btn col s12 waves-effect waves-light teal darken-3" type="submit"
				name="action">로그인</button>
		</div>
	</form>
</div>
 

<!-- 패럴렉스 이미지 및 로고 뷰 large에서만 보임 -->
<div class="parallax-container">
   <a href="#" class="valign hide-on-med-and-down"><h1 class="white-text center">RENTAL</h1></a>
   <div class="parallax"><img src="data/main.jpg">
	</div>
</div>
<!-- navbar안에 넣기 -->
<div class="row">

	<div class="row z-depth-2">
		<!-- 대여지역날짜 선택영역 -->
		<div class="col s12 l3 push-l2">
			<div class="card teal darken-2" id="search1">
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">
						<i class="material-icons">location_on</i><span>대여지역</span>
					</span>
					<p>
						<i class="material-icons">av_timer</i><span>대여시간</span>
					</p>
				</div>
			</div>
		</div>
		<div class="col s12 l3 push-l2" id="card1">
			<div class="row">
				<div class="card teal lighten-2">
					<div class="card-content black-text">
						<span>대여날짜</span>
						<div class="input-field col s12">
							<select>
								<option value="" disabled selected>대여날짜를 선택해주세요</option>
								<option value="1">Option 1</option>
								<option value="2">Option 2</option>
								<option value="3">Option 3</option>
							</select>
						</div>
						<p>대여지역 선택</p>
						<select>
							<option value="" disabled selected>대여날짜를 선택해주세요</option>
							<option value="1">Option 1</option>
							<option value="2">Option 2</option>
							<option value="3">Option 3</option>
						</select> <a class="waves-effect waves-light btn">button</a>
						<button class="btn waves-effect waves-light" type="submit"
							name="action">Submit</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 반납지역날짜 선택영역 -->
		<div class="col s12 l3 push-l2">
			<div class="card" id="search2">
				<div class="card-content">
					<span class="card-title activator grey-text text-darken-4">
						<i class="material-icons">location_on</i><span>지역</span>
					</span>
					<p>
						<i class="material-icons">av_timer</i><span>시간</span>
					</p>
				</div>
			</div>
		</div>
		<div class="col s12 l3 push-l5" id="card2">
			<div class="card light-blue lighten-1">
				<div class="card-content white-text">
					<span>대여날짜</span>
					<div class="input-field col s12">
						<select>
							<option value="" disabled selected>대여날짜를 선택해주세요</option>
							<option value="1">Option 1</option>
							<option value="2">Option 2</option>
							<option value="3">Option 3</option>
						</select>
					</div>
					<p>대여지역 선택</p>
					<select>
						<option value="" disabled selected>대여날짜를 선택해주세요</option>
						<option value="1">Option 1</option>
						<option value="2">Option 2</option>
						<option value="3">Option 3</option>
					</select> <a class="waves-effect waves-light btn">button</a>
					<button class="btn waves-effect waves-light" type="submit"
						name="action">Submit</button>
				</div>
			</div>
		</div>
		<!--  -->
		
	</div>
</div>


<!-- large 크기  영역 뷰-->
<div class="row">	
	<!-- 로그인 패널 -->
   <div class="col l2 push-l10 hide-on-med-and-down">
		<form>
			<div class="card teal darken-3">
				<div class="card-content white-text text-darken-2">
					<!-- id,password입력 영역 -->
							<div class="input-field col s12">
								<input id="id" type="text" class="validate white-text text-darken-2"> <label
									for="id" class="white-text text-darken-2">아이디</label>
							</div>
							<div class="input-field col s12">
								<input id="password" type="text" class="validate white-text text-darken-2"> <label
									for="password" class="white-text text-darken-2">패스워드</label>
							</div>
						
					<!-- 로그인 회원가입 버튼 -->
					<a class="waves-effect col s12 waves-teal btn-flat center"><span class="blue-text text-lighten-2">회원가입</span></a>
					<div class="row"></div>
					<button class="btn col s12 waves-effect waves-light" type="submit"
						name="action">
						로그인
					</button>
					
				</div>
			</div>
		</form>
	</div>
	
	
<!-- large일시 컨테이너 패널 -->
    <div class="col s12 l8">
		<!-- 컨테이너 영역 -->
		<div class="row">
			<!-- 대여정보 버튼영역-->
			<!-- <div class="col s12 l4">
				<div class="card teal lighten-2" id="search1">
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">
							<i class="material-icons">location_on</i><span>대여지역</span>
						</span>
						<p>
							<i class="material-icons">av_timer</i><span>대여시간</span>
						</p>
					</div>
				</div> -->
				<!-- 대여정보 세부선택영역 -->
				<!-- <div class="col s12 l3" id="card1">
					<div class="row">
						<div class="card teal lighten-2">
							<div class="card-content black-text">
								<span>대여날짜</span>
								<div class="input-field col s12">
									<select>
										<option value="" disabled selected>대여날짜를 선택해주세요</option>
										<option value="1">Option 1</option>
										<option value="2">Option 2</option>
										<option value="3">Option 3</option>
									</select>
								</div>
								<p>
								대여지역 선택
								</p>
								<select>
										<option value="" disabled selected>대여날짜를 선택해주세요</option>
										<option value="1">Option 1</option>
										<option value="2">Option 2</option>
										<option value="3">Option 3</option>
								</select>
								<a class="waves-effect waves-light btn">button</a>
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Submit
								</button>
							</div>
						</div>
					</div>
				</div> -->
			</div>
			<!-- 반납정보 버튼영역 -->
			<div class="col s12 l4">
				<!-- <div class="card" id="search2">
					<div class="card-content">
						<span class="card-title activator grey-text text-darken-4">
							<i class="material-icons">location_on</i><span>지역</span>
						</span>
						<p>
							<i class="material-icons">av_timer</i><span>시간</span>
						</p>
					</div>
				</div> -->
				<!-- 반납정보 세부선택영역 -->
				<!-- <div class="col s12 l3" id="card2">
					<div class="card light-blue lighten-1">
						<div class="card-content white-text">
							<span>대여날짜</span>
								<div class="input-field col s12">
									<select>
										<option value="" disabled selected>대여날짜를 선택해주세요</option>
										<option value="1">Option 1</option>
										<option value="2">Option 2</option>
										<option value="3">Option 3</option>
									</select>
								</div>
								<p>
								대여지역 선택
								</p>
								<select>
										<option value="" disabled selected>대여날짜를 선택해주세요</option>
										<option value="1">Option 1</option>
										<option value="2">Option 2</option>
										<option value="3">Option 3</option>
								</select>
								<a class="waves-effect waves-light btn">button</a>
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Submit
								</button>
						</div>
					</div>
				</div> -->
			</div>
				
			<div class="col s12 l4">
				
			</div>
			
		</div>
		


