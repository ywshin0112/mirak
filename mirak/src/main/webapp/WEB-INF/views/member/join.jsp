<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/common/client_hd.jsp"></jsp:include>
<div class="hero-wrap hero-bread"
	style="background-image: url('${path}/resources/images/bg_1.jpg');">
	<div class="container">
		<div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-0 bread">회원가입</h1>
			</div>
		</div>
	</div>
</div>
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-7 ftco-animate">
				<form action="/join" method="post" onsubmit="return Duplicate()"
					class="billing-form">
					<div class="row align-items-end">
					
						<c:choose>
							<c:when test="${not empty member.mem_isapi}">
								<input type="hidden" name="mem_pw" class="form-control" id="pw" value="${member.mem_pw }" readonly="readonly">
								<input type="hidden" name="mem_isapi" class="form-control" value="${member.mem_isapi}" readonly="readonly">
								
								<div class="col-md-12">
									<div class="form-group">
										<label for="id">이메일(ID)</label>
										<div class="row">
											<div class="col-sm-12">
												<input type="email" name="mem_id" id="id" class="form-control emaill mail_input" 
																	placeholder="이메일(ID)" value="${member.mem_id }" required="required" readonly="readonly">
											</div>
										</div>
									</div>
								</div>
							</c:when>
							
							<c:otherwise>
								<div class="col-md-12">
									<div class="form-group">
										<label for="id">이메일(ID)</label>
										<div class="row mb-2">
											<div class="col-sm-9">
												<input type="email" name="mem_id" id="id" class="form-control emaill mail_input"
																	placeholder="이메일(ID)" value="${member.mem_id }" required tabindex="1" autofocus="autofocus">
											</div>
											
											<div class="col-sm-3"> 
												<button type="button" tabIndex="2" class="btn btn-primary joinBtn mb-3" id="idCheck" value="N" onclick="return fn_idCheck();">중복확인</button>
												<span id="idCheckmsg"></span>
											</div>
										</div>
										
										<div class="row">
											<div class="col-sm-9 mail_check_wrap">
												<div class="mail_check_input_box" id="mail_check_input_box_false">
													<input class="form-control" tabIndex="4" id="mail_check_input" disabled="disabled" placeholder="인증번호 6자리를 입력해주세요!" maxlength="6">
													<div class="clearfix"></div>
													<span id="mail_check_input_box_warn"></span>
												</div>
											</div>
											<div class="col-sm-3">
												<button type="button" tabIndex="3" id="mail_check_button" class="form-control mb-2 doubleChk">인증번호발송</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="pw">비밀번호</label> 
										<input type="password" tabIndex="5" name="mem_pw" class="form-control" id="pw"
																				onchange="check_pw()" placeholder="비밀번호" required="required" value="${member.mem_pw }">
									</div>
									<div class="form-group">
										<label for="pw2">비밀번호 확인</label> 
										<input type="password" tabIndex="6" class="form-control" id="pw2" onchange="check_pw()" placeholder="비밀번호 확인" required="required">
											<span id="check"></span>
										</div>
									</div>
							    </c:otherwise>
							</c:choose>
							<div class="w-100"></div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="firstname">이름</label> 
									<input type="text" name="mem_name" id="name" tabIndex="7" class="form-control" placeholder="이름을 입력해주세요" value="${member.mem_name }" required="required" >
								</div>
							</div>
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="age">나이</label> 
									<input type="text" name="mem_age" tabIndex="8" id="age" class="form-control" placeholder="나이를 입력해주세요" value="${member.mem_age }" required="required">
								</div>
							</div>
	
							<div class="w-100"></div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="gender">성별</label>
									<div>
										<input type="radio" name="mem_gender" value="1" checked tabIndex="9"> 남
										&nbsp;&nbsp;&nbsp; 
										<input type="radio" name="mem_gender" value="2" tabIndex="10"> 여

									</div>
								</div>
						</div>
						<div class="w-100"></div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="phone">Phone</label>
								<input type="text" name="mem_phone" id="phone" class="form-control" placeholder=" ' - ' 빼고 입력해주세요 " required="required"value="${member.mem_phone}" maxlength="11" pattern="[0-9]{11}">
							</div>
						</div>

						<div class="w-100"></div>
						<div class="col-md-12">
							<div class="form-group">
								<label for="streetaddress">주소</label>
								<div class="row mb-4">
									<div class="col-sm-8">
										<input type="text" class="form-control" id="address_input_1" name="mem_zipcode" placeholder="우편번호" required="required" onkeydown="event.preventDefault();" autocomplete="off">
									</div>
									<div class="col-sm-4">
										<button type="button" class="btn btn-primary joinBtn address button" tabIndex="12" onclick="execution_daum_address();">우편번호찾기</button>
									</div>
								</div>
								
								<input type="text" id="address_input_2" class="form-control mb-4" name="mem_add1" placeholder="주소지를 입력해주세요" readonly="readonly">
								<input type="text" id="address_input_3" class="form-control" name="mem_add2" tabIndex="13" placeholder="상세주소를 작성해주세요" readonly>
							</div>
						</div>

						<div class="w-100 mb-5"></div>
					</div>
					<div class="row mb-5">
						<div class="col-md-6">
							<input type="submit" value="회원가입" id="joinSubmit" class="btn btn-primary py-3 px-5 w-100" onclick="return checkAll();">
						</div>
						<div class="col-md-6">
							<a href="/" class="btn btn-secondary py-3 px-5 w-100" tabIndex="15">가입취소</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<jsp:include page="/common/client_ft.jsp"></jsp:include>

