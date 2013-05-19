// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(function() {

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

	$('.side-nav .add-new').click(function() {
		$(this).before('<li class="routine"><i></i><a href="#">Add New</a></li>');
		$('.routine a').last().attr('contentEditable',true).addClass('editing').selectText();
		$('.routine a.editing').keypress(function(e) {
			if(e.which == 13) {
				$(this).attr('contentEditable', false).removeClass('editing');
			};
			$('.side-nav .active').removeClass('active');
			$(this).parent().addClass('active');
		});
		return false;
	});

});