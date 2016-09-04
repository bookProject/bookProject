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
					  Materialize.toast('추가되었습니다.', 1000);
				  }else{
					  Materialize.toast('위시리스트 추가 실패', 1000);
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
					  Materialize.toast('취소되었습니다.', 1000);
				   }else{
					   Materialize.toast('위시리스트 취소 실패', 1000);
				   }
			   }
			});
		}
	});
	
	$(".waves-effect.waves-light.btn.price.rent").click(function() {
		if(!$(this).hasClass("on")){
			$(this).addClass("on");
			$(".waves-effect.waves-light.btn.price.buy").removeClass("on");					   
		}else{
			Materialize.toast('이미 선택했습니다.', 1000);
		}
	});
	
	$(".waves-effect.waves-light.btn.price.buy").click(function() {
		if(!$(this).hasClass("on")){
			$(this).addClass("on");
			$(".waves-effect.waves-light.btn.price.rent").removeClass("on");					   
		}else{
			Materialize.toast('이미 선택했습니다.', 1000);
		}
	});
	
	$(".waves-effect.waves-light.btn-large.binfo").click(function(){
		if($(".waves-effect.waves-light.btn.price.buy").hasClass("on")){		
			alert($(".waves-effect.waves-light.btn.price.buy").attr('id'));
		}else if($(".waves-effect.waves-light.btn.price.rent").hasClass("on")){
			alert($(".waves-effect.waves-light.btn.price.rent").attr('id'));
		}
	});
	
	$(".orderok").click(function(){
		Materialize.toast('구매완료 했습니다.', 1200);
	});
	
    $('.collapsible').collapsible({
        accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
});
function autoplay() {
    $('.carousel').carousel('next');
    setTimeout(autoplay, 3500);
}