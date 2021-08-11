<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<main id="main">
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
        <div class="top_box">
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
                <input type="button" name="search-btn" value="검색"/>
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
                        <th scope="col">No.</th>
                        <th scope="col">구매자</th>
                        <th scope="col">상품명</th>
                        <th scope="col">구매 날짜</th>
                        <th scope="col">상품 가격</th>
                        <th scope="col">상품 수량</th>
                    </tr>
                </thead>
                <tbody id="notice">
                    <c:forEach var="saleditems" items="${saleditemsEntity}">
                    <tr>     
                        <td>${saleditems.id}</td>     
                        <td>${saleditems.user.name}</td>
                        <td class="left"><a>${saleditems.cart.product.productName}</a></td>     
                        <td>${saleditems.date}</td>     
                        <td>4,100</td> 
                        <td>1</td>
                    </tr>
                    </c:forEach>
                    
                    <tr class="last-tr">      
                        <td>No</td>     
                        <td>구매자</td>
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
            <li class="page-item"><a class="page-link" href="?page=${saledItems.number-1}">Previous</a></li>
            <li class="page-item"><a class="page-link" href="?page=${saledItems.number+1}">Next</a></li>
          </ul>
    </div>
</div> <!-- end manageUser-page-box-->
</div> <!-- end div -contatiner-->
</main>
<%@include file="../layout/footer.jsp"%>