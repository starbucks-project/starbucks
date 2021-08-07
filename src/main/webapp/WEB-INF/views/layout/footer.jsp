<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer id="footer" class="bg-one">
  <div class="top-footer">
    <div class="footer-page-box">
      <div class="row">

        <div class="footer-menus">
        <div class="footer-menu-ul">
          <ul>
            <li class="footer-menu-title"><a>COMPANY</a></li>
            <li><a>한눈에 보기</a></li>
            <li><a>스타벅스 사명</a></li>
            <li><a>스타벅스 소개</a></li>
						<li><a>국내 뉴스룸</a></li>
						<li><a>세계의 스타벅스</a></li>
						<li><a>글로벌 뉴스룸</a></li>
          </ul>
        </div>
        <div class="footer-menu-ul">
          <ul>
            <li class="footer-menu-title"><a>CORPORATE SALES<span></span></a></li>
            <li><a>단체 및 기업 구매 안내</a></li>
          </ul>
        </div>
        <div class="footer-menu-ul">
          <ul>
            <li class="footer-menu-title"><a>PARTNERSHIP</a></li>
            <li><a>신규 입점 제의</a></li>
						<li><a>협력 고객사 등록 신청</a></li>
          </ul>
        </div>
        <div class="footer-menu-ul">
          <ul>
            <li class="footer-menu-title"><a>ONLINE COMMUNITY</a></li>
            <li><a>페이스북</a></li>
						<li><a>트위터</a></li>
						<li><a>유튜브</a></li>
						<li><a>인스타그램</a></li>
          </ul>
        </div>
        <div class="footer-menu-ul">
          <ul>
            <li class="footer-menu-title"><a>RECRUIT</a></li>
            <li><a>채용 소개</a></li>
						<li><a>채용 지원하기</a></li>
          </ul>
        </div>
        </div>
      </div>
    </div> <!-- end container -->
  </div> <!-- end top footer -->
  <div class="footer-bottom">
		<ul>
			<li>
        <a>개인정보처리방침</a>
        <a>영상정보처리기기 운영관리 방침</a>
        <a>홈페이지 이용약관</a>
        <a>위치정보 이용약관</a>
        <a>스타벅스 카드 이용약관</a>
        <a>비회원 이용약관</a>
        <a>My DT Pass 서비스 이용약관</a>
        <a>윤리경영 핫라인</a>
      </li>
			
    </ul>
		<div class="footer-bottom-button-box">
			<button class="footer-bottom-button">찾아오시는 길</button>
			<button class="footer-bottom-button">신규입점제의</button>
			<button class="footer-bottom-button">사이트맵</button>
		</div>
		<ul>
			<li class="footer-bottom-ul-li">사업자등록번호: 201-81-21515</li>
			<li class="footer-bottom-ul-li">(주)스타벅스커피 코리아 대표이사: 송 데이비드 호섭</li>
			<li class="footer-bottom-ul-li">TEL: 1522-3232</li>
			<li class="footer-bottom-ul-li">개인정보 책임자: 하악성</li>
		</ul>
    <div class="copyright-box">
    <a>&copy; 2021 Starbucks Coffee Company. All Rights Reserved</a>
  </div>
  </div>
</footer> <!-- end footer -->
  </body>
    <!-- kakao login/logout -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="/js/kakaoScript.js"></script>

    <!-- 
    Essential Scripts
    =====================================-->
    <!-- Main jQuery -->
    <script src="/plugins/jquery/jquery.min.js"></script>

    <!-- Form Validation -->
    <script src="/plugins/form-validation/jquery.form.js"></script> 
    <script src="/plugins/form-validation/jquery.validate.min.js"></script>
    
    <!-- Bootstrap4 -->
    <script src="/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Parallax -->
    <script src="/plugins/parallax/jquery.parallax-1.1.3.js"></script>
    <!-- lightbox -->
    <script src="/plugins/lightbox2/dist/js/lightbox.min.js"></script>
    <!-- Owl Carousel -->
    <script src="/plugins/slick/slick.min.js"></script>
    <!-- filter -->
    <script src="/plugins/filterizr/jquery.filterizr.min.js"></script>
    <!-- Smooth Scroll js -->
    <script src="/plugins/smooth-scroll/smooth-scroll.min.js"></script>
    
    <!-- Custom js -->
    <script src="/js/script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Vendor JS Files -->
  <script src="/plugins/vendor/aos/aos.js"></script>
  <script src="/plugins/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/plugins/vendor/php-email-form/validate.js"></script>
  <script src="./plugins/vendor/purecounter/purecounter.js"></script>
  <script src="/plugins/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="/js/ezmark.js"></script>
  <script src="/plugins/js/main.js"></script>
  <script>
    // $(document).ready(function () {
		
		// [나만의 메뉴 팝업]
    // $("#btn_show_pop_detail").on("click", function () {
    //         console.log("1");
    //    			//showPopMyMenu();
    //         myMenuDetail();
    //    	      });

               
    // [닫기]
    // $(".btn_pop_close").on("click", hidePopMyMenu);
	// });

