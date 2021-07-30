<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>

<!-- LoginForm -->
	<div class="page-box">
    
    
			<!-- section title -->
			<div class="login-title">
			<div class="title text-center" >
				<h2>관리자 로그인</h2>				
				
			</div>
			</div>
			<!-- /section title -->
			
      <div class="outer-login-box">  
      <div class="login-box">
			<div class="manager-login-form" >
        
        <div class="form-box">
				<form id="login-form" method="post" role="form">
          <div class="id-pw-box">
					<input class="manager-login"  name="manager_id" type="text" maxlength="20" placeholder="아이디를 입력해 주세요." required="required" autocomplete="off">
					<input class="manager-login"  name="manager_pw" type="password" maxlength="20" placeholder="비밀번호를 입력해 주세요." required="required" autocomplete="off">
          </div>
					
          <hr />
          <div class="managerloginfunc-button-box">
					<button class="managerlogin-button"><a href="/manager">로그인</a></button>						
          </div><!-- end managerloginfunc-button-box-->
					
				</form>
      </div> <!-- end form-box -->
			</div> <!-- end login form-->
    </div> <!-- end login-box-->
			<!-- ./End Contact Form -->
		</div> <!--end outer-login-box-->
	</div> <!-- end container -->
  </div>

<%@include file="../layout/footer.jsp"%>