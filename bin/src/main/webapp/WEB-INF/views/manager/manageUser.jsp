<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<main id="main">
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
            <form onsubmit="searchByName()">
            <div class="search-input-box">
                <input id="name" type="text" name="name" placeholder="검색어를 입력해주세요." />
            </div>
            <div class="search-btn-box">
                <input type="submit" name="search_btn" value="검색"/>
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
                    <c:forEach var="user" items="${usersEntity.content}">
                    <tr>     
                        <td>${user.id}</td>     
                        <td class="left"><a>${user.name}</a></td>     
                        <td>${user.email}</td>     
                        <td>${user.createDate}</td> 
                        <td>0</td>
                    </tr>
                    </c:forEach>
            </table>
        </div>  <!-- end user-list-area-box-->

    </div> <!-- end bottom-area -->
    <div class="pagination-box">
        <ul class="pagination">
        <c:choose>
        <c:when test="${usersEntity.number==0 && usersEntity.totalPages == 1}">
            <li class="page-item disabled"><a class="page-link" href="?page=${usersEntity.number-1}">Previous</a></li>
            <li class="page-item disabled"><a class="page-link" href="?page=${usersEntity.number+1}">Next</a></li>
        </c:when>
        <c:when test="${usersEntity.number==0 && usersEntity.totalPages != 1}">
            <li class="page-item disabled"><a class="page-link" href="?page=${usersEntity.number-1}">Previous</a></li>
            <li class="page-item"><a class="page-link" href="?page=${usersEntity.number+1}">Next</a></li>
        </c:when>
        <c:when test="${usersEntity.number== usersEntity.totalPages - 1}">
            <li class="page-item"><a class="page-link" href="?page=${usersEntity.number-1}">Previous</a></li>
            <li class="page-item disabled"><a class="page-link" href="?page=${usersEntity.number+1}">Next</a></li>
        </c:when>
        <c:otherwise>
            <li class="page-item"><a class="page-link" href="?page=${usersEntity.number-1}">Previous</a></li>
            <li class="page-item"><a class="page-link" href="?page=${usersEntity.number+1}">Next</a></li>
        </c:otherwise>
        </c:choose>
          </ul>
          
    </div>
</div> <!-- end manageUser-page-box-->
</div> <!-- end div -contatiner-->
</main>
<%@include file="../layout/footer.jsp"%>