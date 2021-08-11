<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<main id="main">
<!-- LoginForm -->
	<div class="manager_page_box">
    
    
			<!-- section title -->
			<div class="manager_login_title">
			<div class="manager_login_title text-center" >
				<h2>관리자 로그인</h2>				
				
			</div>
			</div>
			<!-- /section title -->
			
      <div class="manager_outer_login_box">  
      <div class="login_box">
			<div class="manager_login_form" >
        
        <div class="manager_form_box">
				
          <div class="id_pw_box">
		  	<form action="/manager/login" id="login_form" method="post" role="form">
				<input class="manager_login"  name="managerId" type="text" maxlength="20" placeholder="아이디를 입력해 주세요." required="required" autocomplete="off">
				<input class="manager_login"  name="managerPw" type="password" maxlength="20" placeholder="비밀번호를 입력해 주세요." required="required" autocomplete="off">
				<input type="submit" value="로그인" />
				</form>
          </div>
					
          <hr />
          <div class="managerloginfunc_button_box">
										
          </div><!-- end managerloginfunc-button-box-->
					
			
      </div> <!-- end form-box -->
			</div> <!-- end login form-->
    </div> <!-- end login-box-->
			<!-- ./End Contact Form -->
		</div> <!--end outer-login-box-->
	</div> <!-- end container -->
  </div>
</main>
<%@include file="../layout/footer.jsp"%>