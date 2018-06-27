<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<title>My Page</title>

<style>
	#BtnDiv {
		margin:auto;
		margin-bottom: 10px;
	}
</style>
<script>
	$(function() {
		$("#modifyBtn").on("click",function() {
			alert("정보 수정이 완료되었습니다.");
		});
	})
</script>

<div class="container" style="margin-top:2%;max-width:500px;">
	<form:form modelAttribute="memberVO" action="/reservation/modifyOK" method="post" id="modifyForm">
	    <div class="card">
	        <div class="header pt-3 blue darken-1">
	            <div class="row d-flex justify-content-start">
	                <h3 class="deep-grey-text mt-3 mb-4 pb-1 mx-5" style="color:white;">Modify</h3>
	            </div>
	        </div>
	        <div class="card-body mx-4 mt-4">
	            <div class="md-form">
	                <form:input path="cemail" id="Form-email4" class="form-control" readOnly="readOnly"/>
	                <label for="Form-email4">Your email</label>
	            </div>
	            <div class="md-form">
		            <input type="password" name="cpasswd" id="Form-pass4" class="form-control" />
			        <label for="Form-pass4">Your password</label>
	            </div>
	            <div class="md-form">
	            <input type="password" name="password" id="Form-pass4" class="form-control" />
	            <label for="Form-pass4">Confirm password</label>
				<i class="passErr"></i>
				</div>
				<div class="md-form">
				<form:input path="cname" id="Form-text4" class="form-control"/>
				<label for="Form-text4">Your Name </label>
				</div>
				<div class="md-form">
				<form:input path="cbirth" id="Form-text4" class="form-control"/>
				<label for="Form-text4">Your Birth </label>
				</div>
				<div class="md-form">
				<form:input path="cphone" id="Form-text4" class="form-control" /> 
				<label for="Form-text4">Your Phone</label>
				</div>
				</div>
	            <div class="row" id="BtnDiv">
	                <div class="col"><button type="submit" class="btn btn-primary btn-block z-depth-2" id="modifyBtn">MODIFY</button></div>
	            </div>
	        </div>
	        </form:form> 
	    </div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>