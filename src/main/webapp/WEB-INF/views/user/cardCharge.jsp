<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>카드충전</title>

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
                    <img alt="inMyCard" src="images/cha_card_ttl.png" />
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
        <section class="card_charge_wrap">
          <h5 class="card_charge_regular"><a class="on">충전하기</a></h5>
          <article>
            <form name="frm_NORMAL" id="frm_NORMAL" method="post">  
              <!-- 웹테이블 -->
              <table class="regular_charge gift_info_tbl chargeWh" summary="충전 카드 선택, 충전 금액 선택, 결제 수단 선택, 온라인 충전 시 유의 사항">
                <caption>충전 카드 선택, 충전 금액 선택, 결제 수단 선택, 온라인 충전 시 유의 사항에 대한 테이블</caption>
                <tbody>
                  <tr>
                    <th scope="row">충전 카드 선택</th>
                    <td>
                      <div class="sel_wrap">
                        <p class="user_sel_wrap">
                          <label for="cardNumber_NORMAL">부산 시티 카드</label>
                          <select id="cardNumber_NORMAL" name="cardNumber"><option value="34655033" data-cardnumber="**** - **** - **20 - 1565" data-cardnickname="부산 시티 카드" data-cardimgurl="https://image.istarbucks.co.kr/cardImg/20190805/005949.png" data-balance="2800" data-autoreloadtype="9" data-autoreloadday="" data-autoreloaddaysub="" data-lowestamount="" data-autoreloadamount="0" data-balanceconfirmdate="2021-07-08 13:31:00" data-cardregdate="2021-02-14 11:14:43" data-autoreloadpaymethod="" data-delegatecardyn="Y" data-cardregnumber="34655033">부산 시티 카드</option></select>
                        </p>
                      </div>
                      <div class="user_card_wrap">
                        <figure>
                            <i class="representative_icon"><a href="javascript:void(0);"></a></i>
                          <img alt="" class="cardImgUrl" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';" src="https://image.istarbucks.co.kr/cardImg/20190805/005949.png">
                        </figure>
                        <p>
                          <strong class="en cardNumber">**** - **** - **20 - 1565</strong><br><br>
                          최종 사용일 : <span class="balanceConfirmDate">2021-07-08 13:31:00</span><br>
                          카드 등록일 : <span class="cardRegDate">2021-02-14 11:14:43</span>
                        </p>
                      </div>
                    </td>
                  </tr>

                  <tr>
                    <th scope="row">충전 금액 선택</th>
                    <td class="charge_select">
      
                      <div class="sel_wrap">
                        <p class="charge_change">충전 후 총 카드 잔액 : <span class="en t_006633 afterChargeBalance" name="totPrice">2,800</span>원</p>
                      </div>
                      <div class="charge_options">
                      <ul>
                        <li><label><input type="radio" value="100000" name="totPrice">10만원</label></li>
                        <li><label><input type="radio" value="50000" name="totPrice">5만원</label></li>
                        <li><label><input type="radio" value="30000" name="totPrice">3만원</label></li>
                        <li><label><input type="radio" value="10000" name="totPrice">1만원</label></li>
                        <li><label><input type="radio" value="0" name="totPrice">다른 금액</label></li>
                        <li><input type="text" name="totPriceInput" title="충전금액" placeholder="직접입력" maxlength="2" autocomplete="off"></li>
                      </ul>
                    </div>
                      <p class="charge_level_guide txt_red">스타벅스 카드 온라인 충전은 1만원 단위로 최대 55만원까지 가능하며, 충전 후 합계 잔액이 55만원을 초과할 수 없습니다. </p>
                    </td>
                  </tr>
                <tr>
                  <th scope="row">결제 수단 선택</th>
                  <td>
                    <div class="sel_wrap">
                      <p class="user_sel_wrap">
                        <label for="gopaymethod_NORMAL">신용카드</label>
                        <select id="gopaymethod_NORMAL" name="gopaymethod">
                          <option value="onlycard" selected="selected">신용카드</option>
                          <option value="onlydbank">실시간 계좌이체</option>
                        </select>
                      </p>
                    </div>
                  </td>
                </tr>
                <tr>
                  <th scope="row">온라인 충전 시<br>유의 사항</th>
                  <td>
                    <ol class="charge_warn">
                      <li>
                        1. 이용안내
                        <ul>
                          <li>
                            스타벅스 리워드 프로그램에 등록된 스타벅스 카드의 충전은 매장 충전 외에도 다음의 온라인 서비스를 통해<br>이용하실 수 있습니다. 
                            <ul>
                              <li>PC 홈페이지 (www.starbucks.co.kr)</li>
                              <li>스타벅스 App (iOS 및 Android 버전 제공)</li> 
                            </ul>
                          </li>
                          <li>
                            온라인 충전은 회원님의 편의를 위해 다음의 2가지 방법으로 제공됩니다.
                            <ul>
                              <li>일반 충전 : 필요시 마다 충전금액과 결제수단 등의 정보를 입력하여 즉시 충전</li>
                              <li>자동 충전 : 카드별로 자동충전방법, 충전금액, 결제수단 등을 미리 설정해두고 설정값에 따라 자동 충전(카드번호 등<br>결제수단 정보는 거래승인을 위해서 최초 신청시에만 입력을 받게되며 신청이 완료된 후 저장되지 않습니다.)</li>
                            </ul>
                          </li>
                          <li>온라인 접속 환경 및 충전 방법에 따라 충전시 결제 수단에 차이가 있을 수 있습니다.</li>
                          <li>스타벅스 카드 충전 금액에 대한 현금 영수증은 충전 시에는 발행되지 않으며, 매장에서 실제로 구매결제 시 발행됩니다.</li>
                          <li>카드 충전금액의 유효기간은 스타벅스 카드의 마지막 거래발생일로부터 5년 입니다.</li>
                        </ul>
                      </li>
                      <li>
                        2. 온라인 충전 취소
                        <ul>
                          <li>재충전 이후 거래 이력이 없는 경우, 충전일로부터 최대 7일 내 온라인에서 충전 취소가 가능합니다.</li>
                          <li>휴대폰 충전 시, 충전취소 요청 일이 당월이 아닌 익월인 경우 익월 취소가 불가한 통신사의 정책에 따라 지정하신 계좌로 <br>환불됩니다. (ex 3/30 충전, 4/2 충전 취소요청 → 계좌환불)</li><!-- 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 문구 수정 -->
                          <li>매장에서 충전한 거래는 온라인에서 취소하실 수 없습니다.</li>
                        </ul>
                      </li>
                      <li>
                        3. 온라인 충전 제한
                        <ul>
                          <li>미성년자(만 14세 미만)는 온라인 충전을 하실 수 없습니다.</li>
                          <li>충전 후 카드 1장당 잔액은 최대 55만원을 넘을 수 없습니다.</li>
                          <li>1회 최대 55만원까지 충전 가능합니다.</li>
                        </ul>
                        <p class="fw_normal">※ 매장, 홈페이지, 모바일 애플리케이션 간 충전 가능한 결제수단의 차이가 있을 수 있습니다.</p> 
                      </li>
                    </ol>
                  </td>
                </tr>
              </tbody>
            </table>
              <!-- 웹테이블 end -->
              <input type="text" style="display:none;">
            </form>									
              <div class="ez-checkbox cahrge_page_ck">
                <div class="ez-checkbox">
                  <input type="checkbox" name="sui_index" id="notice_ck02" t="COMMON" title="선택" value="26" class="ez-hide delegatecardynChk" data-cardregnumber="34655033" data-regtype="C" />
                </div> 
                <span class="charge_change">충전 후 대표카드 설정</span>
              </div>
            <ul class="charge_tbl_btns">
              <li class="charge_tbl_btn1"><a href="javascript:void(0);" class="charge_normal">카드 충전</a></li>
              <li class="charge_tbl_btn2"><a href="javascript:void(0);">취소</a></li>
            </ul>
          </article>									
          
             <!-- 웹테이블 end -->
              <input type="text" style="display:none;">
            </form>									
            <!-- 160125 김민호 추가 -->
              <div class="ez-checkbox cahrge_page_ck">
                <div class="ez-checkbox ez-checked"><input type="checkbox" name="sui_index" id="notice_ck02" t="COMMON" title="선택" class="ez-hide delegatecardynChk" data-cardregnumber="34655033" data-regtype="C"></div> 
                <span class="charge_change">충전 후 대표카드 설정</span>
              </div>
            <!-- 160125 김민호 추가 end -->
            <ul class="charge_tbl_btns">
              <li class="charge_tbl_btn1"><a href="javascript:void(0);" class="charge_auto">설정 완료</a></li>
              <li class="charge_tbl_btn2"><a href="javascript:void(0);">취소</a></li>
            </ul>
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