<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>

<script>
$(function(){
	
	$("input[name=password]").on("keyup",function(){
 		if($("input[name=password]").val() != $("input[name=passwd]").val()){
 			$(".passErr").text('비밀번호가 틀립니다.');
			$(this).focus();
		}else{
			$(".passErr").text('');
		}
	});
	
 	$("#joinBtn").on("click",function(e){
		e.preventDefault();
		$("form").submit();
		
	});
	
	$("#joinClearBtn").on("click",function(e){
		e.preventDefault();		
		  $("form").each(function(){
			    this.reset();
			  });
	});	
	
	$("#joinCancelBtn").on("click",function(e){
		e.preventDefault();		
			location.href="/";
	});	 
	      
	});

</script>
<style>
	.errmsg{color:red;}
	.passErr{color:red;}
	#BtnDiv {
		margin:auto;
		margin-bottom: 2%;
		margin-top: 2%;
	}
	#container {
		margin-top:3%;
	}
</style>
</head>
	<div class="container" id="container">
<%-- 	<form:form modelAttribute="memberVO" action="/member/memberJoinOK" method="post"> --%>
	<form action="">
	    <div class="card">
	        <div class="header pt-3 grey lighten-2">
	            <div class="row d-flex justify-content-start">
	                <h3 class="deep-grey-text mt-3 mb-4 pb-1 mx-5">Sign up</h3>
	            </div>
	
	        </div>
	        <div class="card-body mx-4 mt-4">
	            <div class="md-form">
	                <%-- <form:input path="id" id="Form-email4" class="form-control"/> --%>
	                <input type="email" class="form-control">
	                <label for="Form-email4">Your email</label>
	                <%-- <form:errors path="id" cssClass="errmsg" /> --%>
			
	            </div>
	
	            <div class="md-form">
		            <%-- <form:password path="passwd" id="Form-pass4"  class="form-control" /> --%>
		            <input type="password" class="form-control">
			        <label for="Form-pass4">Your password</label>
					<%-- <form:errors path="passwd" cssClass="errmsg" /> --%>
	            </div>
	            
	            <div class="md-form">
	            <input type="password" name="password" class="form-control" />
	            <label for="Form-pass4">Confirm password</label>
				<i class="passErr"></i>
				</div>
				
				<div class="md-form">
				<%-- <form:input path="name" class="form-control"/> --%>
				<input type="text" class="form-control">
				<label for="Form-text4">Your Name </label>
				<%-- <form:errors path="name" cssClass="errmsg" />  --%>
				</div>
				
				<div class="md-form">
				<%-- <form:input path="birth" class="form-control"/> --%>
				<input type="text" class="form-control">
				<label for="Form-text4">Your Birth </label>
				<%-- <form:errors path="birth" cssClass="errmsg" />  --%>
				</div>
				
				<div class="md-form">
				<%-- <form:input path="phone" id="phone" class="form-control" /> --%>
				<input type="text" class="form-control"> 
				<label for="Form-text4">Your Phone</label>
				<%-- <form:errors path="phone" type="text" /> --%>
				</div>
				
				</div>
	            <div class="row" id="BtnDiv">
	                <div class="col"><button type="button" class="btn btn-primary btn-block z-depth-2" id="joinBtn">REGISTER</button></div>
	            	<div class="col"><input type="button" value="Reset" id="joinClearBtn" class="btn btn-primary btn-block z-depth-2"/></div>
					<div class="col"><input type="button" value="Back" id="joinCancelBtn" class="btn btn-primary btn-block z-depth-2"/></div>
	            </div>
	        </div>
	        <%-- </form:form>  --%>
	        </form>
	    </div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
