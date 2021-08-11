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
              <table class="egiftCard_shopBag_info_tbl"
								summary="my e-Gift 카드 카드이미지, 내용, 받는사람, 선물할 방법, 전송 방법, 수량, 주문금액, 결제금액, 주문수정에 대한 테이블">
			
								<colgroup>
									<col width="78">
									<col width="120">
									<col width="72">
									<col width="78">
                  <col width="90">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">상품 이미지</th>
										<th scope="col">상품명</th>
										<th scope="col">주문수량</th>
										<th scope="col">결제금액</th>
                    <th scope="col">구매날짜</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="saleditem" items="${saleditemsEntity}">
									<tr class="ez-mcheck" id="tr_${saleditem.id}"  name="${saleditem.price}">
										<td>
											<img src="/images/${saleditem.product.category}_list/${saleditem.product.productImg}"
													alt="e-gift 카드" class="cardImg"
													onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';"></td>
										<td>${saleditem.product.productName}</td>
										<td>1</td>
										<td><strong>${saleditem.product.price}원</strong></td>
                    <td>8/11</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
              
              
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