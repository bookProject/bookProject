$(document).ready(function() {
	$('.carousel').carousel();
	autoplay();   

	$(".star_rating a").click(function() {
		$(this).parent().children("a").removeClass("on");
		$(this).addClass("on").prevAll("a").addClass("on");
		return false;
	});

	$(".favorite").click(function() {
		var book_no = $(this).attr('id');
		var result = "false";
		if(!$(this).hasClass("on")){
			$.ajax({
			   type: "post",
			   dataType: "json", // 응답 데이터 타입
			   context: this,
			   data: "no=" + book_no,
			   url: "wishInsert.jsp",
			   success: function(data) {
				  if(data.result){
					  $(this).addClass("on");
					  Materialize.toast('추가되었습니다.', 800);
				  }else{
					  Materialize.toast('위시리스트 추가 실패', 800);
				  }
			   }
			});
		}else{
			$.ajax({
			   type: "post",
			   dataType: "json",
			   context: this,
			   data: "no=" + book_no,
			   url: "wishDelete.jsp",
			   success: function(data) {
				   if(data.result){
					  $(this).removeClass("on");					   
					  Materialize.toast('취소되었습니다.', 800);
				   }else{
					   Materialize.toast('위시리스트 취소 실패', 800);
				   }
			   }
			});
		}
	});
	
    $('.collapsible').collapsible({
        accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
});
function autoplay() {
    $('.carousel').carousel('next');
    setTimeout(autoplay, 3500);
}