<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../layout/header.jsp"%>
<main id="main">
    <!-- 음료 팝업 시작 -->
    <div class="sArea_pop" id="pop02">
        <p class="btn_pop_close"><a href="javascript:void(0);">닫기</a></p>
        <section class="sArea_pop_inner">
            <!-- 내용 -->
            <div id="landing_wrap">
                <div class="landing_inner_wrap">
                    <header class="landing_ttl">
                        <p class="en">MY FAVORITE DRINK</p>
                        <h1>레몬 진저 &amp; 망고 젤리 피지오</h1>
                    </header>
                    <p class="calling_name_ttl">
                        <img alt="콜링네임" src="/images/calling_name_ttl.png">그란데 망고바나나 블랜디드
                    </p>
                    <p class="landing_comments_date">2021-08-04 17:35:25</p>
                    <div class="landing_conts_wrap">
                        <div class="landing_conts_img">
                            <img src="/images/망고바나나블랜디드.jpg">
                        </div>
                        <div class="landing_conts_txt">
                            <dl>
                                <dt>기본 음료</dt>
                                <dd>망고 바나나 블렌디드</dd>
                            </dl>														
                            <div class="btn_bev_info">
                                <p><a href="/menu/drink_view.do?product_cd=169001">음료 정보</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 내용 end -->
        </section>														
    </div> 
    <!-- 음료 팝업 end -->
</main>	
<%@include file="../layout/footer.jsp"%>