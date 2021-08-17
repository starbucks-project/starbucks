<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<main id="main">

  <!--============menu_container=================-->
  <div class="menu_container">
    <!--=========서브타이틀==========-->
    <div class="sub_tit_wrap">
      <div class="sub_tit_inner">
          <h2><img src="/images/menu_main/menu_tit.jpg" alt="MENU"/></h2>
      </div>
    </div>

  <!--=========menu main==========-->
  <div class="menuMain"></div>

<!--============음료 menu drink section===========-->
  <div class="menu_drink_section">
    <div class="menu_section_inner">
      <div class="menu_drink_txt01">
        <img class="w_pic" src="/images/menu_main/menu_btxt1.png" alt="음료 스타벅스의 특별함을 경험해보세요. 특별한 스타벅스 경험을 고객 한 분, 한 분에게 한잔의 음료를 통해 전달합니다.">
      </div>
      <div class="menu_drink_btn01"><a href="/auth/drink_list" title="스타벅스 음료 자세히 보기">자세히 보기</a></div>
    </div>
  </div>

  <!--============푸드 menu food section===========-->
  <div class="menu_food_section">
    <div class="menu_section_inner">
      <div class="menu_food_txt01">
        <img class="w_pic" src="/images/menu_main/menu_btxt2.png" alt="푸드 간편하지만 든든하게 채워지는 만족감을 느껴보세요. 신선함과 영양이 가득한 스타벅스 푸드가 완벽한 하루를 만들어 드립니다.">
      </div>
      <div class="menu_food_btn01"><a href="/auth/food_list" title="스타벅스 푸드 자세히 보기">자세히 보기</a></div>
    </div>
  </div>

  <!--============상품 menu product section===========-->
  <div class="menu_product_section">
    <div class="menu_section_inner">
      <div class="menu_product_txt01">
        <img class="w_pic" src="/images/menu_main/menu_btxt3.png" alt="상품 스타벅스 상품으로 즐거움을 선사해보세요. 독특하고 다양한 스타벅스만의 상품은 당신에게 특별한 선물이 될 것입니다.">
      </div>
      <div class="menu_product_btn01"><a href="/auth/product_list" title="스타벅스 상품 자세히 보기">자세히 보기</a>
      </div>
    </div>
  </div>

<!--============카드 menu card section===========-->
  <div class="menu_card_section">
    <div class="menu_section_inner">
      <div class="menu_card_txt01">
        <img class="w_pic" src="/images/menu_main/menu_btxt4.png" alt="카드 따뜻한 커피와 마음을 전하기 가장 좋은 방법! 주는 사람도 받는 사람도 모두 행복해지는 스타벅스만의 특별함을 느껴보세요.">
      </div>
      <div class="menu_card_btn01"><a href="/user/cardRegi" title="스타벅스 카드 자세히 보기">자세히 보기</a>
     </div>
    </div>
  </div>
</main><!-- End #main -->

<%@include file="../layout/footer.jsp"%>