$(document).ready(function(){
	$('.parallax').parallax();
	 $('#modallogin').leanModal();
	 $('select').material_select();
	 $('#modalrental').leanModal({
	      dismissible: true, // Modal can be dismissed by clicking outside of the modal
	      opacity: .0, // Opacity of modal background
	      in_duration: 300, // Transition in duration
	      out_duration: 200, // Transition out duration
	      starting_top: '4%', // Starting top style attribute
	      ending_top: '10%', // Ending top style attribute
	      ready: function() { alert('1'); }, // Callback for Modal open
	      complete: function() { alert('Closed'); } // Callback for Modal close
	    }
	  );
	 $('#modalreturn').leanModal({
	      dismissible: true, // Modal can be dismissed by clicking outside of the modal
	      opacity: .0, // Opacity of modal background
	      in_duration: 300, // Transition in duration
	      out_duration: 200, // Transition out duration
	      starting_top: '4%', // Starting top style attribute
	      ending_top: '10%', // Ending top style attribute
	      ready: function() { alert('2'); }, // Callback for Modal open
	      complete: function() { alert('Closed'); } // Callback for Modal close
	    }
	  );
	 $("#card1").css("display","none");
	 $("#search1").on("click",function() {
         if ($("#card1").css("display") == "none") {
            $("#card1").show("fast");
            $("#card2").hide("fast");
         }else{
            $("#card1").css("display","none");
         }

      });
	 $("#card2").css("display","none");
	 $("#search2").on("click",function() {
         if ($("#card2").css("display") == "none") {
        	 $("#card2").show("fast");
            $("#card1").hide("fast");
         }else{
            $("#card2").css("display","none");
         }

      });

});