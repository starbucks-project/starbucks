<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@include file="../layout/header.jsp"%>

<!-- container -->
<div id="container">
  <!-- 서브 타이틀 -->
  <div class="sub_tit_wrap">
    <div class="sub_tit_inner"></div>
  </div>
  <!-- 서브 타이틀 end -->

  <div class="content02">
    <!-- 제품 상세보기 -->
    <div class="product_view_wrap1">
      <div class="product_view_pic">
        <div class="product_big_pic">
          <p>
            <a
              href="javascript:void(0)"
              tabindex="-1"
              aria-hidden="true"
              role="presentation"
              ><!-- 접근성_20171123 tabindex, aria, role 추가 -->
              <img
                class="zoomImg"
                src="/images/${productEntity.productImg}.jpg"
                data-zoom-image="https://image.istarbucks.co.kr/upload/store/skuimg/2021/06/[9200000003643]_20210623101238875.jpg"
                alt="상세이미지"
              />
            </a>
          </p>
          <p class="more_btn">
            <a
              href="javascript:void(0)"
              tabindex="-1"
              aria-hidden="true"
              role="presentation"
            >
              <img src="/images/drink-detail/more.png" alt="상세이미지" />
            </a>
          </p>
        </div>
        <div class="product_thum_wrap" id="product_thum_wrap">
          <ul class="product_thum">
            <li>
              <a href="javascript:void(0)"
                data-image="https://image.istarbucks.co.kr/upload/store/skuimg/2021/06/[9200000003643]_20210623101238875.jpg"
                data-zoom-image="https://image.istarbucks.co.kr/upload/store/skuimg/2021/06/[9200000003643]_20210623101238875.jpg"
                class="elevatezoom-gallery active"
                ><img src="/images/${productEntity.productImg}.jpg" alt="상세이미지 1번"/></a>
            </li>
          </ul>
        </div>
      </div>
      <div class="product_view_detail">
        <div class="myAssignZone">
          <h4>
            ${productEntity.productName}<br /><span
              >${productEntity.productNameEng}</span
            >
          </h4>
          <p class="t1">
            ${productEntity.productInfo} <br />
            * 아이스크림 블렌딩 콜드 브루는 BOGO쿠폰, 무료음료 쿠폰 등 일부 쿠폰
            사용이 제한됩니다
          </p>
          <div id="myDrink" class="myDrink">
            <a href="javascript:void(0)">나만의 음료로 등록</a>
          </div>
        </div>

        <form method="post">
          <fieldset>
            <legend class="hid">제품 영양 정보</legend>
            <div class="product_view_info">
              <div class="product_info_head">
                <p class="tit">제품 영양 정보</p>
              </div>
              <div class="product_info_content">
                <ul>
                  <li class="kcal">
                    <dl>
                      <dt>1회 제공량 (kcal)</dt>
                      <dd>${productEntity.kcal}</dd>
                    </dl>
                  </li>
                  <li class="sat_FAT">
                    <dl>
                      <dt>포화지방 (g)</dt>
                      <dd>${productEntity.saturatedFat}</dd>
                    </dl>
                  </li>
                  <li class="protein">
                    <dl>
                      <dt>단백질 (g)</dt>
                      <dd>${productEntity.protein}</dd>
                    </dl>
                  </li>
                </ul>
                <ul>
                  <li class="sodium">
                    <dl>
                      <dt>나트륨 (mg)</dt>
                      <dd>${productEntity.natrium}</dd>
                    </dl>
                  </li>
                  <li class="sugars">
                    <dl>
                      <dt>당류 (g)</dt>
                      <dd>${productEntity.sugar}</dd>
                    </dl>
                  </li>
                  <li class="caffeine last">
                    <dl>
                      <dt>카페인 (mg)</dt>
                      <dd>${productEntity.caffeine}</dd>
                    </dl>
                  </li>
                </ul>
              </div>
              <div class="cart_wrap">
                <a href="javascript:void(0)" onclick="cartSave(${productEntity.id})" class="cartSave" role="button">장바구니 담기</a>
              </div>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
    <div class="product_view_wrap2">
      콜드 브루와 바닐라빈이 콕콕 박힌 아이스크림이 블렌딩 되어 진하고 부드러운
      콜드 브루 풍미를 느낄 수 있는 콜드 브루<br />
      * 아이스크림 블렌딩 콜드 브루는 BOGO쿠폰, 무료음료 쿠폰 등 일부 쿠폰
      사용이 제한됩니다
    </div>
    <!-- 제품 상세보기 end -->
  </div>
  <!-- 제품 상세보기 하단 공통 -->
  <div class="productView_footmenu">
    <div class="productView_footmenu_inner">
      <div class="productView_top">
        <div class="productView_top_left">
          <p class="tit">프로모션 새소식</p>
          <ul class="promotionList">
            <li>해당 상품과 관련된 진행 중인 프로모션이 없습니다.</li>
          </ul>
          <p class="more">
            <a href="#">
              <img src="/images/drink-detail/news_more.png" alt="프로모션 새소식 더보기"/></a>
          </p>
        </div>
        <div class="productView_top_right">
          <dl>
            <dt>
              <p class="sirenOrder">
                <a href="/util/app_tip.do"
                  ><img
                    src="//image.istarbucks.co.kr/common/img/menu/sirenOrder_img_171109.png"
                    alt="사이렌오더란?" /></a
                ><!-- 접근성_20171123 alt 추가 -->
              </p>
            </dt>
            <dd>
              <p class="tit">사이렌오더란?</p>
              <p class="txt">
                매장에서 줄을 서지 않고 주문하는 쉽고 간편한 O2O (Online to
                Offline) 서비스로서 앱을 통해 스타벅스 음료, 푸드 및 원두의 결제
                및 주문을 완료하면 매장에서 즉시 메뉴를 받을 수 있는
                스타벅스만의 신개념 서비스 입니다.
              </p>
            </dd>
          </dl>
        </div>
      </div>
    </div>
  </div>
  <!-- 제품 상세보기 하단 공통 end-->
