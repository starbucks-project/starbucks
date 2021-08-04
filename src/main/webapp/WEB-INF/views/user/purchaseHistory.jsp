<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
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
  <link rel="stylesheet" href="/css/style.css">

</head>

<body>
=======
<%@include file="../layout/header.jsp"%>
<main id="main">
>>>>>>> 361207802b2ce19aaa13984fff573bf45348457e
  <div class="body-inner">

    <div id="banner-area" class="banner-area">
      <div id="container">
        <div class="row">
          <div class="col-lg-12">
            <header class="ms_sub_tit_wrap">
              <div class="ms_sub_tit_bg">
                <div class="ms_sub_tit_inner">
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
              
              
            </fieldset>
          </form>
        </section>
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
<%@include file="../layout/footer.jsp"%>