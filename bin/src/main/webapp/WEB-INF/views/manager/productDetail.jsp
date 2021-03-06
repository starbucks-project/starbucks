<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>

<!-- container -->
  <div id="container">
    <!-- 서브 타이틀 -->
    <div class="sub_tit_wrap">
      <div class="sub_tit_inner">
      </div>
    </div>
    <!-- 서브 타이틀 end -->

    <div class="content02">
      <!-- 제품 상세보기 -->
      <div class="product_view_wrap1">
        <div class="product_view_pic">
          <div class="product_big_pic">
            <p>
              <a href="javascript:void(0)" tabindex="-1" aria-hidden="true" role="presentation"><!-- 접근성_20171123 tabindex, aria, role 추가 -->
              <img class="zoomImg" src="/images/${productEntity.category}_list/${productEntity.productImg}" 
              data-zoom-image="https://image.istarbucks.co.kr/upload/store/skuimg/2021/06/[9200000003643]_20210623101238875.jpg" alt="상세이미지">
            </a>
          </p>
            <p class="more_btn">
              <a href="javascript:void(0)" tabindex="-1" aria-hidden="true" role="presentation">
                <img src="/images/drink-detail/more.png" alt="상세이미지">
            </a><!-- 접근성_20171123 alt 추가 -->
          </p>
          </div>
          <div class="product_thum_wrap" id="product_thum_wrap">
            <ul class="product_thum">
              <li>
                <a href="javascript:void(0)" data-image="https://image.istarbucks.co.kr/upload/store/skuimg/2021/06/[9200000003643]_20210623101238875.jpg" data-zoom-image="https://image.istarbucks.co.kr/upload/store/skuimg/2021/06/[9200000003643]_20210623101238875.jpg" class="elevatezoom-gallery active">
                <img src="/images/${productEntity.category}_list/${productEntity.productImg}" alt="상세이미지 1번"></a>
              </li>
            </ul>
          </div>
        </div>
        <div class="product_view_detail">
          <div class="myAssignZone">
            <h4>${productEntity.productName}<br><span>${productEntity.productNameEng}</span></h4>
            <p class="t1">${productEntity.productInfo}
          </div>

         <%-- <form> --%>
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
               <hr />
               <div class="product_price_box">
                 <h6>가격 : ${productEntity.price}</h6>
               </div>
                <div class="edit-btn-box">
                  <div class="edit-btn">
                    <a href="/manager/product/${productEntity.id}">수정</a>
                  </div>
                  <div class="edit-btn">
                    <a href="#">삭제</a>
                  </div>
                </div>
              </div>
            </fieldset>
          <%-- </form> --%>
        </div>
      </div>
      <div class="product_view_wrap2">
        콜드 브루와 바닐라빈이 콕콕 박힌 아이스크림이 블렌딩 되어 진하고 부드러운 콜드 브루 풍미를 느낄 수 있는 콜드 브루<br> 
        * 아이스크림 블렌딩 콜드 브루는 BOGO쿠폰, 무료음료 쿠폰 등 일부 쿠폰 사용이 제한됩니다
      </div>
      <!-- 제품 상세보기 end -->
    </div>
    

  </div>
<!-- container  end-->

<%@include file="../layout/footer.jsp"%>