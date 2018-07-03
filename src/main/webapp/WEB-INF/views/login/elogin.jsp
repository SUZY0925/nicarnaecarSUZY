<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<title>Login</title>
<script>
	$(function() {
		 $("#afterID").hide();
		$("#afterPW").hide(); 
		
		 $("#joinBtn").on("click", function(e) {
			location.href = "/mypage/join"
		});

		$("#loginBtn").on("click", function(e) {
			e.preventDefault();
			$("#loginform").submit();
		});
		
		   $("#findid").on("click",function(e) {
		 	var ename = $("input[name=ename]").val();
			var ephone = $("input[phone=ephone]").val();
			 $.ajax({
				type : "GET",
				url : "/findID",
				dataType : "text",
				data : {
					'ename'  : ename,
					'ephone' : ephone
				},
				success : function(data) {
					$("#beforeID").hide();
					$("#afterID").show();
					$("#findIDstring").html(data);
				},
				error : function(e) {
					alert("조회된 아이디가 없습니다.");
				}
			});  
		});
		
		$("#findpw").on("click",function() {
			var eemail = $("input[name=ids]").val();
			var ebirth = $("input[name=ebirth]").val();
			 $.ajax({
				type : "GET",
				url : "/findPW",
				dataType : "text",
				data : {
					'eemail' : eemail,
					'ebirth' : ebirth
				},
				success : function(data) {
					$("#beforePW").hide();
					$("#afterPW").show();
					$("#findPWstring").html(data);
				},
				error : function(e) {
					alert("조회된 비밀번호가 없습니다.");
				}
			});  
		});   
		
	});
	
	 $(document).on('hidden.bs.modal','.modal',function(e) {
		$("#findform").each(function(){
		    this.reset();
		  });
		$("#afterID").hide();
		$("#afterPW").hide();
		$("#beforeID").show();
		$("#beforePW").show();
	});  
</script>
<style>
.errmsg {
	color: red;
}
.passErr {
	color: red;
}
#container {
	margin-top: 3%;
	max-width:400px;
}
                
</style>
</head>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
	<c:if test="${param.fail != null}">
		로그인실패
	</c:if>
	<%-- <c:url value="j_spring_security_check" var="loginUrl" /> --%>
	<div class="container" id="container" >
	<form:form action="${pageContext.request.contextPath}/login" method="post" id="loginform"> 
	
	<section class="form-simple">
	    <div class="card">
	        <div class="header blue darken-1 pt-3" >
	            <div class="row d-flex justify-content-start" >
	                <h3 class="deep-grey-text mt-3 mb-4 pb-1 mx-5" style="color:white;">Log in</h3>
	            </div>
	        </div>
	        <div class="card-body mx-4 mt-4">
	            <div class="md-form">
	               <%-- <form:input path="cemail" class="form-control" />  --%>
	                <input type="email" id="id" name="username" class="form-control" />
	                <label for="Form-email4">Your email</label>
	                <form:errors path="username" cssClass="errmsg" /> 
	            </div>
	            <div class="md-form pb-3">
		            <%-- <form:password path="cpasswd"  class="form-control" /> --%>
		            <input type="password" id="passwd" name="password"  class="form-control" />
			        <label for="Form-pass4">Your password</label>
					<form:errors path="password" cssClass="errmsg" />
				</div>
					<p class="font-small grey-text d-flex justify-content-end">Forgot <a href="#" data-toggle="modal" data-target="#exampleModalId" class="dark-grey-text font-weight-bold ml-1"> E-mail?</a></p>
	                <p class="font-small grey-text d-flex justify-content-end">Forgot <a href="#" data-toggle="modal" data-target="#exampleModalPw" class="dark-grey-text font-weight-bold ml-1"> Password?</a></p>
	            <div class="text-center mb-4">
	                <button type="button" class="btn btn-primary btn-block z-depth-2" id="loginBtn">Log in</button>
	            </div>
	            <p class="font-small grey-text d-flex justify-content-center">Don't have an account? <a href="#" class="dark-grey-text font-weight-bold ml-1" id="joinBtn"> Sign up</a></p>
	        </div>
	    </div>
	</section>
</form:form>   
     
</div>

<form:form modelAttribute="find" method="post" id="findform">
<jsp:include page="/WEB-INF/views/login/emodalID.jsp" flush="true"/>
<jsp:include page="/WEB-INF/views/login/emodalPW.jsp" flush="true"/>
</form:form>



<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>