<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<!-- main -->
  <main id="main">
    <!-- 서브 타이틀 -->
    <div class="sub_tit_wrap">
      <div class="sub_tit_inner">
        <h2><img src="/images/drink_list/menu_tit1.jpg" alt="음료"></h2>
      </div>
    </div>
    <!-- 서브 타이틀 end -->
    <div class="content">
      
      <!-- 음료 리스트(카테고리 별) -->
      <div class="product_result_wrap product_result_wrap01">
        <div class="product_view_tab_wrap">

          <dl class="product_view_tab product_view_tab01">
            <dt class="dt1">
              <a href="javascript:void(0);" role="button" class="selected a1">사진으로 보기</a>
            </dt>
            <dd style="display: block;">
              <div class="product_list">
                <dl>
                  <!-- 콜드 브루 커피 -->
                  <dt style="display: block;">
                    <a href="javascript:void(0);">콜드 브루 커피</a>
                    <i class="summaryIcon">
                      <img src="/images/drink_list/logo_decaf.png" alt=""></i>
                      <span class="summary">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
                  </dt>
                  <dd style="display: block;">
                    <ul class="product_cold_brew">
                        <c:forEach var="product" items="${productsEntity}">
                        <li class="menuDataSet" new="Y" sell="" recomm="0" sold="N">                 
                          <dl>                     
                            <dt>                         
                              <a href="/auth/drink_detail/${product.id}" class="goDrinkView" prod="9200000003643">
                                <img src="/images/${product.productImg}" alt="아이스크림 블렌딩 콜드 브루">
                              </a>                                                  
                              <ul>                                                          
                                <li>
                                  <img src="/images/drink_list/mark01_new.png" alt="NEW">
                                </li>
                              </ul>                                              
                            </dt>                     
                            <dd>${product.productName}</dd>                 
                          </dl>             
                        </li>
                      </c:forEach>
                    </ul>
                    </dd>
            </dl>
          </div>
              <!-- 160928 검색결과 없을 때 -->
              <div class="product_no_result" style="display: none;">
                <p>검색 결과가 없습니다.</p>
              </div>
              <!-- 160928 검색결과 없을 때 end -->
            </dd>
          </dl>
        </div>
      </div>
      <!-- 음료 리스트(카테고리 별) end -->
    </div>
  </main>
<!-- main  end-->

<%@include file="../layout/footer.jsp"%>