  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>

<!-- LoginForm -->
	<div class="page-box">
    
			<!-- section title -->
			<div class="login-title">
			  <div class="title text-center" >
				  <h2>로그인</h2>				
			  </div>     
			</div> <!-- end login-title -->
			<!-- /section title -->
			
      <div class="outer-login-box">

        
				<div class="login-box">
					<div class="login-form" >
						<p class="greeting-box">
							<span class="welcome">Welcome!</span><br class="for_mob" /> 스타벅스커피 코리아에 오신 것을 환영합니다.
						</p>
						<div class="form-box">
							<form id="contact-form" method="post" role="form">
								<hr>
								<div class="kakaologin-button">
									<img src="../images/kakao_login_large_narrow.png">
								</div> <!-- end kakaologin-button-->
								<hr />
								<div class="login-warn-box">
									<p class="login-warn t_006633">
										* 타 사이트와 비밀번호를 동일하게 사용할 경우 도용의 위험이 있으므로, 정기적인 비밀번호 변경을 해주시길 바랍니다.<br>
										* 스타벅스 커피 코리아의 공식 홈페이지는 Internet Explorer 9.0 이상, Chrome, Firefox, Safari 브라우저에 최적화 되어있습니다.
									</p>
								</div> <!-- end login-warn-box -->
								<hr />
								<div class="managerlogin-button-box">
									<a class="managerlogin-button" href="/auth/manager/login">관리자 로그인</a>						
								</div> <!-- end managerlogin-button-box -->						
							</form>
						</div> <!-- end form-box -->
					</div> <!-- end login form-->
			</div> <!-- end login-box-->
		</div> <!--end outer-login-box-->
	</div> <!-- end page-box -->

<%@include file="../layout/footer.jsp"%>