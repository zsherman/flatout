// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(function() {

	$exercises = $('.routine li');

	$('.routine a.next').click(function(e) {
		e.preventDefault();
		$active = $('li.active');
		$active.removeClass('active');
		$active.next('li').addClass('active');
	})

	$('.routine a.restart').click(function(e) {
		e.preventDefault();
		$(this).parent('li').removeClass('active');
		$('.routine li').first().addClass('active');
	})

	$('.exercise-container .exercise').hover(
		function() {
			$(this).children('.exercise-content-wrapper').animate({"top":"-193px"}, 300);
		},
		function() {
			$(this).children('.exercise-content-wrapper').animate({"top":"0px"}, 300);
		}
	);


});
