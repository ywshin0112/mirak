<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/common/client_hd.jsp"></jsp:include>
<div class="hero-wrap hero-bread"
	style="background-image: url('${path}/resources/images/bg_3.jpg');">
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-0 bread">마이 페이지</h1>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10 ftco-animate">
				<div class="row mb-5">
					<ul class="nav nav-tabs w-100">
						<li class="nav-item"><a class="nav-link active"
							href="/mypage">마이페이지</a></li>
						<li class="nav-item"><a class="nav-link" href="/cart">장바구니</a></li>
						<li class="nav-item"><a class="nav-link" href="/payInfo">결제내역</a></li>
					</ul>
				</div>

				<form action="apiMemupdate" method="post" class="contact-form billing-form" id="delForm" onsubmit="return confirmUpdateApiMember();">
					<input type="hidden" name="mem_pw" id="mem_pw" class="form-control" value="${member.mem_pw }" readonly="readonly">
					<h3 class="mb-4 billing-heading">회원정보 수정</h3>
					<div class="row align-items-end">
						<div class="col-md-12">
							<div class="form-group">
								<label for="mem_id">아이디</label> 
								<input type="text" name="mem_id" id="mem_id" class="form-control" placeholder="이메일(ID)" required="required" value="${member.mem_id }" readonly>
								<c:choose>
									<c:when test="${member.mem_isapi == 'google'}">
										Google 빠른로그인 회원입니다
			                        </c:when>
									<c:when test="${member.mem_isapi == 'naver' }">
										Naver 빠른로그인 회원입니다
									</c:when>
									<c:when test="${member.mem_isapi == 'kakao' }">
										Kakao 빠른로그인 회원입니다
									</c:when>
									<c:otherwise> 
										일반 회원입니다.
									</c:otherwise>
								</c:choose>
							</div>
							<c:choose>
								<c:when test="${empty member.mem_isapi}">
									<div class="form-group">
										<div class="row">
											<div class="col-sm-12">
												<label for="rawPw">비밀번호</label>
											</div>
											<div class="col-sm-9" style="padding-top: 0 !important;">
												<input type="password" name="rawPw" class="form-control" id="rawPw" placeholder="비밀번호를 입력해주세요" required="required">
											</div>
											<div class="col-sm-3" style="padding-top: 0 !important;">
												<button type="button" class="btn btn-primary joinBtn mb-3" data-toggle="modal" data-target="#pwUpdate">비밀번호 변경</button>
											</div>
										</div>
									</div>
								</c:when>
							</c:choose>
						</div>

						<div class="w-100"></div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="mem_name">이름</label> 
								<input type="text" name="mem_name" id="mem_name" class="form-control" placeholder="이름을 입력해주세요" value="${member.mem_name }" readonly="readonly">
							</div>
						</div>

						<div class="w-100"></div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="mem_age">나이</label> 
								<input type="text" name="mem_age" id="mem_age" class="form-control" placeholder="나이를 입력해주세요" required="required" value="${member.mem_age }">
							</div>
						</div>

						<div class="w-100"></div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="gender">성별</label>
								<div>
									<c:choose>
										<c:when test="${member.mem_gender == '1'}">
											<input type="radio" id="gender" name="mem_gender" value="1" checked> 남
                                        	&nbsp;&nbsp;&nbsp; 
                                         	<input type="radio" name="mem_gender" value="2"> 여
                                         </c:when>
										<c:when test="${member.mem_gender == '2' }">
											<input type="radio" id="gender" name="mem_gender" value="1"> 남
                                            &nbsp;&nbsp;&nbsp; 
                                            <input type="radio" name="mem_gender" value="2" checked> 여
                                       </c:when>
									</c:choose>
								</div>
							</div>
						</div>

						<div class="w-100"></div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="mem_phone">Phone</label> 
								<input type="text" name="mem_phone" id="mem_phone" class="form-control" placeholder=" ' - ' 빼고 입력해주세요 " required="required" value="${member.mem_phone }" maxlength="11" pattern="[0-9]{11}">
							</div>
						</div>

						<div class="w-100"></div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="address_input_1">주소</label>
								<div class="row mb-4">
									<div class="col-sm-8">
										<input type="text" class="form-control" id="address_input_1" name="mem_zipcode" placeholder="주소지를 입력해주세요" value="${member.mem_zipcode }" readonly="readonly">
									</div>
									<div class="col-sm-4">
										<button type="button" class="btn btn-primary joinBtn address button" onclick="execution_daum_address();">우편번호찾기</button>
									</div>
								</div>
								<input type="text" class="form-control mb-4" readonly="readonly" id="address_input_2" placeholder="주소작성" readonly="readonly" value="${member.mem_add1 }" name="mem_add1"> 
								<input type="text" class="form-control" placeholder="상세주소작성" id="address_input_3" value="${member.mem_add2 }" readonly="readonly" name="mem_add2">
							</div>
						</div>

						<div class="w-100 mt-5"></div>
						<div class="col-md-6 text-center">
							<c:choose>
								<c:when test="${not empty member.mem_isapi}">
									<input type="submit" value="수정하기" class="btn btn-primary py-3 px-5">
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-primary py-3 px-5" onclick="confirmUpdateMember();">수정하기</button>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-md-6 text-center">
							<button type="button" id="submit" class="btn btn-secondary py-3 px-5 l-100" data-toggle="modal" data-target="#exampleModal">회원탈퇴</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<form action="memdelete" method="post">
		<div class="modal fade" id="exampleModal" tabindex="9999"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">탈퇴 하시겠습니까?</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						회원탈퇴시 모든 정보가 삭제됩니다. 비밀번호를 입력해 주세요. <input type="password" class="form-control" id="pw_1" required="required">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="memberCheck"
							onclick="confirmDeleteMem();">탈퇴하기</button>
					</div>
				</div>
			</div>
		</div>
	</form>

	<!-- Modal -->
	<form action="pwUpdate" method="post">
		<div class="modal fade" id="pwUpdate" tabindex="9999"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">비밀번호 변경</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="befo_pw">기존 비밀번호</label> 
							<input type="password" name="befo_pw" id="befo_pw" class="form-control" placeholder="기존 비밀번호를 입력해주세요">
						</div>
						<div class="form-group">
							<label for="new_pw">변경 할 비밀번호</label> 
							<input type="password" name="new_pw" id="new_pw" class="form-control" placeholder="새로운 비밀번호를 입력해주세요">
						</div>
						<div class="form-group">
							<label for="new_pw_chk">변경 할 비밀번호 확인</label> 
							<input type="password" name="new_pw_chk" id="new_pw_chk" class="form-control" placeholder="새로운 비밀번호를 입력해주세요">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" onclick="confirmUpdatePw();">수정하기</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</section>
