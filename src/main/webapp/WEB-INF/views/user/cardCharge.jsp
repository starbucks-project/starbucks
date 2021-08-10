<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
										<img alt="" src="/images/cha_card_ttl.png" />
									</h4>
								</div>
							</div>
						</header>
					</div>
					<!-- Col end -->
				</div>
				<!-- Row end -->
			</div>
			<!-- Container end -->
		</div>
		<!-- Banner area end -->

		<div class="container">
			<!-- ms cont part-->
			<div class="ms_cont">
				<section class="card_charge_wrap">
					<h5 class="card_charge_regular">
						<a class="on">충전하기</a>
					</h5>
					<article>
						<form name="frm_NORMAL" id="frm_NORMAL" method="post">
							<!-- 웹테이블 -->
							<table class="regular_charge gift_info_tbl chargeWh"
								summary="충전 카드 선택, 충전 금액 선택, 결제 수단 선택, 온라인 충전 시 유의 사항">
								<caption>충전 카드 선택, 충전 금액 선택, 결제 수단 선택, 온라인 충전 시 유의 사항에
									대한 테이블</caption>
								<tbody>
									<tr>
										<th scope="row">충전 카드 선택</th>
										<td>
											<div class="sel_wrap">
												<%-- <p class="user_sel_wrap"> --%>
<<<<<<< HEAD
													<%-- <label for="cardNum_NORMAL">${cardEntity.cardName}</label>  --%>
														<select id="cardNum_NORMAL" name="cardNum" onchange="myFunction(this.value)">
															<option value="">--내카드--</option>
															<c:forEach var="card" items="${cardsEntity}">
															<option id="${card.id}" value="${card.id}" name="${card.id}">${card.cardName}</option>	
															</c:forEach>														
														</select>
															
												<%-- </p> --%>
=======
													<%-- <label for="cardNum_NORMAL">--카드 선택--</label>  --%>
														<select id="cardNum_NORMAL" name="cardNum">
														
															<c:forEach var = "card" items="${cardsEntity}">
																<option id="${card}" value="${card.id}">${card.cardName}</option>
															</c:forEach>
														</select>
												<%-- </p> --%>
												
>>>>>>> f9a91e64d40d2cf273a80546182181aaeee42272
											</div>
											<br />
											<!--
											<div class="user_card_wrap">
												<figure>
													<i class="representative_icon"><a
														href="javascript:void(0);"></a></i>
													<img alt="" class="cardImgUrl"
														src="${card.cardImg}">
												</figure>
												<p>
<<<<<<< HEAD
													<strong class="en cardNum">카드번호</strong><br>
=======
													<strong class="en cardNumber">1111-2222-333-4444</strong><br>
