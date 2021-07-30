<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>구매내역</title>

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
               z    <div class="ms_sub_tit_inner">
                  <h4>
                    구매내역
                  </h4>
                </div>
              </div>
            </header>
          </div><!-- Col end -->
        </div><!-- Row end -->
      </div><!-- Container end -->
    </div><!-- Banner area end -->
   
    <div class="container">
      <!-- ms cont part-->
      <div class="ms_cont">
        <section class="my_card_pick_period">
          <form method="post">
            <fieldset>
              <legend>기간 선택 폼</legend>
              <dl class="my_card_pick_bg">
                <dt>기간별</dt>
                <dd>
                  <input id="pickPeriod2" name="pickPeriod" type="radio" checked="checked" value="1_MONTH">
                  <label for="pickPeriod2">1개월</label>
                  <input id="pickPeriod4" name="pickPeriod" type="radio" value="1_YEAR">
                  <label for="pickPeriod4">1년</label>
                </dd>
              </dl>
              <dl class="my_card_pick_date">
                <dt>일자별</dt>
                <dd>
                  <div class="pick_date_each">
                    <div class="pick_date_each_left"><input id="pickDate01" name="pickDate" title="원하는 날짜를 선택해 주세요." type="text" class="hasDatepicker" readonly="readonly"></div>
                    <div class="pick_date_each_right"><label class="calendar" for="pickDate01">날짜 선택</label></div>
                  </div>
                  <p class="hyphen_bg"></p>
                  <div class="pick_date_each">
                    <div class="pick_date_each_left"><input id="pickDate02" name="pickDate" title="원하는 날짜를 선택해 주세요." type="text" class="hasDatepicker" readonly="readonly"></div>
                    <div class="pick_date_each_right">
                      <label for="pickDate02">날짜 선택</label></div>
                  </div>
                  <p class="btn_pick_date"><a href="javascript:void(0);">검색</a></p>
                </dd>
              </dl>
            </fieldset>
          </form>
        </section>
        <p class="my_card_date_refer">최대 조회 기간은 5년입니다.</p>
        <section class="eGift_list_wrap">
          <ul class="eGift_list_inner">
            <p class="no_egiftcard_list">구매 내역이 없습니다.</p>
          </ul>
        </section>
      </div>
      <!-- ms cont part end-->
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