<jsp:include page="/common/client_ft.jsp"></jsp:include>
<script>	
	function confirmUpdateApiMember() {
		if (confirm("회원정보를 수정하시겠습니까?")) {
			alert("회원 수정 되었습니다.");
			return true;
		} else {
			return false;
		}
	}
	
	function confirmUpdateMember() {
		var gender = $('input[name=mem_gender]:checked').val();
		if (confirm("회원정보를 수정하시겠습니까?")) {
			$.ajax({
				url : "/memupdate",
				type : "POST",
				dataType : "JSON",
				data : {
					"mem_id" : $("#mem_id").val(),
					"rawPw" : $("#rawPw").val(),
					"mem_pw" : $("#mem_pw").val(),
					"mem_name" : $("#mem_name").val(),
					"mem_age" : $("#mem_age").val(),
					"mem_gender" : gender,
					"mem_phone" : $("#mem_phone").val(),
					"mem_zipcode" : $("#address_input_1").val(),
					"mem_add1" : $("#address_input_2").val(),
					"mem_add2" : $("#address_input_3").val()
				},
				success : function(data) {
					if (data == "0") {
						alert("비밀번호가 틀렸습니다.");
						document.getElementById('rawPw').value = '';
						document.getElementById('rawPw').focus();
					} else if (data == "1") {
						alert("회원 수정 되었습니다.");
						location.href = "/mypage";
					}
				}
			});
			return true;
		} else {
			return false;
		}
	}
	
	function confirmUpdatePw() {
		if (confirm("비밀번호를 수정하시겠습니까?")) {
			$.ajax({
				url : "/updatePw",
				type : "POST",
				dataType : "JSON",
				data : {
					"mem_id" : $("#mem_id").val(),
					"mem_pw" : $("#mem_pw").val(),
					"befo_pw" : $("#befo_pw").val(),
					"new_pw" : $("#new_pw").val()
				},
				success : function(data) {
					if (data == "0") {
						alert("기존 비밀번호가 틀렸습니다.");
						document.getElementById('befo_pw').value = '';
						document.getElementById('befo_pw').focus();
					} else if (data == "1") {
						alert("비밀번호가 수정 되었습니다.");
						location.href = "/mypage";
					}
				}
			});
			return true;
		} else {
			return false;
		}
	}
	
	
	//회원탈퇴
	function confirmDeleteMem() {
		if (pw_1.value == "") {
			alert("비밀번호를 입력해주세요");
		} else {
			$.ajax({
				url : "/memdelete",
				type : "POST",
				dataType : "JSON",
				data : {
					"mem_id" : $("#mem_id").val(),
					"mem_pw" : $("#mem_pw").val(),
					"rawPw" : $("#pw_1").val()
				},
				success : function(data) {
					if (data == "0") {
						alert("비밀번호가 틀렸습니다.");
						document.getElementById('pw_1').value = '';
					} else if (data == "1") {
						alert("회원탈퇴 되었습니다.");
						location.href = "/";
					}
				}
			});
		}
	}
</script>