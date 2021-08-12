(function ($) {
	'use strict';

	
})(jQuery);

$(document).ready(function() {
	function showCardList(){
		// var objParam = {
		// 	"cardStatus" : "ALL"
		// };
		setTimeout(function() {
			var clSlider = $('.my_ms_card_cont .slider').bxSlider({
				pager: false,
				slideMargin  : 0,
				onSlideAfter : function ($slideElement, oldIndex, newIndex) {
					$(".my_ms_card_inner .curSlideNo").text(newIndex + 1);
				}
			});
	
			$('.my_ms_card_inner .card_header_box_two .back').on('click', function () {
				clSlider.goToPrevSlide();	//이전 슬라이드 배너로 이동
				console.log("back됐나?");
				return false;              	//<a>에 링크 차단
				});
			$('.my_ms_card_inner .card_header_box_two .forward').on('click', function () {
				clSlider.goToNextSlide();	//다음 슬라이드 배너로 이동
				console.log("forward 됐나?");
				return false;              	//<a>에 링크 차단
			});	
		}, 150);	
	
	}
});
