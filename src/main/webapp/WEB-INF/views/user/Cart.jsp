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
										<img alt="" src="/images/shopping_bag_ttl.png" />
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

		<div class="ms_cont_wrap">
			<!-- ms_cont -->
			<div class="ms_cont">
				<!-- (e-Gift 카드 장바구니 내역) 목록 -->
				<section class="egiftCard_shopBag_pick">
					<header>
						<h5>장바구니에 담긴 주문 내역을 확인 후 결제를 진행해 주세요.</h5>
					</header>
					<form method="post">
						<fieldset>
							<table class="egiftCard_shopBag_info_tbl"
								summary="my e-Gift 카드 카드이미지, 내용, 받는사람, 선물할 방법, 전송 방법, 수량, 주문금액, 결제금액, 주문수정에 대한 테이블">
			
								<colgroup>
									<col width="32">
									<col width="83">
									<col width="130">
									<col width="120">
									<col width="72">
									<col width="78">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">
											<div class="ez-mcheckbox 0"  id="0">
												<input type="checkbox" name="egiftCard_shopBag_ck_all"
														id="ckAll" title="전체 선택" class="ez-hide">
											</div>
										</th>
										<th scope="col">상품 이미지</th>
										<th scope="col">상품명</th>
										<th scope="col">주문수량</th>
										<th scope="col">주문금액</th>
										<th scope="col">결제금액</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="cart" items="${carts}" varStatus="status">
									<tr class="ez-mcheck ${status.count}" id="${cart.product.id}"  name="${cart.product.price}">
										<td>
											<div class="ez-mcheckbox ${status.count}" id="${cart.id}">
												<a href="javascript:void(0);" id="check_${status.count}" onclick="check(${status.count})">
												<input type="checkbox" name="egiftCard_shopBag_ck1"
													title="선택" value="103530" data-totalamount="10000"
													data-ordercnt="1" >
											</div>
										</td>
										<td>
											<img src="/images/${cart.product.category}_list/${cart.product.productImg}"
													 class="cardImg"></td>
										<td>${cart.product.productName}</td>
										<td>1</td>
										<td>${cart.product.price}원</td>
										<td><strong>${cart.product.price}원</strong></td>
									</tr>
									</c:forEach>
								</tbody>
							</table>

							<script id="egiftCartList" type="text/x-jquery-tmpl">
								</script>

							<div class="egiftCard_shopBag_total">
								<p>
									선택된 최종 결제 금액 <span>:</span> <strong class="checkedTotalAmount">0</strong>원
								</p>
							</div>

							<!-- (e-Gift 카드 장바구니 내역) 버튼 1-->
							<div class="egiftCard_shopBag_btnZone01">
								<ul>
									<li class="li1"><a href="javascript:void(0);" id="Allcheck">전체선택</a></li>
									<li class="li2"><a href="javascript:void(0);" onclick="deleteCart()">선택 삭제</a></li>
								</ul>
							</div>
							<!-- (e-Gift 카드 장바구니 내역) 버튼 end -->


							<!-- (e-Gift 카드 장바구니 내역) infoBox-->
							<section class="shopBag_infoBox_pick">
								<dl class="shopBag_infoBox01">
									<dt>결제 카드 선택</dt>
									<dd>
									<tbody>
										<tr class="selectcard">
											<td>
													<div class="sel_box">
														<select id="cardNum_NORMAL_sel" name="cardNum">
															<option value="">--내카드--</option>
															<c:forEach var="card" items="${cardsEntity}">
															<option id="${card.id}" value="${card.id}" name="${card.id}">${card.cardName}</option>	
															</c:forEach>														
														</select>
													</div>		
											</td>
										</tr>
									</tbody>
									</dd>
								</dl>
								<br>
								<dl class="shopBag_infoBox02">
									<dt>유의사항</dt>
									<dd>
										<ul>
											<li>법인 카드 결제 시 청구서 상 [상품권]으로 표기되며, 신용카드로 상품권 결제 시 구매 한도가
												적용될 수 있습니다.</li>
											<li>만 14세 미만은 결제 서비스를 이용하실 수 없습니다.</li>
										</ul>
									</dd>
								</dl>
							</section>
							<!-- (e-Gift 카드 장바구니 내역) infoBox end -->

							<div class="pay_sel_wrap">
								<p class="pay_user_sel_wrap">
									<label for="user">결제 수단 선택</label> <select id="user"
										name="gopaymethod">
										<option value="" selected="selected">결제 수단 선택</option>
										<option value="onlycard">신용카드</option>
										<option value="onlydbank">실시간 계좌이체</option>
									</select>
								</p>
							</div>

							<section class="m_myCart_warning">
								<dl class="myCart_warning">
									<dt>
										<p>유의사항</p>
										<span class="arrow"><a href="javascript:void(0);"></a></span>
									</dt>
									<dd>
										<div class="reg_charge_amount" >
											<ul class="bullet_disc_grey">
												<li>법인 카드 결제 시 청구서 상 [상품권]으로 표기되며, 신용카드로 상품권 결제 시 구매
													한도가 적용될 수 있습니다.</li>
												<li>만 14세 미만은 결제 서비스를 이용하실 수 없습니다.</li>
											</ul>
										</div>
									</dd>
								</dl>
							</section>

							<!-- (e-Gift 카드 장바구니 내역) 버튼 2-->
							<div class="egiftCard_shopBag_btnZone02">
								<ul>
									<li class="btns_2"><a href="javascript:void(0);"
										class="btn_payment" onclick="cartpay2();">선택 상품 결제하기</a></li>
									<li class="btns_3"><a href="javascript:void(0);"
										class="btn_payment_all" onclick="cartpay3();">전체 상품 결제하기</a></li>
								</ul>
							</div>
							<!-- (e-Gift 카드 장바구니 내역) 버튼 2 end -->

						</fieldset>
					</form>
				</section>
				<!-- (e-Gift 카드 장바구니 내역) 목록 end -->
				<div id = "principalname" value = "${principal.name}"></div>
				<div id = "principalemail" value = "${principal.email}"></div>
				<div id = "principaltel" value = "${principal.phoneNum}"></div>
			</div>
			<!-- //ms_cont -->

			<!-- 네비 -->





		</div>

	</div>


	<!-- Template custom -->


	</div>
</main>	

<%@include file="../layout/footer.jsp"%>