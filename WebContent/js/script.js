$(document).ready(function(){
	$('.parallax').parallax();
	 $('#modallogin').leanModal();
	 $('select').material_select();
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
	 $("#submit").on("click",function(){
		 var str="";
		if($("#test1").is(":checked")){
			str+=$("#test1").val();
		}
		if($("#test2").is(":checked")){
			str+="-"+$("#test2").val();
		}
		if($("#test3").is(":checked")){
			str+=$("#test3").val();
		}
		if($("#test4").is(":checked")){
			str+=$("#test4").val();
		}
		if($("#test5").is(":checked")){
			str+=$("#test5").val();
		}
		if($("#test6").is(":checked")){
			str+=$("#test6").val();
		}
		if($("#test7").is(":checked")){
			str+=$("#test7").val();
		}
		if($("#test8").is(":checked")){
			str+=$("#test8").val();
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
	 
	 
	 var myDate2 = new Date();
	for(var i=1;i<8;i++){
			$("#period1").children().eq(0).children().eq(2).children().eq(i).text(""+(myDate2.getMonth()+1)+"월"+(myDate2.getDate()+i-1)+"일");
			$("#period1").children().eq(0).children().eq(2).children().eq(i).attr("class","teal-text");
			$("#period1").children().eq(0).children().eq(3).children().eq(i).val(myDate2.getFullYear()+"/"+(myDate2.getMonth()+1)+"/"+(myDate2.getDate()+i-1));
	}
	 
	 $("#period1").on("change",function(){
		 	var date=new Date($('#period1 option:selected').val());
		 	$("#period2").children().eq(0).children().eq(2).children().eq(0).text("반납 날짜를 선택해주세요");
		 	
		 	for(var i=1;i<8;i++){
				$("#period2").children().eq(0).children().eq(2).children().eq(i).text(""+(date.getMonth()+1)+"월"+(date.getDate()+i)+"일");
				$("#period2").children().eq(0).children().eq(2).children().eq(i).attr("class","teal-text");
				$("#period2").children().eq(0).children().eq(3).children().eq(i).val(date.getFullYear()+"/"+(date.getMonth()+1)+"/"+(date.getDate()+i));
		}
	 });
	 
	 
	 
	 
});


