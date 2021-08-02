<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../layout/header.jsp"%>
<main id="main">
<div class="container">
<!-- LoginForm -->
	<div class="saveProduct-page-box">
			<!-- section title -->
			<div class="userinfo-title-box">
			<div class="userinfo-title" >
				<a><strong>상품 등록</strong></a>				
			</div> <!-- end userinfo-title-box-->
			</div> <!-- end userinfo-title-->
			<!-- /section title -->
            
            <div class="bottom-area">
                <hr />
            <form>
            <div class="category-box">
                <select class="category-select">
                    <option value="">--카테고리--</option>
                    <option value="drink">Drink</option>
                    <option value="food">Food</option>
                    <option value="product">Product</option>
                </select>
            </div> <!-- end cateogry-box-->

            <div class="productImageupload-box">
                <div class="productImage-box">
                    <div class="productImage">
                        <a>제품 이미지</a>
                    </div>
                </div> <!-- end productImage-->

                <div class="imageupload-btn-box">
                    <div class="imageupload-btn">
                        <button>이미지 업로드</button>
                    </div> <!-- end imageupload-btn-->
                    <div class="imagefile-box">
                        <input type="text" name="imagePath" value="이미지경로" readonly/>
                    </div>
                </div> <!-- end imageupload-btn-box-->
            </div> <!-- end productImageupload-box-->

            <div class="product-name-area-box">
                <div class="product-title-box">
                    <a>제품 이름</a>
                </div>
                <div class="product-name-input-box">
                    <input type="text" name="productName" placeholder="제품 이름을 입력하세요." />
                </div>
                <div class="product-title-box">
                    <a>제품 영문 이름</a>
                </div>
                <div class="product-name-input-box">
                    <input type="text" name="productName" placeholder="제품 영문 이름을 입력하세요." />
                </div>
            </div> <!-- end product-name-area-box-->
            
            <div class="product-detail-area-box">
                <div class="product-title-box">
                    <a>제품 상세 설명</a>
                </div>
                <div class="product-content-box">
                    <textarea  name="productDetail" cols="60" rows="10" placeholder="제품 상세 설명을 입력해주세요.">  
                    </textarea>
                </div>
            </div> <!-- end product-detail-area-box-->

            <div class="product-nutrition-area-box">
                <div class="product-title-box">
                    <a>제품 영양 정보</a>
                </div>
                <div class="product-nuturition-box">
                <table class="nuturition_tb">
                    <tr class="nuturition_tr">
                        <td class="nuturition_title">
                            <a>1회 제공량(kcal)</a>
                        </td>
                        <td class="nuturiton_input">
                            <input type="text" placeholder="1회제공량 입력">
                        </td>
                        <td class="nuturition_title_right">
                            <a>포화지방(g)</a>
                        </td>
                        <td class="nuturiton_input">
                            <input type="text" placeholder="포화지방 입력">
                        </td>
                    </tr>
                    <tr>
                        <td class="nuturition_title">
                            <a>단백질(g)</a>
                        </td>
                        <td class="nuturiton_input">
                            <input type="text" placeholder="단백질 입력">
                        </td>
                        <td class="nuturition_title_right">
                            <a>나트륨(g)</a>
                        </td>
                        <td class="nuturiton_input">
                            <input type="text" placeholder="나트륨 입력">
                        </td>
                    </tr>
                    <tr>
                        <td class="nuturition_title">
                            <a>당류(g)</a>
                        </td>
                        <td class="nuturiton_input">
                            <input type="text" placeholder="당류 입력">
                        </td>
                        <td class="nuturition_title_right">
                            <a>카페인(mg)</a>
                        </td>
                        <td class="nuturiton_input">
                            <input type="text" placeholder="카페인 입력">
                        </td>
                    </tr>
                    </table>
                </div>
            </div> <!-- end nutrition-detail-area-box-->

            <hr />

            <div>
                <div class="savebtn-box">
                    <a href="/manager">
                        <input type="button" name="saveBtn" value="등록">
                    </a>
                </div>
            </div>
        </form>
    </div>
</div>
</div> <!-- end div -contatiner-->
</main>
<%@include file="../layout/footer.jsp"%>