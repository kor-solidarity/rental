<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 메인에 삽입할 업데이트 페이지 -->
<!-- id,pwd,이름,주소,전화번호,운전면허 -->
<div class="row">
    <form class="col s12" action="registerok.jsp" method="post">
      <div class="row">
        <div class="input-field col s8">
          <input disabled id="ID" type="text" class="validate">
          <label for="ID">아이디</label>
        </div>
        <div class="input-field col s4">
          <!-- 아이디 체크 부분 -->
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input id="password" type="password" class="validate">
          <label for="password">패스워드</label>
        </div>
        <div class="input-field col s6">
          <input id="passwordOK" type="password" class="validate">
          <label for="passwordOK">패스워드 확인</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s5">
          <input id="name" type="text" class="validate">
          <label for="name">이름</label>
        </div>
        <div class="input-field col s5">
          <input id="phone" type="text" class="validate">
          <label for="phone">전화번호</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input id="address" type="text" class="validate">
          <label for="address">주소</label>
        </div>
        
      </div>
      <div class="row">
        <div class="input-field col s8">
          <input id="license" type="text" class="validate">
          <label for="license">운전면허번호</label>
        </div>
        
      </div>
      <div class="row center-align">
      <input class="btn-large" type="submit" value="회원수정">
      <a href="index.jsp" class="btn-large">돌아가기</a>
      </div>
    </form>
 </div>