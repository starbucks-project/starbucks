<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<div class="container">
<!-- LoginForm -->
	<div class="userinfo-page-box">
			<!-- section title -->
			<div class="userinfo-title-box">
			<div class="userinfo-title" >
				<a><strong>개인정보 확인 및 수정</strong></a>				
			</div> <!-- end userinfo-title-box-->
			</div> <!-- end userinfo-title-->
			<!-- /section title -->

			<div class="outer-info-box">
      <div class="info-box">  
      <div class="user-name-box">
        <div class="name-text-box">
          <h6>이름</h6>
        </div> <!-- end name-text-box -->
        <div class="under-name-text">
        <div class="name-output-box">
          <input type="text" name="name" value="홍길동" readonly />
        </div> <!-- end name-output-box-->
        <div class="user_gender">
          <a class="male " href="#">남</a>
          <a class="female  on" href="#">여</a>
          <input type="hidden" name="gender" id="gender" value="F">
        </div> <!-- end user gender-->
      </div> <!-- under-name-text-->
      </div> <!-- end user-name-box-->
    <hr />

      <div class="user-birth-box">
        <div class="user-birth-text-box">
          <h6>생년월일</h6>
        </div><!-- end user-birth-text-box -->
        <div class="user-birth-output-box">
          <input type="text" value="1999/02/08" readonly />
          <p>생일 무료 음료 쿠폰은 1년에 1번만 발행되므로, 변경 후에도 해당 연도 내 발행 이력이 있는 경우 추가 발행되지 않습니다.</p>
        </div> <!-- end user-birth-output-box -->
      </div> <!-- end user-birth-box-->
    <hr />

      <div class="user-phonenum-box">
        <div class="user-phonenum-text-box">
          <h6>휴대폰</h6>
        </div><!-- end user-phonenum-text-box -->
        <div class="user-phonenum-output-box">
          <input type="text" value="010-****-2570" readonly />
        </div> <!-- end user-phonenum-output-box -->
      </div> <!-- end user-phonenum-box-->
    <hr />

      <div class="user-email-box">
        <div class="user-email-text-box">
          <h6>메일</h6>
        </div><!-- end user-email-text-box -->
        <div class="user-email-output-box">
          <input type="text" value="example@naver.com" readonly />
        </div> <!-- end user-email-output-box -->
      </div> <!-- end user-email-box-->
    <hr />

      <div class="nickname-img-box">
      <img src="../images/starbucksnickname.jpg" />
      <div class="under-img-text-box">
        <p>주문하신 제품을 찾으실 때, <br /> 파트너가 등록하신 닉네임을 불러드립니다.</p>
      </div>
    </div> <!-- end nickname-img-box -->
      <div class="nickname-info">
        <div class="nickname-title-box">
          <a><strong>닉네임(선택)</strong></a>
        </div>
        <div class="nickname-agreement-box">
          <div class="nickname-subtitle-box">
            <a><strong>선택적 개인정보 수집동의 및 이용 약관</strong></a>
          </div>
          <div class="nickname-agreement-content-box">
            <p>본인은 (주)스타벅스커피코리아(이하 “회사”라 합니다)가 제공하는 콜 마이 네임 서비스(이하 “서비스”라 합니다)를 이용하기 위해, 다음과 같이 “회사”가 본인의 개인정보를 수집·이용하는 것에 동의합니다. <br /><br />
            <strong>※ 귀하께서는 개인정보 수집·이용에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우 서비스 이용을 하실 수 없습니다.</strong></p>
          </div>
          <div class="nickname-input-box">
            <input type="text" name="nickname" value="홍길동" />
          </div> <!-- end nickname-input-box-->
        </div> <!--end nickname-agreement-box-->
        <hr />
        <div class="userinfo-ps-box">
          <p><strong> *선택항목은 입력하지 않거나 동의하지 않아도 스타벅스 서비스를 이용하실 수 있습니다.</strong></p>
        </div>
        <div class="updateUserinfo-button-box">
          <button>정보수정</button>
        </div>
      </div> <!-- end nickname-info-->

		</div> <!--end outer-info-box-->
  </div>
	</div> <!-- end page-box -->
</div> <!-- end div -contatiner-->
<%@include file="../layout/footer.jsp"%>