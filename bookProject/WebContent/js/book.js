$(document).ready(function() {
	$('.carousel').carousel();
	autoplay();   
	

	$(".star_rating a").click(function() {
		$(this).parent().children("a").removeClass("on");
		$(this).addClass("on").prevAll("a").addClass("on");
		return false;
	});

	$(".favorite").click(function() {
		if(!$(this).hasClass("on")){
			$(this).addClass("on");
		}else{
			$(this).removeClass("on");
		}
	});

});
function autoplay() {
    $('.carousel').carousel('next');
    setTimeout(autoplay, 3500);
}