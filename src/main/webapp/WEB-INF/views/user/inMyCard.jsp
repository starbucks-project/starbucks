<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>보유카드</title>

  <!-- Mobile Specific Metas
================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

  <!-- Favicon
================================================== -->
  <link rel="shortcut icon" href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828"
    type="image/ico">

  <!-- CSS
================================================== -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- Template styles-->
  <link rel="stylesheet" href="css/style.css">

</head>

<body>
  <div class="body-inner">

    <div id="banner-area" class="banner-area">
      <div id="container">
        <div class="row">
          <div class="col-lg-12">
            <header class="ms_sub_tit_wrap">
              <div class="ms_sub_tit_bg">
                <div class="ms_sub_tit_inner">
                  <h4>
                    <img alt="inMyCard" src="images/inmycard_ttl.png" />
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
          <header>
            <h5 class="userName">길동님의 스타벅스 카드</h5>
            <strong>총 보유카드 : <span class="en totalCnt">1</span>장</strong>
          </header> <!-- ms_cont .header end-->
          <article class="my_ms_slide_wrap">
            <i class="card_list_btn2">
              <a href="#">
                <img src="images/card_list_btn2.png" alt="">
              </a>
            </i>
            <div class="my_ms_slider">
              <div class="swiper-container">
                <a class="my_ms_slider_arrow arrow-left" href="#">
                  <img alt="" class="arrow_off" src="images/mscard_arrow_l_off.png">
                  <img alt="" class="arrow_on" src="images/mscard_arrow_l_on.png">
                </a>
                <a class="my_ms_slider_arrow arrow-right" href="#">
                  <img alt="" class="arrow_off" src="images/mscard_arrow_r_off.png">
                  <img alt="" class="arrow_on" src="images/mscard_arrow_r_on.png">
                </a>
                <div class="swiper-wrapper" style="padding-left: 0px; padding-right: 0px; width: 828px; height: 584px;">
                  <div class="swiper-slide swiper-slide-visible swiper-slide-active" style="width: 828px;">
                    <div class="swiper_slide_inner">
                      <figure class="swiper-slide_img">
                        <i class="representative_icon">
                          <a href="#" class="goMycard" data-cardregnumber="34655033">
                          </a>
                        </i>
                        <img alt="부산 시티 카드" src="https://image.istarbucks.co.kr/cardImg/20190805/005949.png"
                          onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';">
                      </figure>
                      <!--카드-->
                      <div class="my_ms_slider_txt">
                        <div class="my_ms_slider_txt_l">
                          <strong class="cardNickname">부산 시티 카드</strong>
                            <a class="icon_pencil_g pencil" href="#" data-cardstatus="R" data-cardnickname="부산 시티 카드">
                              정보수정버튼
                            </a>
                            <div class="my_ms_card_slider_id_modify" style="display:none;">
                              <input class="my_nick_modify_input" type="text" maxlength="20" value="부산 시티 카드">
                              <a class="my_nick_modify" href="#" data-cardregnumber="34655033">
                                수정
                              </a>
                              <a class="my_nick_cancel" href="#">
                                취소
                              </a>
                            </div>
                            <p>●●●● - ●●●● - ●●20 - 1234</p>
                        </div>
                        <div class="my_ms_slider_txt_r">
                          잔액
                          <strong class="en">2,800</strong>원
                          <ul class="op0 my_ms_card_btns">
                            <li class="card_charge_btn">
                              <a href="#" data-type="CHARGE" data-cardregnumber="34655033">
                                카드 충전
                              </a>
                            </li>
                            <li class="card_manage_btn">
                              <a href="#" data-type="MANAGEMENT" data-cardregnumber="34655033">
                                카드 관리
                              </a>
                            </li>
                          </ul>
                        </div>

                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-actions" style="display:block; background:#626260;"></div>
              </div>
            </div>
          </article>
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
                <a href="#" required="login" data-href="#">
                  · 카드 등록</a>
              </li>
              <li>
                <a href="#" required="login" data-href="#">
                  · 카드 충전</a>
              </li>
              <li>
                <a href="#" required="login" data-href="#">
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
                <a href="#" required="login" data-href="#">
                  · 선물하기</a>
              </li>
              <li>
                <a href="#" required="login" data-href="#">
                  · 선물내역</a>
              </li>
  
            </ul>
          </li>
  
          <li>
            <a href="#" required="login" data-href="#">
              My메뉴
            </a>
          </li>
          <li>
            <a href="#">
              개인정보 관리
              <span class="sbox_arrow_down"></span>
            </a>
            <ul style="display: block;">
  
              <li>
                <a href="#" required="login" data-href="#">
                  · 개인정보 확인 및 수정</a>
              </li>
  
            </ul>
          </li>
        </ul>
      </div>
  
    </div>


  <!-- Template custom -->


  </div><!-- Body inner end -->
  <script src="js/script.js"></script>
</body>

</html>