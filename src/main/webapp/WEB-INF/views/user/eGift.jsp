<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>

<main id="main">
	<div id = "container">
		<div class="egift_wrap">
			<header class="msr_sub_ttl_wraps">
				<div class="msr_sub_ttl_inner">
					<h4><img alt="선물하기" src="/images/gift_ttl.png"/></h4>
				</div>

			</header>
			<section class="card_gift_info_section">
				<form name="form" id="frmUpload" action="/user/cardcart" method="post" enctype="multipart/form-data">
					<fieldset>
						<legend>선물할 정보 입력 및 메시지 입력을 해주세요.</legend>
						<div class="gift_card_visual">
								<dl>
									<dd class="en">
										<img src="//image.istarbucks.co.kr/common/img/msr/sceGift/gift_e_flag.png" alt=""> 고맙습니다 e-Gift
									</dd>
									<dt>
										<img src="https://image.istarbucks.co.kr/cardImg/20210617/008186.gif" alt="고맙습니다 e-Gift" onerror="this.src='https://image.istarbucks.co.kr/upload/common/img/icon/card_672x423.png';">
									</dt>
								</dl>
							</div>
							<table class="gift_info_tbl" summary="선물할 카드, 선물할 방법, 받는 사람, 메시지 입력, 금액 선택, 전송방법, 결제 수단 선택, 유의사항">
							<caption>선물할 카드, 선물할 방법, 받는 사람, 메시지 입력, 금액 선택, 전송방법, 결제 수단 선택, 유의사항에 대한 테이블</caption>
							<colgroup>
								<col width="18.1818%">
								<col width="81.8182%">
							</colgroup>
							<tbody><tr>
								<th>선물할 방법</th>
								<td>
									<div class="tbl_card_radio">
										<span class="radio_wrap">
											<input id="method1" name="sendType" type="radio" value="M" checked="checked">
											<label for="method1">휴대폰 전송</label>
										</span>
									</div>
								</td>
							</tr>
							<tr class="egift_phone_cert_info">
								<th scope="row">보내는 사람</th>
								<td>
									<p class="pre_regi_number">${principal.phoneNum}</p>
									<p class="phone_chg_num">보내는 사람의 전화번호는 <a href="/user/userinfo">개인정보확인 및 수정</a> 페이지에서 변경 가능합니다.</p>
								</td>
							</tr>
							<tr>
								<th>받는 사람
								<!-- <%-- <br>
								 <p><div class="ez-checkbox">
									<input type="checkbox" id="giftMe" data-username="정용주" data-phone="010-5710-2570" data-email="judyjak2@naver.com" class="ez-hide">
									</div>
									<label for="giftMe">나에게 선물하기</label></p>--%> -->
									</th>
								<td>
									
									<div class="tbl_card_sending">		
										<input class="receiver" id="receiver" placeholder="받는 사람 이름" type="text" name="receiverName" />	
										<br />
										<div class="sel_wrap">
											<input type="tel" id="receiverPhonenum" placeholder="휴대폰 번호" name="receiverPhonenum" class="receiver" maxlength="11" title="휴대폰 번호">
										</div>
										<!-- <div class="sel_wrap">		
											<div class="tbl_card_select">			
												<label for="phone1_1">선택</label>			
												<select id="phone1" name="phone1" title="휴대폰 첫번째 자리">				
													<option value="" selected="selected">선택</option>				
													<option value="010">010</option><option value="011">011</option>
													<option value="016">016</option><option value="017">017</option>
													<option value="018">018</option><option value="019">019</option>			
												</select>	
											</div>	
										</div> -->
										<!-- <span>-</span>
										<input type="tel" id="phone2" name="phone2" class="pnum_input" maxlength="4" title="휴대폰 두번째 자리">
										<span>-</span>
										<input type="tel" id="phone3" name="phone3" class="pnum_input" maxlength="4" title="휴대폰 세번째 자리"> -->
										</div>	
											
									
									
								</div>
								</td>
							</tr>
							
							<tr id="trReqMsg">
								<th>메시지 입력</th>
								<td>
								<textarea id="reqMsg" name="message" placeholder="내용을 입력해 주세요. (200자 내외)"></textarea>
								<p id="reqMsgCnt" class="gift_info_adding"></p>
								</td>
							</tr>
							<tr>
								<th>금액 선택</th>
								<td>
									<div class="tbl_card_radio">
										<select id="price">
											<option id="price1" value="100"  name="price">10만원</option>
											<option id="price2" value="100"  name="price">5만원</option>
											<option id="price3" value="100"  name="price">3만원</option>
											<option id="price4" value="100"  name="price">1만원</option>
										</select>
								
									</div>
									<p class="gift_info_adding txt_red">- 장당 금액은 또는 1만원~10만원까지 선물 가능합니다. (1만원 이상부터는 만원 단위로 가능)</p>
								</td>
							</tr>
							<tr>
								<th>전송방법</th>
								<td>
									<div class="tbl_card_radio">
										<div class="tbl_card_radio">
											<input id="transfer1" name="reqKub" type="radio" value="I" checked="checked">
											<label for="transfer1">즉시 전송</label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th>결제 수단 선택</th>
								<td>
									<div class="tbl_card_radio">
										<input id="payMethod1" name="gopaymethod" type="radio" value="onlycard" checked="checked">
										<label for="payMethod1" >신용카드</label>
									</div>
								</td>
							</tr>
							<tr>
								<th>유의사항</th>
								<td>
										<ul class="gift_info_adding2">
											<li><span class="gift_info_add_fb">번호도용 문자차단/휴대폰번호 도용방지 서비스에 가입된 휴대폰은 발송 또는 수신이 불가합니다.<br>(부가서비스 해지 후 반영까지 약 24시간 소요됩니다.)</span></li>
											<li>예약전송은 다음날부터 30일 이내, 30분 단위로 지정 하실 수 있습니다.<br class="for_web"> 다만, e-Gift Card 전송이 많은 특정 기간의 경우 지정하신 시간보다 수신이 늦어질 수 있습니다.</li>
											<li>수신 받는 휴대폰 설정에 따라 MMS 전송이 불가할 수 있습니다.</li>
											<li>e-Gift Card를 받은 수신인이 선물을 거절할 수 있습니다.<br class="for_web">수신인이 거절하는 경우 보내신 e-Gift Card는 발신인에게 반송되며 등록하여 사용하시거나,<br class="for_web">반송된 후 2주 내에 결제 취소가 가능합니다.</li>
											<li>스타벅스 e-Gift 카드는 매장에서 스타벅스 코어 카드로 교환 가능하며, 시즌 한정 및 프로모션 카드로는 교환이 불가합니다. <br class="for_web">e-Gift 카드의 이미지와 실물 카드 이미지는 상이 할 수 있습니다.</li>
											<li>스타벅스 커피 코리아는 고객 개인정보 보호 차원에서 e-Gift Card 발송 내역을 발송 후 3개월만 보관하고 있습니다.<br class="for_web"> 이후 문자 삭제, 분실 등에 대한 재발송 처리가 안되오니 이점 유의 하시기 바랍니다.</li>
										</ul>
								</td>
							</tr>
						</tbody></table>
					</fieldset>
					<br />
					<!--<button> <a href="/user/cardcart"> 결제하기</button>-->
					<button> <a href="javascript:void(0);" onclick="egiftpay();sendSms();">결제하기</a></button>
				</form>
			</section>
			<div id = "principalname" value = "${principal.name}"></div>
			<div id = "principalemail" value = "${principal.email}"></div> 
			<div id = "principaltel" value = "${principal.phoneNum}"></div>
		</div>
	</div>
	
</main>	
<%@include file="../layout/footer.jsp"%>