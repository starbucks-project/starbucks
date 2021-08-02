  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<main id="main">
<!-- LoginForm -->
	<div class="page_box">
		<div class="login_title_box">
			<!-- section title -->
			<div class="login_title">
			  <div class="title text-center" >
				  <h2>로그인</h2>				
			  </div>     
			</div> <!-- end login-title -->
			<!-- /section title -->
		</div>	
        <div class="outer_login_box">
			<div class="login_box">
					<div class="login_form" >
						<p class="greeting_box">
							<span class="welcome">Welcome!</span><br class="for_mob" /> 스타벅스커피 코리아에 오신 것을 환영합니다.
						</p>
						<div class="form_box">
							
								<hr>
								<div class="kakaologin_button" onclick="kakaoLogin()">
									<a href="javascript:void(0)">
									<img src="../images/kakao_login_large_narrow.png">
									<a>
								</div> <!-- end kakaologin-button-->
								<hr />
								<div class="login_warn_box">
									<p class="login_warn t_006633">
										* 타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다.<br>
										* 스타벅스 커피 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.
									</p>
								</div> <!-- end login-warn-box -->
								<hr />
								<div class="managerlogin_button_box">
									<a class="managerlogin_button" href="/auth/manager/login">관리자 로그인</a>						
								</div> <!-- end managerlogin-button-box -->						
							
						</div> <!-- end form-box -->
					</div> <!-- end login form-->
			</div> <!-- end login-box-->
		</div> <!--end outer-login-box-->
	</div> <!-- end page-box -->
</main>
<%@include file="../layout/footer.jsp"%>