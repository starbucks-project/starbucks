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
                        <img alt="My메뉴" src="/images/my_menu.png" />
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
                <section class="my_drinkShop_info newMyTab">
                    <div class="drinkShop_info">
                        <dl class="content_tabmenu">

                            <!-- 2번 시작 -->
                            <dt class="tab tab_first tab_02 on"><h5><a href="javascript:void(0);">나만의 음료</a></h5></dt>			
                            <dd class="panel on content_panel" id="dd_01">
                                
                                <!-- (My 음료/매장) 목록 -->
                                <article class="drinkShop_info_pick">
                                    <fieldset>
                                        <!-- <legend>My 음료 사용 전체선택, 선택삭제 선택 폼</legend> -->
                                        <table class="drinkShop_view_info_tbl" summary="No, 음료명, 퍼스널 옵션, 등록일에 대한 테이블">
                                            <caption>No, 음료명, 퍼스널 옵션, 등록일에 대한 테이블</caption>
                                            <colgroup>
                                                <col width="52">
                                                <col width="60">
                                                <col width="409">
                                                <col width="250">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col"><div class="ez-checkbox"><input type="checkbox" name="drinkShop_view_ck_all" class="chkAll ez-hide" title="전체 선택"></div></th>
                                                    <th class="en" scope="col">No</th>
                                                    <th scope="col">음료명</th>
                                                    <th scope="col">등록일</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>               
                                                    <td>
                                                        <div class="ez-checkbox"><input type="checkbox" name="drinkShop_view_ck2" title="선택" value="12021080402290715612" class="ez-hide"></div>
                                                    </td>               
                                                    <td>1</td>               
                                                    <td class="tl">                               
                                                        <a href="javascript:void(0);" class="btn_show_pop_detail" data-favoriteno="12021080402290715612">콜드브루</a>                          
                                                    </td>                            
                                                    <td>2021-08-04 02:29:07</td>              
                                                </tr>
                                            </tbody>
                                        </table>
                                        <script id="favoriteList01" type="text/x-jquery-tmpl">
                                                <tr>
                                                    <td><input type="checkbox" name="drinkShop_view_ck2" title="선택" value="${favoriteNo}" /></td>
                                                    <td>${$item.getSeq()}</td>
                                                    <td class="tl">
                                                    {{if nickName == ''}}
                                                        <a href="javascript:void(0);" class="btn_show_pop_detail" data-favoriteNo="${favoriteNo}">${skuName}</a>
                                                    {{else}}
                                                        <a href="javascript:void(0);" class="btn_show_pop_detail" data-favoriteNo="${favoriteNo}">${nickName}</a>
                                                    {{/if}}
                                                    <!-- 150904 수정 -->
                                                        <a class="myFavorite" href="javascript:void(0)" data-favoriteNo="${favoriteNo}" data-myFavoriteYn="${myFavoriteYn}">
                                                        {{if myFavoriteYn == 'Y'}}
                                                            <img alt="" src="//image.istarbucks.co.kr/common/img/store/icon_fav_on.png">
                                                        {{else}}
                                                            <img alt="" src="//image.istarbucks.co.kr/common/img/store/icon_fav_off.png">
                                                        {{/if}}
                                                        </a>
                                                        <!-- 150904 수정 end -->
                                                    </td>
                                                    <td>{{html $item.getCustomList}}</td>
                                                    <td>${regDate}</td>
                                                </tr>
                                        </script>
                                        <!-- (My 음료/매장) 목록 end -->
                                        
                                        <!-- (My 음료/매장) 버튼 -->
                                        <div class="drinkShop_btnZone">
                                            <ul>
                                                <li><a href="javascript:void(0);" class="btn_all_check">전체선택</a></li>
                                                <li><a href="javascript:void(0);" class="btn_selected_del">선택삭제</a></li>
                                            </ul>														
                                        </div>
                                        <!-- (My 음료/매장) 버튼 end -->
                                    </fieldset>
                                </article>
                                <!-- (My 음료/매장) 목록 end -->
                                
                                <!-- (My 음료/매장) 페이징 -->
                                <div class="drinkShop_tbl_pagination">
                                    <ul class="pager">
                                        <li class=" active">
                                            <a href="javascript:void(0)">1</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- (My 음료/매장) 페이징 -->
                                
                                <!-- 음료 팝업 시작 -->
                                <div class="sArea_pop" id="pop02" style="display:none;">
                                    <p class="btn_pop_close"><a href="javascript:void(0);">닫기</a></p>
                                    <section class="sArea_pop_inner">
                                        <!-- 내용 -->
                                        <div id="landing_wrap">
                                            <div class="landing_inner_wrap">
                                                <header class="landing_ttl">
                                                    <p class="en">MY FAVORITE DRINK</p>
                                                    <h1><!-- 레몬 진저 &amp; 망고 젤리 피지오 --></h1>
                                                </header>
                                                <p class="calling_name_ttl">
                                                    <!-- <img alt="콜링네임" src="//image.istarbucks.co.kr/common/img/landing/calling_name_ttl.png">톨 9위드 칩 라이트 토핑 아이스 화이트 초콜릿 모카 -->
                                                </p>
                                                <p class="landing_comments_date"><!-- 2015/03/01 12:39 --></p>
                                                <div class="landing_conts_wrap">
                                                    <div class="landing_conts_img"><!-- <img alt=""> --></div>
                                                    <div class="landing_conts_txt">
                                                        <dl>
                                                            <dt>기본 음료</dt>
                                                            <dd><!-- 레몬진저 피지오 --></dd>
                                                        </dl>
                                                        
                                                        <dl id="extractEquipment">
                                                            <dt>추출기구</dt>
                                                            <dd class="extractEquipmentName"></dd>
                                                        </dl>
                                                        <dl class="last">
                                                            <dt>퍼스널옵션</dt>
                                                            <dd class="customList"><!-- 아이스화이트초콜릿모카<br>화이트모카 시럽+1<br>일반 우유+1<br>일반 휘핑+1<br>토핑 적게+1<br>프라푸치노 자바칩+9 --></dd>
                                                        </dl>															
                                                        <div class="btn_bev_info">
                                                            <p><a href="javascript:void(0);">음료 정보</a></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- 내용 end -->
                                    </section>														
                                </div> 
                                <!-- 음료 팝업 end -->
                            </dd>
                            <!-- 2번 끝 -->
                            <!--3번 시작-->
                            <dt class="tab tab_03"><h5><a href="javascript:void(0);">나만의 푸드</a></h5></dt>
                        </dl>
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
						<a href="/user/egift" required="login" data-href="#">
						  · 선물하기</a>
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
                          <a href="/user/userinfo" required="login" data-href="#">
                            · 개인정보 확인 및 수정</a>
                        </li>
                      </ul>
                    </li>
                </ul>
            </div>
        </div><!-- Container end -->
    </div><!-- Body inner end -->
</main>	
<%@include file="../layout/footer.jsp"%>