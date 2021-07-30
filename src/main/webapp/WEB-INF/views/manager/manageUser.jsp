<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<div class="manage-User-container">
<!-- LoginForm -->
	<div class="manageUser-page-box">
		<!-- section title -->
		<div class="manageUser-title-box">
		<div class="manageUser-title" >
			<a><strong>회원관리</strong></a>				
		</div> <!-- end userinfo-title-box-->
		</div> <!-- end userinfo-title-->
		<!-- /section title -->
        <hr />   
        <div class="manageUser-bottom-area">
        
        <div class="search-area-box">
            <form>
            <div class="search-input-box">
                <input type="text" name="search" placeholder="검색어를 입력해주세요." />
            </div>
            <div class="search-btn-box">
                <input type="button" name="search_btn" value="검색"/>
            </div>
            </form>
        </div> <!-- end search-area-box-->

        <div class="user-list-area-box">
            <table class="userlist-tb">
                <colgroup>
                    <col width="10%">
                    
                    <col width="20%">
                    <col width="40%">
                    <col width="20%">
                    <col width="*">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">No.</th>
                        <th scope="col">이름</th>
                        <th scope="col">이메일</th>
                        <th scope="col">가입날짜</th>
                        <th scope="col">충전액</th>
                    </tr>
                </thead>
                <tbody id="notice">
                    <tr>     
                        <td>01</td>     
                        <td class="left"><a>홍길동</a></td>     
                        <td>hong@google.com</td>     
                        <td>2021-07-23</td> 
                        <td>20,000</td>
                    </tr>
                    <tr>     
                        <td>02</td>     
                        <td class="left"><a>김철수</a></td>     
                        <td>kim@google.com</td>     
                        <td>2019-08-09</td> 
                        <td>50,000</td>
                    </tr>
                    <tr>     
                        <td>03</td>     
                        <td class="left"><a>김영희</a></td>     
                        <td>hee@google.com</td>     
                        <td>2012-01-26</td> 
                        <td>10,000</td>
                    </tr>
                    <tr>     
                        <td>04</td>     
                        <td class="left"><a>최원희</a></td>     
                        <td>choi@naver.com</td>     
                        <td>2021-03-24</td> 
                        <td>100,000</td>
                    </tr>
                    <tr>     
                        <td>05</td>     
                        <td class="left"><a>박다정</a></td>     
                        <td>park@google.com</td>     
                        <td>2018-05-18</td> 
                        <td>30,000</td>
                    </tr>
            </table>
        </div>  <!-- end user-list-area-box-->

    </div> <!-- end bottom-area -->
    <div class="pagination-box">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
          </ul>
    </div>
</div> <!-- end manageUser-page-box-->
</div> <!-- end div -contatiner-->
<%@include file="../layout/footer.jsp"%>