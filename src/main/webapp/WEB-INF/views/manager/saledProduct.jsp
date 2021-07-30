<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<div class="manage-User-container">
<!-- LoginForm -->
	<div class="manageUser-page-box">
		<!-- section title -->
		<div class="manageUser-title-box">
		<div class="manageUser-title" >
			<a><strong>판매현황</strong></a>				
		</div> <!-- end userinfo-title-box-->
		</div> <!-- end userinfo-title-->
		<!-- /section title -->
        <hr />   
        <div class="manageUser-bottom-area">
        <div class="top-box">
        <div class="category-area-box">
            <div class="category-box">
                <select class="category-select">
                    <option value="">--카테고리--</option>
                    <option value="drink">Drink</option>
                    <option value="food">Food</option>
                    <option value="product">Product</option>
                </select>
            </div> <!-- end cateogry-box-->
        </div> <!-- end search-area-box-->

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

    </div>

        <div class="user-list-area-box">
            <table class="userlist-tb">
                <colgroup>
                    <col width="10%">
                    
                    <col width="20%">
                    <col width="30%">
                    <col width="20%">
                    <col width="*">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">고객 번호</th>
                        <th scope="col">상품명</th>
                        <th scope="col">구매 날짜</th>
                        <th scope="col">상품 가격</th>
                        <th scope="col">상품 수량</th>
                    </tr>
                </thead>
                <tbody id="notice">
                    <tr>     
                        <td>01</td>     
                        <td class="left"><a>아메리카노</a></td>     
                        <td>2021-07-18</td>     
                        <td>4,100</td> 
                        <td>1</td>
                    </tr>
                    <tr>     
                        <td>02</td>     
                        <td class="left"><a>카페라떼</a></td>     
                        <td>2021-07-21</td>     
                        <td>5,200</td> 
                        <td>3</td>
                    </tr>
                    <tr>     
                        <td>03</td>     
                        <td class="left"><a>카페모카</a></td>     
                        <td>2021-07-21</td>     
                        <td>4,800</td> 
                        <td>1</td>
                    </tr>
                    <tr>     
                        <td>04</td>     
                        <td class="left"><a>에스프레소</a></td>     
                        <td>2021-07-28</td>     
                        <td>3,200</td> 
                        <td>2</td>
                    </tr>
                    <tr>     
                        <td>05</td>     
                        <td class="left"><a>디카페인 아메리카노</a></td>     
                        <td>2021-07-28</td>     
                        <td>4,500</td> 
                        <td>2</td>
                    </tr>
                    <tr class="last-tr">     
                        <td>고객번호</td>     
                        <td>상품명</td>     
                        <td>구매일</td>     
                        <td>총 액 : 21,800</td> 
                        <td>총 판매수량 : 9</td>
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