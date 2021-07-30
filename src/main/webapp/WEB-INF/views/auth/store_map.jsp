<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Mentor Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/css/style.css" rel="stylesheet">
</head>

<body>
  <!-- ======= Header ======= -->

  <!-- End Header -->

<!--============container=============-->
  <div class="store_container">

    <!--=========길찾기==========-->
    <div class="store_height_wrap">
      <form method="post">
        <fieldset>
          <legend></legend>
          <div class="store_map_layer">

                    <section class="find_store_wrap" style="height:118px;">
                      <header class="find_store_header">
                        <h2 class="btn_find_store">
                            <a href="javascript:void(0);" style="background: url(&quot;/img/store/btn_find_store_on.png&quot;) center center no-repeat rgb(0, 102, 51);">매장찾기</a>
                        </h2>
                      </header>
                      <article class="find_store_cont">
                        <header class="find_store_cont_header">
                          <p class="btn_opt_chk"><a href="javascript:void(0);">옵션 선택</a></p>
                          <span class="map_layer_toggle"><a href="javascript:void(0);">열기</a></span>
                        </header>
                        
                        <article class="store_map_layer_cont" style="display: block;">
                          <header class="quick_search">
                            <h3 class="on"><a href="javascript:void(0);">퀵 검색</a></h3>
                          </header>
                          <article>
                            <div class="quick_search_input">
                              <div class="quick_search_inner">
                                <input placeholder="매장명 또는 주소" title="퀵 검색" type="text" name="quickSearchText" id="quickSearchText">
                                <a href="javascript:void(0);" class="quickSearchBtn">검색</a>
                              </div>
                            </div>
                            <div class="result_num_wrap myStoreInfo">
                              <!-- 검색결과 없는 경우 -->
                              <!--strong>검색 결과</strong>(<span class="en t_006633">0</span>개)-->
                              <!-- 검색결과 있는 경우 -->
                              <strong class="quickSearchResultCtn"></strong> (검색 결과 <span class="en t_006633 resultCtnNumberTab1">10</span>개)<br>
                            </div>
                            <div class="result_list_wrap">
                              <!-- 검색결과 없는 경우 -->
                              <!--p class="no_result">검색 결과가 없습니다.</p-->
                              <!-- 검색결과 있는 경우 -->
                              <div class="result_list scrollbar-inner quickScrollWrap mCustomScrollbar _mCS_1"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
                                <ul class="quickSearchResultBox"><li class="quickResultLstCon" style="background:#fff" data-lat="35.1700743" data-long="129.06926269999997" data-index="0" data-name="양정역" data-code="3175" data-storecd="990" data-hlytag="null">	<strong data-store="990" data-yn="N" data-name="양정역" data-my_siren_order_store_yn="N">양정역  </strong>	<p class="result_details">부산광역시 부산진구 중앙대로 894 (양정동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.163918" data-long="129.052684" data-index="1" data-name="서면트레이더스" data-code="9627" data-storecd="432" data-hlytag="null">	<strong data-store="432" data-yn="N" data-name="서면트레이더스" data-my_siren_order_store_yn="N">서면트레이더스  </strong>	<p class="result_details">부산광역시 부산진구 시민공원로 31 (부암동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.16183" data-long="129.061933" data-index="2" data-name="부전역" data-code="9646" data-storecd="452" data-hlytag="null">	<strong data-store="452" data-yn="N" data-name="부전역" data-my_siren_order_store_yn="N">부전역  </strong>	<p class="result_details">부산광역시 부산진구 중앙대로 777, 서면호텔 복합시설1,2층 (부전동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.159056" data-long="129.057527" data-index="3" data-name="서면문화로" data-code="3921" data-storecd="1659" data-hlytag="null">	<strong data-store="1659" data-yn="N" data-name="서면문화로" data-my_siren_order_store_yn="N">서면문화로  </strong>	<p class="result_details">부산광역시 부산진구 서면문화로 10 (부전동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.1579735" data-long="129.05999229999998" data-index="4" data-name="서면역" data-code="9507" data-storecd="290" data-hlytag="null">	<strong data-store="290" data-yn="N" data-name="서면역" data-my_siren_order_store_yn="N">서면역  </strong>	<p class="result_details">부산광역시 부산진구 서전로 1 (부전동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.157995" data-long="129.061744" data-index="5" data-name="서면서전로" data-code="9923" data-storecd="736" data-hlytag="null">	<strong data-store="736" data-yn="N" data-name="서면서전로" data-my_siren_order_store_yn="N">서면서전로  </strong>	<p class="result_details">부산광역시 부산진구 서전로 19 (부전동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.157961" data-long="129.05740949999995" data-index="6" data-name="서면메디컬거리" data-code="9768" data-storecd="580" data-hlytag="null">	<strong data-store="580" data-yn="N" data-name="서면메디컬거리" data-my_siren_order_store_yn="N">서면메디컬거리  </strong>	<p class="result_details">부산광역시 부산진구 가야대로 783-1, 1층 (부전동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.157036" data-long="129.063029" data-index="7" data-name="서면NC" data-code="3334" data-storecd="1105" data-hlytag="null">	<strong data-store="1105" data-yn="N" data-name="서면NC" data-my_siren_order_store_yn="N">서면NC  </strong>	<p class="result_details">부산광역시 부산진구 동천로 92 (전포동) NC백화점 1층<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.156863" data-long="129.058076" data-index="8" data-name="서면중앙" data-code="9567" data-storecd="361" data-hlytag="null">	<strong data-store="361" data-yn="N" data-name="서면중앙" data-my_siren_order_store_yn="N">서면중앙  </strong>	<p class="result_details">부산광역시 부산진구 서면로68번길 1 (부전동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li><li class="quickResultLstCon" style="background:#fff" data-lat="35.155521" data-long="129.058883" data-index="9" data-name="부산서면중앙로" data-code="9877" data-storecd="690" data-hlytag="null">	<strong data-store="690" data-yn="N" data-name="부산서면중앙로" data-my_siren_order_store_yn="N">부산서면중앙로  </strong>	<p class="result_details">부산광역시 부산진구 중앙대로 701 (부전동)<br>1522-3232</p>	<i class="pin_general">리저브 매장 2번</i></li></ul>
                              </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px; display: block; height: 86px; max-height: 284px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                            </div>
                          </article>
                          <header class="loca_search">
                            <h3><a href="javascript:void(0);">지역 검색</a></h3>
                          </header>
                          <article style="display: none;">
                            <div class="loca_step1">
                              <div class="loca_step1_ttl">STEP 1 : 시/도를 선택해 주세요.</div>
                              <div class="loca_step1_cont">
                                <ul class="sido_arae_box"><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="01">서울</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="08">경기</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="02">광주</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="03">대구</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="04">대전</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="05">부산</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="06">울산</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="07">인천</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="09">강원</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="10">경남</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="11">경북</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="12">전남</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="13">전북</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="14">충남</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="15">충북</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="16">제주</a></li><li><a href="javascript:void(0);" class="set_sido_cd_btn" data-sidocd="17">세종</a></li></ul>
                              </div>
                            </div>
                            <div class="loca_step2">
                              <div class="loca_step2_ttl">STEP 2 : 구/군을 선택해 주세요.</div>
                              <div class="result_num_wrap3"><a class="btn_prev" href="javascript:void(0);">앞으로</a><strong class="sidoSelectName">서울</strong></div>
                              <div class="loca_step2_cont">
                                <div class="loca_step2_frame scrollbar-inner mCustomScrollbar _mCS_2 mCS_no_scrollbar"><div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                  <ul class="gugun_arae_box">
                                  </ul>
                                </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                              </div>
                            </div>
                            <div class="loca_step3">
                              <div class="result_num_wrap">
                                <!-- 검색결과 없는 경우 -->
                                <!--strong>검색 결과</strong>(<span class="en t_006633">0</span>개)-->
                                <!-- 검색결과 있는 경우 -->
                                <strong class="gugunSelectName"></strong> (검색 결과 <span class="en t_006633 sidoSetResult">0</span>개)
                              </div>
                              <div class="result_list_wrap">
                                <!-- 검색결과 없는 경우 -->
                                <!--p class="no_result">검색 결과가 없습니다.</p-->
                                <!-- 검색결과 있는 경우 -->
                                <div class="result_list scrollbar-inner mCustomScrollbar _mCS_3 mCS_no_scrollbar"><div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                  <ul class="quickSearchResultBoxSidoGugun">
                                  </ul>
                                </div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                              </div>
                            </div>
                          </article>
                        </article>
                      </article>

                      <header class="find_road_header">
                        <h2 class="btn_find_road">
                            <a href="javascript:void(0);" style="background: url(&quot;/img/store/btn_find_road_off.png&quot;) center center no-repeat rgb(244, 244, 242);">길찾기</a>
                        </h2>
                      </header>
                      <%-- <article class="find_road_cont">
                        <header class="find_road_cont_header">
                          <p class="btn_daum_map">
                            <a href="javascript:void(0);" class="daumGoBtn" target="_blank">카카오맵</a> <!-- 20200819 수정 -->
                          </p>
                          <span class="road_layer_toggle"><a href="javascript:void(0);" class="daumFindParentToggle">열기</a></span>
                        </header>
                        <article class="road_map_layer_cont">
                                              
                          <div class="road_map_layer_inner"> 
                            <div class="start_desti_input">
                              <dl>
                                <dt><label for="start">출발</label></dt>
                                <!-- 160926 DOM 위치 수정 -->
                                <dd>
                                  <!-- 160921 앱에만 클래스:only_app 적용 -->
                                  <span class="btn_my_loca"><a href="javascript:void(0);" class="road_find_current">현재위치</a></span>
                                  <!-- 160921 앱에만 클래스:only_app 적용 end -->
                                  <div class="road_map_input_wrap rmiw1">
                                    <input id="start" placeholder="출발지 입력" type="text">
                                    <p><a href="javascript:void(0);" id="start1">검색</a></p>
                                  </div>
                                  <div class="natural_lang_result_layer">
                                    <ul>
                                      <li><a href="javascript:void(0);"><span>시청</span></a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역 1호선</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역 2호선</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>자미디어센터</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역 맛집</a></li>
                                    </ul>
                                  </div>
                                  
                                </dd>
                                <!-- 160926 DOM 위치 수정 -->
                              </dl>
                              <dl>
                                <dt><label for="destination">도착</label></dt>
                                <dd>
                                  <div class="road_map_input_wrap rmiw2">
                                    <input id="destination" placeholder="매장명 또는 주소" type="text">
                                    <p><a href="javascript:void(0);" id="destination1">검색</a></p>
                                  </div>
                                  
                                  <div class="natural_lang_result_layer">
                                    <ul>
                                      <li><a href="javascript:void(0);"><span>시청</span></a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역 1호선</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역 2호선</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>자미디어센터</a></li>
                                      <li><a href="javascript:void(0);"><span>시청</span>역 맛집</a></li>
                                    </ul>
                                  </div>
                                </dd>
                              </dl>
                            </div>
                            <section class="transfer_method_wrap">
                              <header class="transfer_method_tab1">
                                <h3><a class="road_find_btn roadFindStartBtn" data-target="car" href="javascript:void(0);">자동차</a></h3>
                              </header>
                              <article class="transfer_method_cont1 mCustomScrollbar _mCS_4 mCS_no_scrollbar"><div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                <div class="desti_top_wrap carFindRoad" style="display:none">
                                  <strong class="desti_top_ttl car_find_endName">스타벅스 영풍문고점</strong>
                                  <p class="desti_top_dist">
                                    <span class="car_find_min"></span>&nbsp;&nbsp;<strong class="car_find_lengtn"></strong>km
                                  </p>
                                </div>
                                
                                <div class="desti_top_wrap carFindRoadErr" style="display:none">
                                  <p class="icon_exclam">직선거리가 <strong>30km</strong> 이내인 경우에 한하여 도보 찾기 결과를 제공합니다.</p>
                                </div>
                                
                                                            
                                <dl class="bg_start_desti carFindRoad" style="display:none">
                                  <dt>출발</dt>
                                  <dd><p class="car_find_startName"></p></dd>
                                </dl>
                                <ul class="road_found_list">
                                  
                                </ul>
                                <dl class="bg_start_desti carFindRoad" style="display:none">
                                  <dt>도착</dt>
                                  <dd><p class="car_find_endName"></p></dd>
                                </dl>
                              </div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></article>
                              <header class="transfer_method_tab2">
                                <h3><a class="road_find_btn roadFindStartBtn" data-target="transport" href="javascript:void(0);">대중교통</a></h3>
                              </header>
                              <article class="transfer_method_cont2 mCustomScrollbar _mCS_5 mCS_no_scrollbar" style="display:none"><div id="mCSB_5" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_5_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                <div class="desti_top_wrap 	carFindRoad" style="display:none">
                                  <strong class="desti_top_ttl car_find_endName">스타벅스 영풍문고점</strong> 
                                  <p class="desti_top_dist trafficViewInfo">전체:00 | 버스:00 | 지하철:00 | 버스+지하철:00</p>
                                  <!--p class="desti_top_dist"><strong>8</strong>분&nbsp;&nbsp;<strong>1.7</strong>km</p-->
                                </div>
                                
                                <div class="desti_top_wrap carFindRoadErr" style="display:none">
                                  <p class="icon_exclam">직선거리가 <strong>30km</strong> 이내인 경우에 한하여 도보 찾기 결과를 제공합니다.</p>
                                </div>														
    
                                <div class="trafficSummery">
                                
                                
                                </div>
                                
                                
                                                            
                              </div><div id="mCSB_5_scrollbar_vertical" class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_5_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></article>
                              
                              
                              <header class="transfer_method_tab3">
                                <h3><a class="road_find_btn roadFindStartBtn" data-target="foot" href="javascript:void(0);">도보</a></h3>
                              </header>
                              <article class="transfer_method_cont3 mCustomScrollbar _mCS_6 mCS_no_scrollbar" style="display:none"><div id="mCSB_6" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_6_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                <div class="desti_top_wrap carFindRoad" style="display:none">
                                  <strong class="desti_top_ttl foot_find_endName">스타벅스 영풍문고점</strong>
                                  <p class="desti_top_dist"><span class="foot_find_min"></span>&nbsp;&nbsp;<strong class="foot_find_lengtn"></strong>km</p>
                                </div>
                                <div class="desti_top_wrap carFindRoadErr" style="display:none">
                                  <p class="icon_exclam">직선거리가 <strong>30km</strong> 이내인 경우에 한하여 도보 찾기 결과를 제공합니다.</p>
                                </div>
                                                            
                                <dl class="bg_start_desti carFindRoad" style="display:none">
                                  <dt>출발</dt>
                                  <dd><p class="foot_find_startName"></p></dd>
                                </dl>
                                <ul class="road_found_list">
                                  
                                </ul>
                                <dl class="bg_start_desti carFindRoad" style="display:none">
                                  <dt>도착</dt>
                                  <dd><p class="foot_find_endName"></p></dd>
                                </dl>														
                              </div><div id="mCSB_6_scrollbar_vertical" class="mCSB_scrollTools mCSB_6_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_6_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></article>
                            </section>
                          </div>
                        </article>
                      </article> --%>
                    </section>
          </div>
        </fieldset>
      </form>
    </div>
  </div>
</body>
</html>