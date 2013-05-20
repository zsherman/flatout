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


});