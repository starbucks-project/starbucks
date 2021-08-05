<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="description" content="Bingo One page parallax responsive HTML Template ">
  
  <meta name="author" content="Themefisher.com">

  <title>Starbucks Coffee Korea</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../images/starbuckslogo.png" rel="icon">
  <link href="../images/starbuckslogo.png" rel="apple-touch-icon">
  <link rel="shortcut icon"	href="https://image.istarbucks.co.kr/common/img/common/favicon.ico?v=200828"	type="image/ico">
<%-- 
  <link href="jquery.bxslider/jquery.bxslider.css" rel="stylesheet" /> 
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 
  <script src="jquery.bxslider/jquery.bxslider.js"></script> --%>

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Bootstrap -->
  <link rel="stylesheet" href="/plugins/bootstrap/bootstrap.min.css">

  <!-- Vendor CSS Files -->
  <link href="../plugins/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../plugins/vendor/aos/aos.css" rel="stylesheet">
  <link href="../plugins/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../plugins/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../plugins/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../plugins/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../plugins/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

   <!-- CSS
  ================================================== -->
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Lightbox.min css -->
  <link rel="stylesheet" href="/plugins/lightbox2/dist/css/lightbox.min.css">
  <!-- animation css -->
  <link rel="stylesheet" href="/plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="/plugins/slick/slick.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="/css/style.css">  

  <!-- Template Main CSS File -->
  <link href="/css/style.css" rel="stylesheet">


  <!-- script -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="outer">
      <div class="logo_box">
      <a class="navbar-brand logo" href="/">
        <img class="logo" src="/images/starbuckslogo.png" />
      </a>
    </div> <!-- end logo_box-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <div class="upper">
        <div class="upper-nav">
        <c:choose>
          <c:when test="${empty sessionScope.principal}">
            <div class="upper-nav-item"><a class="active" href="/">Home</a></div>
            <div class="upper-nav-item"><a href="/auth/login">Login</a></div>
            <div class="upper-nav-item"><a href="/user/cart">cart</a></div>
            <div class="upper-nav-item"><a href="/user/mypage">mystarbucks</a></div>
            <div class="upper-nav-item"><a href="/auth/store_map">find a store</a></div>
            </c:when>
            <%-- <div class="upper-nav-item"><a href="/manager/logout">logout</a></div> --%>
          <c:otherwise>
            <div class="upper-nav-item"><a class="active" href="/">Home</a></div>
            <div class="upper-nav-item" onclick="kakaoLoagout()"><a href="">logout</a></div>
            <div class="upper-nav-item"><a href="#">cart</a></div>
            <div class="upper-nav-item"><a href="/user/mypage">mystarbucks</a></div>
            <div class="upper-nav-item"><a href="#">find a store</a></div>
          </c:otherwise>
        </c:choose>
             <div class="upper-nav-item"><a onclick="kakaoLogout()">logout</a></div>
             
        </div><!-- end upper-nav-->
      </div> <!-- end upper-->
      <div class="lower">
        <c:choose>
          <c:when test="${empty sessionScope.managerPrincipal}">
        <div class="dropdown"><a href="/menu"><span>Menu</span> <i class="bi bi-chevron-down"></i></a>
          <ul>
            <li><a href="/auth/drink_list">Drink</a></li>
            <li><a href="#">Food</a></li>
            <li><a href="#">Product</a></li>
            <li><a href="#">Card</a></li>
          </ul>
          
        </div> <!-- end dropdown-->
        <div class="dropdown"><a href="/store"><span>Store</span> <i class="bi bi-chevron-down"></i></a>
          <ul>
            <li><a href="/auth/store_map">매장 찾기</a></li>

            <li><a href="/auth/store_drive">드라이브 스루</a></li>
            <li><a href="/auth/store_reserve">리저브 매장</a></li>
          </ul>
        </div> <!--end dropdown --> 
        </c:when>
        <c:otherwise>
          <div class="dropdown"><a href="/manager/uploadForm"><span>상품 등록</span></a></div>
          <div class="dropdown"><a href="/manager/userlist"><span>회원관리</span></a></div>
          <div class="dropdown"><a href="/manager/saledProduct"><span>판매현황</span></a></div>
        </c:otherwise>
        </c:choose>
          
  </nav>

      
  </header><!-- End Header -->

  <%-- 
          <c:choose>
          <!-- 회원/관리자 모두 로그인 전 -->
          <c:when test="${(empty sessionScope.principal)&&(empty sessionScope.managerPrincipal)}"> 
            <div class="upper-nav-item"><a class="active" href="index.html">Home</a></div>
            <div class="upper-nav-item"><a href="#">Login</a></div>
            <div class="upper-nav-item"><a href="#">cart</a></div>
            <div class="upper-nav-item"><a href="#">mystarbucks</a></div>
            <div class="upper-nav-item"><a href="#">find a store</a></div>
          </c:when>
          <!-- 관리자 로그인 후 -->
          <c:when test="${!(empty sessionScope.managerPrincipal)}">
            <div class="upper-nav-item"><a href="#">cart</a></div>
            <div class="upper-nav-item"><a href="#">mystarbucks</a></div>
            <div class="upper-nav-item"><a href="#">find a store</a></div>
          </c:when>
          <!-- 회원 로그인 후 -->
          <c:otherwise>
             <div class="upper-nav-item" onclick="kakaoLoagout()"><a href="javascript:void(0)">logout</a></div>
             <div class="upper-nav-item"><a href="#">cart</a></div>
             <div class="upper-nav-item"><a href="#">mystarbucks</a></div>
             <div class="upper-nav-item"><a href="#">find a store</a></div>
          </c:otherwise>
        <c:choose>
        </div><!-- end upper-nav-->
      </div> <!-- end upper-->
      <div class="lower">
        <c:choose>
        <c:when test="${empty sessionScope.managerPrincipal}"> 
        
        <div class="dropdown"><a href="#"><span>Menu</span> <i class="bi bi-chevron-down"></i></a>
          <ul>
            <li><a href="#">Drink</a></li>

            <li><a href="#">Food</a></li>
            <li><a href="#">Product</a></li>
            <li><a href="#">Card</a></li>
          </ul>
        </div> <!-- end dropdown-->
        <div class="dropdown"><a href="#"><span>Store</span> <i class="bi bi-chevron-down"></i></a>
          <ul>
            <li><a href="#">매장 찾기</a></li>

            <li><a href="#">드라이브 스루</a></li>
            <li><a href="#">리저브 매장</a></li>
          </ul>
          </c:when>
          <c:otherwise>
            <div class="dropdown"><a href="#"><span>제품 등록</span> <i class="bi bi-chevron-down"></i></a>
            <div class="dropdown"><a href="#"><span>회원 관리</span> <i class="bi bi-chevron-down"></i></a>
            <div class="dropdown"><a href="#"><span>판매 현황</span> <i class="bi bi-chevron-down"></i></a>
          </c:otherwise>
          </c:choose>
        </div><!-- end dropdown-->
      </div> <!-- end lower--> --%>

