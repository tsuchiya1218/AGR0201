$(document).ready(function() {
		$(".title").mouseenter(function() {
			$(this).css("text-decoration", "underline");
			$(this).css("color", "black");
			;
		});
		$(".title").mouseleave(function() {
			$(this).css("text-decoration", "none");
			;
		});
	});