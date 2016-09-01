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
});