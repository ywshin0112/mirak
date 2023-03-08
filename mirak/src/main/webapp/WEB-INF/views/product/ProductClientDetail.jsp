<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/common/client_hd.jsp"></jsp:include>

<div class="hero-wrap hero-bread"
	style="background-image: url('${path}/resources/images/bg_1.jpg');">
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<p class="breadcrumbs">
					<span class="mr-2"><a href="index.html">Home</a></span> <span
						class="mr-2"><a href="index.html">Product</a></span> <span>Product
						Single</span>
				</p>
				<h1 class="mb-0 bread">Product Single</h1>
			</div>
		</div>
	</div>
</div>

<form method="post">
<section class="ftco-section">
	<div class="container">
		<div class="row">
		<input type="hidden" name="pro_code" value="pro_code">

			<div class="col-lg-6 mb-5 ftco-animate">
				<a href="${path}/resources/images/product/${product.pro_image}"
					class="image-popup"><img alt="1"
					src="${path}/resources/images/product/${product.pro_image}" style="width:350px; height:250px;"></a>
			</div>
			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
				<h3>${product.pro_name}</h3>

				<p class="price">
					 <span>가격: ${product.pro_price}</span>
				</p>
				<p>${product.pro_desc}</p>


				<div class="row mt-4">


					<div class="input-group col-md-6 d-flex mb-3">
						<input type="text" id="quantity" name="pro_cnt"
							class="form-control input-number" min="1" max="100" placeholder="수량을 입력하세요">

					</div>
					
					총 가격 : ${product.pro_price * pro_cnt} 

			


				</div>
				<br><br>
				<p>
<!-- 					<a href="" class="btn btn-black py-3 px-5">장바구니</a> &nbsp; &nbsp; &nbsp; -->
<!-- 					<a href="" class="btn btn-black py-3 px-5">즉시구매</a> -->
						<input type="button" formaction="cartList" value="장바구니" class="btn btn-black py-3 px-5">
						<input type="button" formaction="pay" value="즉시 구매" class="btn btn-black py-3 px-5">
				</p>
			</div>
		</div>
	</div>

</section>
</form>


<jsp:include page="/common/client_ft.jsp"></jsp:include>

</body>
</html>