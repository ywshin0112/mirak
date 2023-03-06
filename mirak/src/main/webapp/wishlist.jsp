<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="./common/client_hd.jsp"></jsp:include>

	<div class="hero-wrap hero-bread"
		style="background-image: url('${path}/resources/images/bg_1.jpg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home</a></span> <span>Wishlist</span>
					</p>
					<h1 class="mb-0 bread">My Wishlist</h1>
				</div>
			</div>
		</div>
	</div>
	
	<section class="ftco-section ftco-cart">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div class="cart-list">
						<table class="table">
							<thead class="thead-primary">
								<tr class="text-center">
									<th>&nbsp;</th>
									<th>Product List</th>
									<th>&nbsp;</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Total</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">
									<td class="product-remove"><a href="#"><span
											class="ion-ios-close"></span></a></td>
	
									<td class="image-prod"><div class="img"
											style="background-image: url(${path}/resources/images/product-1.jpg);"></div></td>
	
									<td class="product-name">
										<h3>Bell Pepper</h3>
										<p>Far far away, behind the word mountains, far from the
											countries</p>
									</td>
	
									<td class="price">$4.90</td>
	
									<td class="quantity">
										<div class="input-group mb-3">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
	
									<td class="total">$4.90</td>
								</tr>
								<!-- END TR-->
	
								<tr class="text-center">
									<td class="product-remove"><a href="#"><span
											class="ion-ios-close"></span></a></td>
	
									<td class="image-prod"><div class="img"
											style="background-image: url(${path}/resources/images/product-2.jpg);"></div></td>
	
									<td class="product-name">
										<h3>Bell Pepper</h3>
										<p>Far far away, behind the word mountains, far from the
											countries</p>
									</td>
	
									<td class="price">$15.70</td>
	
									<td class="quantity">
										<div class="input-group mb-3">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
	
									<td class="total">$15.70</td>
								</tr>
								<!-- END TR-->
	
								<tr class="text-center">
									<td class="product-remove"><a href="#"><span
											class="ion-ios-close"></span></a></td>
	
									<td class="image-prod"><div class="img"
											style="background-image: url(${path}/resources/images/product-3.jpg);"></div></td>
	
									<td class="product-name">
										<h3>Bell Pepper</h3>
										<p>Far far away, behind the word mountains, far from the
											countries</p>
									</td>
	
									<td class="price">$15.70</td>
	
									<td class="quantity">
										<div class="input-group mb-3">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
	
									<td class="total">$15.70</td>
								</tr>
								<!-- END TR-->
	
								<tr class="text-center">
									<td class="product-remove"><a href="#"><span
											class="ion-ios-close"></span></a></td>
	
									<td class="image-prod"><div class="img"
											style="background-image: url(${path}/resources/images/product-4.jpg);"></div></td>
	
									<td class="product-name">
										<h3>Bell Pepper</h3>
										<p>Far far away, behind the word mountains, far from the
											countries</p>
									</td>
	
									<td class="price">$15.70</td>
	
									<td class="quantity">
										<div class="input-group mb-3">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
	
									<td class="total">$15.70</td>
								</tr>
								<!-- END TR-->
	
								<tr class="text-center">
									<td class="product-remove"><a href="#"><span
											class="ion-ios-close"></span></a></td>
	
									<td class="image-prod"><div class="img"
											style="background-image: url(${path}/resources/images/product-5.jpg);"></div></td>
	
									<td class="product-name">
										<h3>Bell Pepper</h3>
										<p>Far far away, behind the word mountains, far from the
											countries</p>
									</td>
	
									<td class="price">$15.70</td>
	
									<td class="quantity">
										<div class="input-group mb-3">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
	
									<td class="total">$15.70</td>
								</tr>
								<!-- END TR-->
	
								<tr class="text-center">
									<td class="product-remove"><a href="#"><span
											class="ion-ios-close"></span></a></td>
	
									<td class="image-prod"><div class="img"
											style="background-image: url(${path}/resources/images/product-6.jpg);"></div></td>
	
									<td class="product-name">
										<h3>Bell Pepper</h3>
										<p>Far far away, behind the word mountains, far from the
											countries</p>
									</td>
	
									<td class="price">$15.70</td>
	
									<td class="quantity">
										<div class="input-group mb-3">
											<input type="text" name="quantity"
												class="quantity form-control input-number" value="1" min="1"
												max="100">
										</div>
									</td>
	
									<td class="total">$15.70</td>
								</tr>
								<!-- END TR-->
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<jsp:include page="./common/client_ft.jsp"></jsp:include>
	
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
								<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
								<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
							</svg>
	</div>
	
	<script src="${path}/resources/js/jquery.min.js"></script>
	<script src="${path}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="${path}/resources/js/bootstrap.min.js"></script>
	<script src="${path}/resources/js/jquery.easing.1.3.js"></script>
	<script src="${path}/resources/js/jquery.waypoints.min.js"></script>
	<script src="${path}/resources/js/jquery.stellar.min.js"></script>
	<script src="${path}/resources/js/owl.carousel.min.js"></script>
	<script src="${path}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${path}/resources/js/aos.js"></script>
	<script src="${path}/resources/js/jquery.animateNumber.min.js"></script>
	<script src="${path}/resources/js/scrollax.min.js"></script>
	<script src="${path}/resources/js/main.js"></script>
</body>
</html>
