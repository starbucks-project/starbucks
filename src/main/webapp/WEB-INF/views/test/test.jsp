<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    HELLO
    <div id="myDrink" class="myDrink">
        <a href="javascript:void(0)">나만의 음료로 등록</a>
   </div>


 <div class="only_my_dimm" style="display: none;" aria-hidden="true" tabindex="0"></div>
  <div class="only_my_drink" style="display: none;" role="dialog" aria-hidden="true" tabindex="0">
    <div class="only_my_head">
      <p class="tit">나만의 음료</p>
      <p class="close"><a href="javascript:void(0)" class="btn_close" role="button">
        <img src="/images/mymenu-register/btn_closesa.png" alt="팝업 닫기"></a></p>
    </div>
      
    <!-- Step 1 -->
    <div class="only_my_cont my_drink_step2" >
      <dl class="my_sel_drink">
        <dt>
          <img alt="" class="skuImgUrl" src="/images/mymenu-register/아이스크림 블렌딩 콜드 브루.jpg"></dt>
        <dd>
          <p class="t1">아이스크림 블렌딩 콜드 브루<br><span>Ice Cream Blending Cold Brew</span></p>
        </dd>
      </dl>
      <ul class="btn_list">
        <li class="li1"><a href="/user/mymenu_re2" class="btn_go_my_drink_step3" role="button">나만의 음료에 등록</a></li>
        <li class="li2"><a href="javascript:void(0)" class="btn_close" role="button">취소</a></li>
      </ul>
    </div>
    <!-- Step 1 end-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>    
	$(document).ready(function () {
		
		// [나만의 음료로 등록]
       	$(".myDrink > a").on("click", function () {
                console.log("1");
       			showPopMyDrink();
       	});
       	// [닫기]
       	$(".btn_close").on("click", hidePopMyDrink);
    });  		

       	
	// "나만의 음료로 등록" 팝업 출력
    function showPopMyDrink() {
                     // 레이어 팝업 출력
                     console.log("2");
                     $(".my_drink_step2").show();
                     console.log("3");
                     $(".only_my_dimm, .only_my_drink").fadeIn();
                     console.log("4");
                     $(".only_my_drink").attr("aria-hidden","false").attr("tabindex","0").focus(); 
                     console.log("5");
	}
    
	// "나만의 음료로 등록" 팝업 닫기
	function hidePopMyDrink() {
		$(".only_my_dimm , .only_my_drink , .only_my_drink2").attr("aria-hidden", "true").attr("tabindex", "0").fadeOut();// 접근성_20171123 aria, tabindex 추가
		$(".myDrink > a").focus(); 
	}
</script>    
</body>
</html>