</div>
<!-- container  end-->

<div class="only_my_dimm" style="display: none" aria-hidden="true" tabindex="0"></div>
<div class="only_my_drink" style="display: none" role="dialog" aria-hidden="true" tabindex="0">
  <div class="only_my_head">
    <p class="tit">나만의 음료</p>
    <p class="close">
      <a href="javascript:void(0)" class="btn_close" role="button">
        <img src="/images/mymenu-register/btn_closesa.png" alt="팝업 닫기"
      /></a>
    </p>
  </div>

  <!-- Step 1 -->
  <div class="only_my_cont my_drink_step2">
    <dl class="my_sel_drink">
      <dt>
        <img
          alt=""
          class="skuImgUrl"
          src="/images/${productEntity.productImg}.jpg"
        />
      </dt>
      <dd>
        <p class="t1">
          ${productEntity.productName}<br />
          <span>${productEntity.productNameEng}</span>
        </p>
      </dd>
    </dl>
    <ul class="btn_list">
      <li class="li1">
        <a href="javascript:void(0)" class="btn_go_my_drink_step3" role="button"
          >나만의 음료에 등록</a
        >
      </li>
      <li class="li2">
        <a href="javascript:void(0)" class="btn_close" role="button">취소</a>
      </li>
    </ul>
  </div>
</div>

<!-- Step 2 -->
<div
  class="only_my_drink2"
  style="display: none"
  role="dialog"
  aria-hidden="false"
  tabindex="0"
>
  <div class="only_my_head">
    <p class="tit">나만의 음료 이름을 지어보세요</p>
    <p class="close">
      <a href="javascript:void(0)" class="btn_close" role="button">
        <img src="/images/mymenu-register/btn_closesa.png" alt="팝업 닫기"
      /></a>
    </p>
  </div>
  <div class="only_my_cont">
    <p class="drink2_cont_input">
      <label for="nickname" class="a11y">음료이름</label>
      <input type="text" id="nickname" placeholder="${productEntity.productName}" />
    </p>
    <ul class="btn_list">
      <li class="li1">
      <form onsubmit="myMenuRegister(${productEntity.id})">
        <%-- <a href="javascript:void(0)" class="btn_myMenuRegister" title="나만의 음료로 등록" role="button">확인</a> --%>
        <button class="btn_myMenuRegister">확인</button>
      </form>
      </li>
      <li class="li2">
        <a href="javascript:void(0)" class="btn_close" role="button">취소</a>
      </li>
    </ul>
  </div>
</div>
<!-- Step 2 end-->

<%@include file="../layout/footer.jsp"%>
