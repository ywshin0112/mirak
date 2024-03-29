<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/common/admin_hd.jsp"></jsp:include>
<div class="ftco-section admin-list">
   <div class="container">
      <div class="justify-content-center mb-3 pb-3">
         <div class="heading-section text-center">
            <h2>상품관리</h2>
            <p>상품관리 리스트 페이지 입니다.</p>
         </div>
      </div>
      <a href="/admin/productRegister" class="btn btn-primary mb-2">상품 추가</a>
      <div class="bd-example-snippet bd-code-snippet">
         <div class="bd-example">
            <table class="table table-hover table-bordered">
               <thead>
                  <tr>
                     <th scope="col" style="width:90px;">상품코드</th>
                     <th scope="col" style="width:90px;">이미지</th>
                     <th scope="col">상품명</th>
                     <th scope="col" style="width:90px;">상품가격</th>
                     <th scope="col">상품설명</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach items="${productList}" var="product">
                     <tr>
                        <td>${product.pro_code }</td>
                        <td><a href="/admin/product/${curPage}/${product.pro_code}">
                              <img alt="${product.pro_desc2}"
                              src="${path}/resources/images/product/${product.pro_image}"
                              style="width: 70px;" title="${product.pro_name}">
                        </a></td>
                        <td><a href="/admin/product/${curPage}/${product.pro_code}">${product.pro_name }</a></td>
                        <td>${product.pro_price }</td>
                        <td>${product.pro_desc2}</td>
                     </tr>
                  </c:forEach>
               </tbody>
            </table>
         </div>
      </div>
      <div class="row mt-5">
         <div class="col text-center">
            <div class="block-27">
               <ul>
                  <!-- 이전페이지 버튼 -->
                  <c:if test="${pageMaker.prev}">
                     <li class="pageInfo_btn next"><a href="/admin/products/${pageMaker.startPage-1}">&lt;</a></li>
                  </c:if>
                  <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                  	<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="/admin/products/${num}">${num}</a></li>
                  </c:forEach>
                  <!-- 다음페이지 버튼 -->
                  <c:if test="${pageMaker.next}">
                     <li class="pageInfo_btn next"><a href="/admin/products/${pageMaker.endPage + 1 }">&gt;</a></li>
                  </c:if>
               </ul>
            </div>
         </div>
      </div>
   </div>
</div>
<jsp:include page="/common/admin_ft.jsp"></jsp:include>