<script>
	$(document).ready(function() {
		console.log($("button[id='idCheck']").val() == "N");
		console.log("message : " + "${message}");
		console.log("mem_id : " + "${mem_id}");
		if ("${message}" != "") {
			alert("${message}");
<%session.setAttribute("message", "");%>
	}
	})

	function Duplicate() {
		if ($("button[id='idCheck']").val() == "N") {
			alert('아이디 중복 확인을 해주세요.');
			$("input[name='checked_id']").eq(0).focus();
			return false;
		}

		return true;
	}
</script>


<script>
	const verificationCodeInput = document.getElementById("mail_check_input");

	function injungkeyForm() {
		if (verificationCodeInput.value === "") {
			alert("인증번호를 입력해주세요.");
			return false;
		}
		return true;
	}
</script>

<script>
	const IDCHECK = document.getElementById("id");
	function IDCHECKFORM() {
		if (IDCHECK.value === "") {
			alert("아이디를 입력해주세요");
			return false;
		}
		return true;
	}

	const PWCHECK = document.getElementById("pw");
	function PWCHECKFORM() {
		if (PWCHECK.value === "") {
			alert("비밀번호를 입력해주세요");
			return false;
		}
		return true;
	}

	const PW2CHECK = document.getElementById("pw2");
	function PW2CHECKFORM() {
		if (PW2CHECK.value === "") {
			alert("비밀번호 확인 입력해주세요");
			return false;
		}
		return true;
	}

	const NAMECHECK = document.getElementById("name");
	function NAMECHECKFORM() {
		if (NAMECHECK.value === "") {
			alert("이름을	입력해주세요");
			return false;
		}
		return true;
	}

	const AGECHECK = document.getElementById("age");
	function AGECHECKFORM() {
		if (AGECHECK.value === "") {
			alert("나이를 입력해주세요");
			return false;
		}
		return true;
	}

	const PHONECHECK = document.getElementById("phone");
	function PHONECHECKFORM() {
		if (PHONECHECK.value === "") {
			alert("휴대폰번호를 입력해주세요");
			return false;
		}
		return true;
	}

	const ADDERSSCHECK = document.getElementById("address_input_1");
	function ADDERSSCHECKFORM() {
		if (ADDERSSCHECK.value === "") {
			alert("주소를 입력해주세요");
			return false;
		}
		return true;
	}
</script>



<script>
	function checkAll() {

		if (IDCHECK.value === "") {
			alert("아이디를 입력해주세요");
			return false;

		} else if ($("button[id='idCheck']").val() == "N") {
			alert('아이디 중복 확인을 해주세요.');
			$("input[name='checked_id']").eq(0).focus();
			return false;

		} else if (verificationCodeInput.value === "") {
			alert("인증번호를 입력해주세요.");
			return false;

		} else if (PWCHECK.value === "") {
			alert("비밀번호를 입력해주세요");
			return false;

		} else if (PW2CHECK.value === "") {
			alert("비밀번호 확인 입력해주세요");
			return false;

		} else if (NAMECHECK.value === "") {
			alert("이름을 입력해주세요");
			return false;

		} else if (AGECHECK.value === "") {
			alert("나이를 입력해주세요");
			return false;

		} else if (PHONECHECK.value === "") {
			alert("휴대폰번호를 입력해주세요");
			return false;

		}else if (ADDERSSCHECK.value === "") {
			alert("주소를 입력해주세요");
			return false;
		}
		return true;
	}
</script>


