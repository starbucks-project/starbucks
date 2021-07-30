<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>카드등록</title>

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
                    <img alt="inMyCard" src="images/reg_card_ttl.png" />
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
        <form method="POST">
          <fieldset>
           <section class="my_card_info_wrap">
            <header>
              <h6>스타벅스 카드 정보 입력</h6>
              <a class="btnScardInfo">카드 등록 안내 팝업</a><!-- 20191112 추가 -->
              <span><img alt="" src="images/bullet_star_red.gif">표시 항목은 필수 입력 사항입니다.</span>
            </header>
            <section class="card_regi_tbl">
              <dl class="card_regi_dl">
                <dt><label for="CR1">카드명</label></dt>
                <dd>
                  <input class="card_regi_input1" id="CR1" maxlength="20" placeholder="카드명 최대 20자 (선택)" type="text">
                  <!-- 150707 DOM 수정 - 텍스트 추가 -->
                  &nbsp;&nbsp;&nbsp;<span style="font-size:11px; color:#666;">* 카드명은 미입력 시 자동으로 부여됩니다.</span>
                  <!-- 150707 DOM 수정 - 텍스트 추가 end -->
                </dd>
              </dl>
              <dl class="card_regi_dl">
                <dt><label for="CR2">카드번호 (16자리)</label><img alt="" src="images/bullet_star_red.gif"></dt>
                <dd>
                  <input class="card_regi_input2" id="CR2" title="카드 첫째 자리" type="tel" maxlength="4" ref="num">
                  <span class="hyphen_bg17"></span>
                  <input class="card_regi_input2" id="CR2_2" title="카드 둘째째 자리" type="tel" maxlength="4" ref="num">
                  <span class="hyphen_bg17"></span>
                  <input class="card_regi_input2" id="CR2_3" title="카드 셋째 자리" type="tel" maxlength="4" ref="num">
                  <span class="hyphen_bg17"></span>
                  <input class="card_regi_input2" id="CR2_4" title="카드 넷째 자리" type="tel" maxlength="4" ref="num">
                </dd>
              </dl>
              <dl class="card_regi_dl">
                <dt><label for="CR3"><p>PIN 번호</p></label><img alt="" src="images/bullet_star_red.gif"></dt>
                <dd><input type="tel" id="CR3" class="card_regi_input1" placeholder="PIN 번호 8자리 입력 (필수)" maxlength="8" ref="num">
                <div class="ez-checkbox cahrge_page_ck">
                  <div class="ez-checkbox">
                    <div class="ez-checkbox ez-checked">
                      <div class="ez-checkbox"><input type="checkbox" name="sui_index" id="notice_ck02" t="COMMON" title="선택" value="26" class="ez-hide"></div>
                    </div>
                  </div> 
                  <span class="charge_change">등록 후 대표카드 설정</span>
                  </div>
                </dd>
              </dl>
   
              
            </section>
           </section>
          </fieldset>
        </form>
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