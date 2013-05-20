// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(function() {

	// Side nav

	jQuery.fn.selectText = function(){
	   var doc = document;
	   var element = this[0];
	   console.log(this, element);
	   if (doc.body.createTextRange) {
	       var range = document.body.createTextRange();
	       range.moveToElementText(element);
	       range.select();
	   } else if (window.getSelection) {
	       var selection = window.getSelection();
	       var range = document.createRange();
	       range.selectNodeContents(element);
	       selection.removeAllRanges();
	       selection.addRange(range);
	   }
	};



	$('.side-nav .add-new').click(function(e) {
		e.preventDefault();
		$('a.editing').removeClass('editing').attr('contentEditable', false);
		$(this).before('<li class="routine"><i></i><a href="#">Untitled</a></li>');
		$('.routine a').last().attr('contentEditable',true).addClass('editing').selectText();
		$('.routine a.editing').keypress(function(e) {
			if(e.which == 13) {
				$(this).attr('contentEditable', false).removeClass('editing');
				var name = $(this).text();
				$.ajax({
			    url: "/routines",
			    type: "POST",
			    data: { name: name },
			    success: function(resp){
			    	console.log(resp);
			    	console.log('it worked');
			    }
				});
			};
		});

		return false;

	});

	$('html').click(function(e){
		$('.routine a.editing').attr('contentEditable', false).removeClass('editing');
		$('.side-nav .routine a').dblclick(function(e) {
			e.preventDefault();
			$('.routine a.editing').attr('contentEditable', false).removeClass('editing');
			$(this).attr('contentEditable', true).addClass('editing').selectText();
			$(this).keypress(function(e) {
				if(e.which == 13) {
					$(this).attr('contentEditable', false).removeClass('editing');
					// Persist name change
				}
			});

		});
		//return false;
	});

	$('.routine a.editing').click(function(e){
		e.stopPropogation();
		//return false;
	});




});
