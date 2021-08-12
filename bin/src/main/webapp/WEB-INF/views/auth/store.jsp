<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<main id="main">
  <!--============menu_container=================-->
  <div class="store_container">
    <!--=========서브타이틀==========-->
    <div class="sub_tit_wrap">
        <div class="sub_tit_inner">
          <h2><img src="/images/store/store_tit.jpg" alt="STORE"/></h2>
        </div>
    </div>

  <!--=========store slide Area==========-->
  <div class="storeSlideArea">
      <div class="temporary_store_bnr">
        <section class="bnr_temp_store">
          <div class="bnr_temp_store_inner">
            <div class="bnr_temp_store_txt_wrap">
              <p class="bnr_temp_store_txt">STARBUCKS 1000호점 <strong>청담스타점</strong> 스타벅스 1,000호점인 청담스타점에서 홈메이드 스타일의 전용 푸드와 스타벅스 리저브TM 커피를 만나보세요</p>
            </div>
          </div>
        </section>
      </div>
  </div>
  <!--========End store slide Area=======-->

<!--============1. 매장찾기 store_bn1_section===========-->
<section class="store_bn1_section">
  <article class="store_bn_inner">
    <div class="store_bn1_txt">
      <img class="w_pic" src="/images/store/store_bn1_txt01.png" alt="나의 일상이 되는 또 다른 공간 커피 한 잔의 여유를 만나는 스타벅스 매장 이제 전국 어디에서나 만날 수 있는 스타벅스 매장을 지역별, 타입별, 서비스별 등의 설정을 통해 더욱 쉽고 빠르게 찾아보세요.">
    </div>
    <div class="store_bn1_btn"><a href="/auth/store_map">매장 찾기</a></div>
  </article>
</section>

  <!--============2. 드라이브스루매장 store_bn2_section===========-->
  <section class="store_bn2_section">
    <article class="store_bn_inner">
      <div class="store_bn2_txt">
        <img class="w_pic" src="/images/store/store_bn2_txt01.png" alt="차에서 경험하는 새로운 스타벅스 드라이브 스루 Drive Thru 매장 전 세계 최초의 Digital을 경험할 수 있는 차별화된 드라이브 스루 매장에서 색다른 서비스를 만나보세요.">
      </div>
      <div class="store_bn2_btn"><a href="/auth/store_drive">자세히 보기</a></div>
    </article>
  </section>

  <!--============3. 리저브매장 menu product section===========-->
  <section class="store_bn3_section">
    <article class="store_bn_inner">
      <div class="store_bn3_txt">
        <img class="w_pic" src="/images/store/store_bn3_txt01.png" alt="최고 그 이상의 가치 스타벅스 리저브 커피 스타벅스 리저브 매장을 방문하여 단일 원산지 원두의 프리미엄 커피와 함께 격조 높은 커피를 경험해보세요.">
      </div>
      <div class="store_bn3_btn"><a href="/auth/store_reserve">자세히 보기</a></div>
    </article>
  </section>
</main>
<%@include file="../layout/footer.jsp"%>