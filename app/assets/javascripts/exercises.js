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
			$(this).children('.exercise-content-wrapper').animate({"top":"-242px"}, 300);
		},
		function() {
			$(this).children('.exercise-content-wrapper').animate({"top":"0px"}, 300);
		}
	);

	$('.show-list').click(function(e){
		var exerciseName = $(this).parent().find('h2.exercise-name').text();
		var exerciseId = $(this).parent().attr('data-exercise-id');
		$('#exercise-modal h2').text(exerciseName);
		$('#exercise-modal #exercise_id').attr('value', exerciseId);
	});


});
