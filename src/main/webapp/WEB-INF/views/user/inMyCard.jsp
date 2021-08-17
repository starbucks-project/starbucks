<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>
<style>
.bx-wrapper {
  position: relative;
  margin-right: 20px;
  text-align: center;
  height: 560px;
  *zoom: 1;
  background-color: rgb(247, 247, 247);
}
.bx-wrapper img {
  /* float: left; */
  margin-top: 130px;
  display: inline-block;
  box-shadow: 1px;
}
  </style>
<main id="main">
  <div class="body-inner">

    <div id="banner-area" class="banner-area">
      <div id="container">
        <div class="row">
          <div class="col-lg-12">
            <header class="ms_sub_tit_wrap">
              <div class="ms_sub_tit_bg">
                <div class="ms_sub_tit_inner">
                  <h4>
                    <img alt="inMyCard" src="/images/inmycard_ttl.png" />
                  </h4>
                </div>
              </div>
            </header>
          </div><!-- Col end -->
        </div><!-- Row end -->
      </div><!-- Container end -->
    </div><!-- Banner area end -->

    <!-- ms cont part-->
    <div class="container">
      <div class="ms_cont">
        <section class="my_ms_index_slide">
          <div class="header">
            <h5 class="userName">${principal.name}님의 스타벅스 카드</h5>
            <strong>총 보유카드 : <span class="en totalCnt">${cardsize}</span>장</strong>
          </div> <!-- ms_cont .header end-->
          <div>
          <ul class="bxslider"> 
                      <c:forEach var="card" items="${cardsEntity}">
                          <li>
                            
                              <img src="/images/${card.cardImage}" />
                            
                            <div class="my_ms_slider_txt2">               
                              <div class="my_ms_slider_txt_l">                                
                                <strong class="cardNickname">${card.cardName}</strong>                
                                 <p>${card.cardNum}</p>               
                              </div>               
                              <div class="my_ms_slider_txt_r">                잔액 
                                <strong class="en">${card.balance}</strong>원                
                                <ul class="op0 my_ms_card_btns">                                   
                                  <li class="card_charge_btn">
                                   <a href="/user/cardCharge" data-cardregnumber="16779365">카드 충전</a>
                                  </li>                                                 
                                </ul>               
                              </div>              
                            </div>
                            <%-- <div class="my_ms_card_info2">
                              <p class="card_name">${card.cardName}</p>
                              <p class="my_ms_card_price"><span class="a11y">잔여금액</span>
                                <strong class="en t_0d5f34">${card.balance}</strong>원</p> 
                              <div class="my_ms_card_btns">
                                <p class="my_ms_card_btn2">
                                  <a href="/user/cardCharge">충전하기</a>
                                </p>                          
                             </div>
                            </div> --%>
                          </li>
                      </c:forEach>
                  </ul>
                </div>
        </section>
      </div>

      <div class="ms_nav" id="msRnb">
              <ul>
                <li>
                  <a href="#">
                    My 스타벅스 카드
                    <span class="sbox_arrow_down"></span>
                  </a>
                  <ul style="display: block;">
                    
                    <li>
                      <a href="/user/cardRegi" required="login" data-href="#">
                        · 카드 등록</a>
                    </li>
                    <li>
                      <a href="/user/cardCharge" required="login" data-href="#">
                        · 카드 충전</a>
                    </li>
                    <li>
                      <a href="/user/inMyCard" required="login" data-href="#">
                        · 보유카드</a>
                    </li>
                  </ul> 
                </li>

                <li>
                  <a href="#">
                    My 스타벅스 e-Gift Card
                    <span class="sbox_arrow_down"></span>
                  </a>
                  <ul style="display: block;">
                    <li>
						          <a href="/user/egift" required="login" data-href="#"> · 선물하기</a>
					          </li>         
                  </ul>
                </li>

                <li>
                  <a href="/user/mymenu" required="login" data-href="#">
                     My메뉴
                    </a>
                </li>
                <li>
                  <a href="/user/purchaseHistory" required="login" data-href="#">
                     구매내역
                    </a>
                </li>
                <li>
                  <a href="#">
                   개인정보 관리
                    <span class="sbox_arrow_down"></span>
                  </a>
                  <ul style="display: block;">
                    
                    <li>
                      <a href="/user/userinfo" required="login" data-href="#">
                        · 개인정보 확인 및 수정</a>
                    </li>
                   
                  </ul>
                </li>
              </ul>
            </div>
  
    </div>
  <!-- Template custom -->
  </div><!-- Body inner end -->
</main>	
<script>
    $(document).ready(function(){

      $('.bxslider').bxSlider({
        slideMargin: 10,
        slideWidth: 7000,
        touchEnabled : (navigator.maxTouchPoints > 0)
      });
    });
  </script>
<%@include file="../layout/footer.jsp"%>