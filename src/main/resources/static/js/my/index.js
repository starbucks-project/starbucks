function showCardList() {
	// var objParam = {
	// 	"cardStatus" : "ALL"
	// };
	
	// ___ajaxCall("/interface/getMsrMyCardList.do", objParam, false, "json", "post"
	// 	,function(_response) {
	// 		if (_response.result_code == "SUCCESS") {
	// 			var jsonData = jQuery.parseJSON(_response.data);
				
				// // 카드 리스트 출력
				// if (Array.isArray(jsonData.cardList) == false) {
				// 	jsonData.cardList = [ jsonData.cardList ];
				// }

		// $(".my_ms_card_cont .slider").empty();
		
		// if (jsonData.cardList.length > 0) {
		// 	$("#cardList").tmpl(jsonData.cardList, {
		// 			getBalance : function() {
		// 			return $.number(this.data.balance);
		// 		}
		// 	}).appendTo(".my_ms_card_cont .slider");
			
			// 슬라이더
			setTimeout(function() {
				var clSlider = $('.my_ms_card_cont .slider').bxSlider({
						pager        : false
					,slideMargin  : 0
					,onSlideAfter : function ($slideElement, oldIndex, newIndex) {
						$(".my_ms_card_inner .curSlideNo").text(newIndex + 1);
					}
				});

				$('.my_ms_card_inner .back').on('click', function () {
					clSlider.goToPrevSlide();	//이전 슬라이드 배너로 이동
							return false;              	//<a>에 링크 차단
					});
					$('.my_ms_card_inner .forward').on('click', function () {
						clSlider.goToNextSlide();	//다음 슬라이드 배너로 이동
							return false;              	//<a>에 링크 차단
					});	
			}, 150);				
		// } else {
		// 	$(".msr_user_index .my_ms_card").hide();
		// 	$(".msr_user_index .have_no_ms_card").show();
		// }
		
		$(".my_ms_card_inner .recent_card").text("총 보유카드 : " + jsonData.totalCnt + "장");
		$(".my_ms_card_inner .totalCnt").text(jsonData.totalCnt);
	}
// 		}
// 	);
// }