>>>>>>> f9a91e64d40d2cf273a80546182181aaeee42272
													<br> 최종 사용일 : 
													<span class="balanceConfirmDate">2021-07-08 13:31:00</span>
													
													
												</p>
											</div> -->
										</td>
									</tr>

									<tr>
										<th scope="row">충전 금액 선택</th>
										<td class="charge_select">

											<div class="sel_wrap">
												<p class="charge_change">
													충전 후 총 카드 잔액 : <span class="en t_006633 afterChargeBalance"
														name="totPrice">0</span>원
												</p>
											</div>
											<div class="charge_options">
												<select class = "charge">
													<option id="price1" value="100000" name="totPrice">10만원</option>
													<option id="price2" value="50000" name="totPrice">5만원</option>
													<option id="price3" value="30000" name="totPrice">3만원</option>
													<option id="price4" value="10000" name="totPrice">1만원</option>
													<option id="price5" value="10" name="totPrice">10원</option>
												</select>
											
											</div>
											<p class="charge_level_guide txt">스타벅스 카드 온라인 충전은 1만원
												단위로 최대 10만원까지 가능하며, 충전 후 합계 잔액이 55만원을 초과할 수 없습니다.</p>
										</td>
									</tr>
									<tr>
										<th scope="row">결제 수단 선택</th>
										<td>
											<label for="gopaymethod_NORMAL">신용카드</label> 										
										</td>
									</tr>
									<tr>
										<th scope="row">온라인 충전 시<br>유의 사항
										</th>
										<td>
											<ol class="charge_warn">
												<li>1. 이용안내
													<ul>
														<li>스타벅스 리워드 프로그램에 등록된 스타벅스 카드의 충전은 매장 충전 외에도 다음의 온라인
															서비스를 통해<br>이용하실 수 있습니다.
															<ul>
																<li>PC 홈페이지 (www.starbucks.co.kr)</li>
																<li>스타벅스 App (iOS 및 Android 버전 제공)</li>
															</ul>
														</li>
														<li>온라인 충전은 회원님의 편의를 위해 다음의 2가지 방법으로 제공됩니다.
															<ul>
																<li>일반 충전 : 필요시 마다 충전금액과 결제수단 등의 정보를 입력하여 즉시 충전</li>
																<li>자동 충전 : 카드별로 자동충전방법, 충전금액, 결제수단 등을 미리 설정해두고
																	설정값에 따라 자동 충전(카드번호 등<br>결제수단 정보는 거래승인을 위해서 최초
																	신청시에만 입력을 받게되며 신청이 완료된 후 저장되지 않습니다.)
																</li>
															</ul>
														</li>
														<li>온라인 접속 환경 및 충전 방법에 따라 충전시 결제 수단에 차이가 있을 수 있습니다.</li>
														<li>스타벅스 카드 충전 금액에 대한 현금 영수증은 충전 시에는 발행되지 않으며, 매장에서
															실제로 구매결제 시 발행됩니다.</li>
														<li>카드 충전금액의 유효기간은 스타벅스 카드의 마지막 거래발생일로부터 5년 입니다.</li>
													</ul>
												</li>
												<li>2. 온라인 충전 취소
													<ul>
														<li>재충전 이후 거래 이력이 없는 경우, 충전일로부터 최대 7일 내 온라인에서 충전 취소가
															가능합니다.</li>
														<li>휴대폰 충전 시, 충전취소 요청 일이 당월이 아닌 익월인 경우 익월 취소가 불가한
															통신사의 정책에 따라 지정하신 계좌로 <br>환불됩니다. (ex 3/30 충전, 4/2 충전
															취소요청 → 계좌환불)
														</li>
														<!-- 2019.05.27 [My Card / e-Gift Card 휴대폰 결제 취소] 문구 수정 -->
														<li>매장에서 충전한 거래는 온라인에서 취소하실 수 없습니다.</li>
													</ul>
												</li>
												<li>3. 온라인 충전 제한
													<ul>
														<li>미성년자(만 14세 미만)는 온라인 충전을 하실 수 없습니다.</li>
														<li>충전 후 카드 1장당 잔액은 최대 55만원을 넘을 수 없습니다.</li>
														<li>1회 최대 55만원까지 충전 가능합니다.</li>
													</ul>
													<p class="fw_normal">※ 매장, 홈페이지, 모바일 애플리케이션 간 충전 가능한
														결제수단의 차이가 있을 수 있습니다.</p>
												</li>
											</ol>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- 웹테이블 end -->
							<input type="text" style="display: none;">
						</form>
						
						<ul class="charge_tbl_btns">
							<li class="charge_tbl_btn1"><a href="javascript:void(0);"
								class="charge_normal" onclick="chargepay();">카드 충전</a></li>
							<li class="charge_tbl_btn2"><a href="javascript:void(0);">취소</a></li>
						</ul>
					</article>
					
				</section>
				<div id = "principalname" value = "${principal.name}"></div>
				<div id = "principalemail" value = "${principal.email}"></div>
				<div id = "principaltel" value = "${principal.phoneNum}"></div>
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
						<a href="/user/cardRegiForm" required="login" data-href="#">
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
		<!-- Template custom -->
	</div>
	<!-- Body inner end -->
</main>

<%@include file="../layout/footer.jsp"%>