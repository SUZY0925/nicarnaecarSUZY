<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
	    <div class="card">
	        <div class="header pt-3 grey lighten-2">
	            <div class="row d-flex justify-content-start">
	                <h3 class="deep-grey-text mt-3 mb-4 pb-1 mx-5">Sign up</h3>
	            </div>
	
	        </div>
	        <div class="card-body mx-4 mt-4">
	            <div class="md-form">
	                <input type="email" class="form-control">
	                <label for="Form-email4">Your email</label>
	                <form:errors path="id" cssClass="errmsg" />
			
	            </div>
	
	            <div class="md-form">
		            <input type="password" class="form-control">
			        <label for="Form-pass4">Your password</label>
					<form:errors path="passwd" cssClass="errmsg" />
	            </div>
	            
	            <div class="md-form">
	            <input type="password" name="password" class="form-control" />
	            <label for="Form-pass4">Confirm password</label>
				<i class="passErr"></i>
				</div>
				
				<div class="md-form">
				<input type="text" class="form-control">
				<label for="Form-text4">Your Name </label>
				<form:errors path="name" cssClass="errmsg" /> 
				</div>
				
				<div class="md-form">
				<input type="text" class="form-control">
				<label for="Form-text4">Your Birth </label>
				<form:errors path="birth" cssClass="errmsg" /> 
				</div>
				
				<div class="md-form">
				<input type="text" class="form-control"> 
				<label for="Form-text4">Your Phone</label>
				<form:errors path="phone" type="text" />
				</div>
				
				</div>
	            <div class="row" id="BtnDiv">
	                <div class="col"><button type="button" class="btn btn-primary btn-block z-depth-2" id="joinBtn">REGISTER</button></div>
	            	<div class="col"><input type="button" value="Reset" id="joinClearBtn" class="btn btn-primary btn-block z-depth-2"/></div>
					<div class="col"><input type="button" value="Back" id="joinCancelBtn" class="btn btn-primary btn-block z-depth-2"/></div>
	            </div>
	        </div>
	    </div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>  
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   


<jsp:include page="/WEB-INF/views/header.jsp" flush="true"/> 
<jsp:include page="/WEB-INF/views/nav.jsp" />
<script>
$(function(){
   
   $("input[name=confirm]").on("keyup",function(){
       if($("input[name=cpasswd]").val() != $("input[name=confirm]").val()){
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
}); 
</script>

   <div class="container">
      <div class="row main">
         <div class="main-login main-center blue darken-1">
         <h5>Join in Our Site</h5>
         <form:form modelAttribute="memberVO" action="/member/memberJoinOK" method="post">
               <div class="form-group">
                  <label for="cname" class="cols-sm-2 control-label">Name</label>
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon"></span>
                        <form:input class="form-control" path="cname"  placeholder="Enter your Name"/>
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <label for="cbirth" class="cols-sm-2 control-label">Birth</label>
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon"></span>
                        <form:input class="form-control" path="cbirth"  placeholder="ex)19940307"/>
                     </div>
                  </div>
               </div>
               
               <div class="form-group">
                  <label for="cphone" class="cols-sm-2 control-label">Phone</label>
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon"></span>
                        <form:input class="form-control" path="cphone"  placeholder="Enter your phone number"/>
                     </div>
                  </div>
               </div>
               <div class="form-group">
                  <label for="cemail" class="cols-sm-2 control-label">ID</label>
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon"></span>
                        <form:input class="form-control" path="cemail"  placeholder="Enter your Email"/>
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <label for="cpasswd" class="cols-sm-2 control-label">Password</label>
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon"></span>
                        <form:password class="form-control" path="cpasswd"  placeholder="Enter your Password"/>
                        <div class="input-group">
                        </div>
                     </div>
                  </div>
               </div>

               <div class="form-group">
                  <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                  <div class="cols-sm-10">
                     <div class="input-group">
                        <span class="input-group-addon"></span>
                        <input type="password" class="form-control" name="confirm"  placeholder="Confirm your Password"/>
                     </div>
                     <span class="passErr"></span>
                  </div>
               </div>
               
               <div class="form-group ">
                  <button type="button" id="joinBtn" class="btn btn-primary btn-lg btn-block login-button">Register</button>
               </div>
               </form:form>
         </div>
         
      </div>
   </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
<jsp:include page="/WEB-INF/views/footer.jsp" flush="true"/> 