//팝업 동적 코딩
 $(document).ready(function () {
   console.log("1");
    $(".btn_pop_close").on("click", hidePopMyMenu);
    $(".btn_show_pop_detail").on("click", myMenuDetail(mymenuId));
 }

let myMenuDetail = async (mymenuId) => {
console.log("2");
event.preventDefault();
let response = await fetch("/user/mymenuPop/"+mymenuId, {
  method: "get"
});
console.log("3");
let parseResponse = await response.json();

console.log(parseResponse);

  		if(parseResponse.code === 1){
			//let popBoxEL = document.querySelector("#pop02");
		
			let popupItem = document.createElement("div");
			popupItem.id = "mymenu-pop-"+mymenuId;
			popupItem.className = "sArea_pop";
      popupItem.role="dialog";
      popupItem.aria-hidden="false";
      popupItem.tabindex="0";
			
      let temp =`
        <p class="btn_pop_close"><a href="javascript:void(0);">닫기</a></p>
                                  <section class="sArea_pop_inner">
                                  <!-- 내용 -->
                                  <div id="landing_wrap">
                                   <div class="landing_inner_wrap">
                                    <header class="landing_ttl">
                                      <p class="en">MY FAVORITE DRINK</p>
                                      <h1>${parseResponse.data.productName}</h1>
                                    </header>
                                    <p class="calling_name_ttl">
                                      <img alt="콜링네임" src="/images/calling_name_ttl.png">닉네임 '콜드브루'
                                    </p>
                                    <p class="landing_comments_date">${parseResponse.data.createDate}</p>
                                    <div class="landing_conts_wrap">
                                      <div class="landing_conts_img">
                                        <img src="/images/${parseResponse.data.productImg}">
                                      </div>
                                      <div class="landing_conts_txt">
                                        <dl>
                                          <dt>기본 음료</dt>
                                          <dd>${parseResponse.data.productName}</dd>
                                        </dl>
                                        <div class="btn_bev_info">
                                          <p><a href="/menu/drink_view.do?product_cd=169001">음료 정보</a></p>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
      `;
			
			popupItem.innerHTML = temp;
		}
}


  // "나만의 메뉴 자세히보기" 팝업 출력
  function showPopMyMenu() {
    // 레이어 팝업 출력
       console.log("2");
       $(".sArea_pop").show();
       console.log("3");
       $(".only_my_dimm, .sArea_pop").fadeIn();
       console.log("4");
       $(".sArea_pop").attr("aria-hidden","false").attr("tabindex","0").focus(); 
    }

  // "나만의 메뉴 자세히보기" 팝업 닫기
	function hidePopMyMenu() {
		$(".only_my_dimm , .sArea_pop").attr("aria-hidden", "true").attr("tabindex", "0").fadeOut();
		$(".btn_show_pop_detail > a").focus(); 
	}
  
          //All checkbox
        $("#Allcheck").on("click",function(){ 
            //전체선택 체크박스 클릭 
            console.log("5");
            //해당화면에 전체 checkbox들을 체크해준다 
            if($(".ez-mcheckbox").attr("class")=="ez-mcheckbox ez-checked") { 
                  console.log("6");
                  //해당화면에 모든 checkbox들의 체크를해제시킨다. 
                  $(".ez-mcheckbox").attr("class","ez-mcheckbox").focus(); 
                  console.log("7");
                } else { 
                  console.log("8");
                  //해당화면에 전체 checkbox들을 체크해준다 
                 $(".ez-mcheckbox").attr("class","ez-mcheckbox ez-checked").focus(); 
                    } 
          });

        $(".chkAll checkbox").on("click",function(){ 
            //전체선택 체크박스 클릭 
            console.log("7");
            //해당화면에 전체 checkbox들을 체크해준다 
            $(".ez-mcheckbox").attr("class","ez-mcheckbox ez-checked").focus(); 
            console.log("8");
          });
</script>
  </html>
