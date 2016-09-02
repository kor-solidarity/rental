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
	 

});