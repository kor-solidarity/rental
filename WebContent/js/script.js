$(document).ready(function(){
	$('.parallax').parallax();	//상단이미지 parallax 효과
	 $('#modallogin').leanModal();  //로그인 모달창열기
	 $('#modallogin2').leanModal();  //로그인 모달창열기
	 $('select').material_select(); //select 박스에 material효과주기
	
	 
	 //각각의 카드 클릭시 다른카드 뷰 hide
	 $("#card1").css("display","none");  	
	 $("#search1").on("click",function() {
         if ($("#card1").css("display") == "none") {
            $("#card1").show("fast");
            $("#card2").hide("fast");
            $("#card3").hide("fast");
         }else{
            $("#card1").css("display","none");
         }

      });
	 $("#card2").css("display","none");
	 $("#card3").css("display","none");
	 $("#search2").on("click",function() {
         if ($("#card2").css("display") == "none") {
        	 $("#card2").show("fast");
            $("#card1").hide("fast");
            $("#card3").hide("fast");
         }else{
            $("#card2").css("display","none");
         }

      });
	 $("#search3").on("click",function() {
         if ($("#card3").css("display") == "none") {
        	 $("#card3").show("fast");
        	 $("#card1").hide("fast");
        	 $("#card2").hide("fast");
         }else{
            $("#card3").css("display","none");
         }

      });
	 
	 //검색 버튼 클릭시 입력값 검사
	 $("#submit").on("click",function(){
		
		 var sdate=new Date($('#period1 option:selected').val());
		 var edate=new Date($('#period2 option:selected').val());
		
		if(edate=="Invalid Date"||sdate=="Invalid Date"||edate==""||sdate==""){
			Materialize.toast('대여날짜를 선택해주세요', 3000, 'rounded');
			return;
		}
		if(edate<=sdate){
			Materialize.toast('대여날짜를 선택해주세요', 3000, 'rounded');
			return;
		}
		
		$("#search").submit();
	 });
	 
	 $("#index_btn_ok1").on("click",function(){
		 $("#card1").hide("fast");
	 });
	 $("#index_btn_ok2").on("click",function(){
		 $("#card2").hide("fast");
	 });
	 $("#index_btn_ok3").on("click",function(){
		 $("#card3").hide("fast");
	 });
	 $('.carousel').carousel();
	 
	 //사이트 접속했을시 나오는 대여날짜 초기입력
	 var myDate2 = new Date();
	for(var i=1;i<8;i++){
			
			$("#period1").children().eq(0).children().eq(2).children().eq(i).text(""+(myDate2.getMonth()+1)+"월"+(myDate2.getDate())+"일");
			$("#period1").children().eq(0).children().eq(2).children().eq(i).attr("class","teal-text");
			$("#period1").children().eq(0).children().eq(3).children().eq(i).val(myDate2.getFullYear()+"/"+(myDate2.getMonth()+1)+"/"+(myDate2.getDate()));
			myDate2.setDate(myDate2.getDate()+1);
	}
	 
	//대여날짜 클릭시 반납날짜 생성및 텍스트 변경
	 $("#period1").on("change",function(){
		 	
		 	var date=new Date($('#period1 option:selected').val());
		 	
		 	$("#rental_date").text((date.getMonth()+1)+"월"+date.getDate()+"일");
		 	var date2=new Date(date.getFullYear()+"/"+(date.getMonth()+1)+"/"+(date.getDate()));
		 	date2.setDate(date2.getDate()+1);
		 	$("#return_date").text((date2.getMonth()+1)+"월"+(date2.getDate())+"일");
		 	$("#period2").children().eq(0).children().eq(2).children().eq(0).text("반납 날짜를 선택해주세요");
		 	for(var i=1;i<8;i++){
		 		date.setDate(date.getDate()+1);
				$("#period2").children().eq(0).children().eq(2).children().eq(i).text(""+(date.getMonth()+1)+"월"+(date.getDate())+"일");
				$("#period2").children().eq(0).children().eq(2).children().eq(i).attr("class","teal-text");
				$("#period2").children().eq(0).children().eq(3).children().eq(i).val(date.getFullYear()+"/"+(date.getMonth()+1)+"/"+(date.getDate()));
		}
		 	$("#period2 option:eq(1)").attr("selected", "selected");
		 	$("#period2").children().eq(0).children().eq(1).val("반납날짜를 선택해주세요");
		 	
	 });
	 //반납날짜 변환시 텍스트변경
	 $("#period2").on("change",function(){
		 
		 if($('#period2 option:selected').val()!=""){
			 var date=new Date($('#period2 option:selected').val());
			 $("#return_date").text((date.getMonth()+1)+"월"+date.getDate()+"일");
		 }
		 
	 });
	 
	 
	 
	 
	 
});


