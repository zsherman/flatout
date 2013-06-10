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

	// $('.exercise-container .exercise').hover(
	// 	function() {
	// 		$(this).children('.exercise-content-wrapper').animate({"top":"-242px"}, 300);
	// 	},
	// 	function() {
	// 		$(this).children('.exercise-content-wrapper').animate({"top":"0px"}, 300);
	// 	}
	// );

	$('.exercise-container .exercise .plus').click(
		function() {
			$exercise = $(this).closest('.exercise');
			if($exercise.hasClass('clicked')) {
				$exercise.children('.exercise-content-wrapper').animate({"top":"0px"}, 300);
	 			$exercise.removeClass('clicked');
			} else {
				$exercise.children('.exercise-content-wrapper').animate({"top":"-242px"}, 300);
				$exercise.addClass('clicked');
			};
		}
	);

	$('.exercise-container .exercise .close').click(
		function() {
			$exercise = $(this).closest('.exercise');
			$exercise.children('.exercise-content-wrapper').animate({"top":"0px"}, 300);
	 		$exercise.removeClass('clicked');
		}
	);

	$('.show-list').click(function(e){
		$exercise = $(this).closest('.exercise');
		var exerciseName = $exercise.find('h2.exercise-name').text();
		var exerciseId = $exercise.find('.exercise-content-wrapper').attr('data-exercise-id');
		$('#exercise-modal h2').text(exerciseName);
		$('#exercise-modal #exercise_id').attr('value', exerciseId);
	});


});
