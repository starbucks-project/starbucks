<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>
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
                    <img alt="MyStarbucks" src="/images/ms_ttl.png" />
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
        <div class="ms_user_index">
        
            <section class="ms_user_info ms_user_add">
              <article class="ms_user_info_left">
                <h5>구매한 상품 갯수</h5>
                <figure class="ms_user_starbg">
                  <span class="totalStar">6</span>
                </figure>
              </article>
              <article class="ms_user_info_right">
                <p class="ms_user_stat">
                  <span>
                    <strong class="userName">${principal.name}</strong>
                    님
                  </span>
                </p>
                <div class="ms_user_stat_btns">
                  <ul>
                    <li class="btn_black">
                        <a href="/user/userinfo">개인정보 수정</a>
                    </li>
                   
                  </ul>
                </div>
              </article>
            </section>
            <section class="my_ms_card">
              <div class="my_ms_card_inner">
                <header>
                  <div class="card_header_box_one">
                    <h5>My 스타벅스 카드</h5>
                    
                  </div>
                  <div class="card_header_box_two">
                    <i class="card_list_btn1">
                      <a href="/user/inMyCard">
                        <img alt="보유 카드 상세 정보" src="/images/card_list_btn1.png" />
                      </a>
                    </i>
                    <aside>
                      <span>
                        <strong class="curSlideNo">1</strong>
                        /
                        <span class="totalCnt">1</span>
                        <p>
                          <a class="back" href="javascript:void(0);">이전카드 보기</a>
                          <a class="forward" href="javascript:void(0);">다음카드 보기</a>
                        </p>
                      </span>
                    </aside>
                  
                  </div>
                </header>
                <div class="my_ms_card_cont">
                  <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;">
                    <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 191px;">
                      <ul class="slider" style="width: 315%; position: relative; transition-duration: 0s; transform: translate3d(-770px, 0px, 0px);">
                        <li style="float: left; list-style: none; position: relative; width: 770px;" class="bx-clone">
                          <figure>
                            <i class="representative_icon" aria-hidden="true"></i>
                            <img alt="coffee on me" src="https://image.istarbucks.co.kr/cardImg/20201124/007712.png" onerror="this.src='https://image.istarbucks.co.kr/cardImg/20201124/007712.png';" />
                          </figure>
                          <div class="my_ms_card_info">
                            <p class="my_ms_card_id">
                              <span>Coffee on Me</span>
                              <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="R" data-cardnickname="coffee on me" title=" 카드명 수정">정보수정</a>
                            </p>
                            <p class="my_ms_card_price"><strong>2,800</strong>원</p>
                            <p class="my_ms_card_date">최종 사용일 : <span class="en">2021-07-08 13:31:00</span></p>
                            <div class="my_ms_card_btns">                                                          
                              <p class="my_ms_card_btn2">
                                <a href="/user/cardCharge" data-type="CHARGE" data-cardregnumber="34655033">충전하기</a>
                              </p>                                                                      
                            </div>
                          </div>
                        </li>
                        <li style="float: left; list-style: none; position: relative; width: 770px;" class="bx-clone">
                          <figure>
                            <i class="representative_icon" aria-hidden="true"></i>
                            <img alt="부산 시티 카드" src="https://image.istarbucks.co.kr/cardImg/20190805/005949.png" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';" />
                          </figure>
                          <div class="my_ms_card_info">
                            <p class="my_ms_card_id">
                              <span>부산시티카드</span>
                              <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="R" data-cardnickname="부산 시티 카드" title=" 카드명 수정">정보수정</a>

                            </p>
                            <p class="my_ms_card_price"><span class="a11y">잔여금액</span><!-- 접근성_20171201 span 추가 --><strong class="en t_0d5f34">2,800</strong>원</p>
                            <p class="my_ms_card_date">최종 사용일 : <span class="en">2021-07-08 13:31:00</span></p>
                            <div class="my_ms_card_btns">
                                                                                        
                              <p class="my_ms_card_btn2">
                                <a href="/user/cardCharge" data-type="CHARGE" data-cardregnumber="34655033">충전하기</a>
                              </p>                                                                      
                            </div>
                          </div>
                        </li>
                        <li style="float: left; list-style: none; position: relative; width: 770px;" class="bx-clone">
                          <figure>
                            <i class="representative_icon" aria-hidden="true"></i>
                            <img alt="LoveYa" src="https://image.istarbucks.co.kr/cardImg/20190822/006129.png" onerror="this.src='https://image.istarbucks.co.kr/cardImg/20190822/006129.png';" />
                          </figure>
                          <div class="my_ms_card_info">
                            <p class="my_ms_card_id">
                              <span>Love Ya</span>
                              <a href="javascript:void(0);" class="icon_pencil" data-cardstatus="R" data-cardnickname="LoveYa" title=" 카드명 수정">정보수정</a>

                            </p>
                            <p class="my_ms_card_price"><span class="a11y">잔여금액</span>
                              <strong class="en t_0d5f34">2,800</strong>원</p>
                            <p class="my_ms_card_date">최종 사용일 : <span class="en">2021-07-08 13:31:00</span></p>
                            <div class="my_ms_card_btns">
                              <                                                         
                              <p class="my_ms_card_btn2">
                                <a href="/user/cardCharge" data-type="CHARGE" data-cardregnumber="34655033">충전하기</a>
                              </p>                                                                      
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <!-- <div class="bx-controls bx-has-controls-direction">
<<<<<<< HEAD
                              <div class="bx-controls-direction">
                                <a class="bx-prev disabled" href="">Prev</a>
                                <a class="bx-next disabled" href="">Next</a>
                               </div>
=======
                      <div class="bx-controls-direction">
                        <a class="bx-prev disabled" href="">Prev</a>
                        <a class="bx-next disabled" href="">Next</a>
                      </div>
>>>>>>> f7cd1711f4b0e1e82c7fafbb9f5ae0e09089de27
                    </div> -->
                  </div>
                </div>
              </div>
            </section>
            </div><!-- 1st post end -->
          </div><!-- Content Col end -->


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
         

      </div><!-- Container end -->
    </div><!-- ms cont wrap end -->
  </div><!-- Body inner end -->
</main>	
<script type="text/javascript" src = "/js/my/myinfo.js"></script>

<%@include file="../layout/footer.jsp"%>