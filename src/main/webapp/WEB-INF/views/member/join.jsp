<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>

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
   i, input{
      display:inline;
   }
</style>
</head>
   <div class="container" id="container">
       <div class="card">
           <div class="header pt-3 info-color lighten-2" style="color:white;">
               <div class="row d-flex justify-content-start">
                   <h3 class="deep-grey-text mt-3 mb-4 pb-1 mx-5">Sign up</h3>
               </div>
           </div>
           <div class="card-body mx-4 mt-4">
           <form:form modelAttribute="memberVO" action="/member/memberJoinOK" method="post">
         <div class="md-form">
            <i class="fa fa-envelope prefix grey-text"></i>
            <form:input class="form-control" path="cemail"/>
            <label for="cemail">E-mail address</label>
            <form:errors path="cemail" cssClass="errmsg" />
         </div>
         
         <div class="md-form">
            <i class="fa fa-key prefix grey-text" aria-hidden="true"></i>
            <form:password class="form-control" path="cpasswd"/>
            <label for="cpasswd">Your password</label>
            <form:errors path="cpasswd" cssClass="errmsg" />
         </div>

         <div class="md-form">
            <i class="fa fa-key prefix grey-text" aria-hidden="true"></i>
            <input type="password" class="form-control" name="confirm"/>
            <label for="confirm">Confirm password</label>
            <i class="passErr"></i>
         </div>

         <div class="md-form">
            <i class="fa fa-child prefix grey-text"></i>
            <form:input class="form-control" path="cname"/>
            <label for="cname">Your Name </label>
            <form:errors path="cname" cssClass="errmsg" />
         </div>

         <div class="md-form">
            <i class="fa fa-birthday-cake prefix grey-text"></i>
            <form:input class="form-control" path="cbirth"/>
            <label for="cbirth">Your Birth </label>
            <form:errors path="cbirth" cssClass="errmsg" />
         </div>

         <div class="md-form">
            <i class="fa fa-phone prefix grey-text" aria-hidden="true"></i>
            <form:input class="form-control" path="cphone"/>
            <label for="cphone">Your Phone</label>
            <form:errors path="cphone" cssClass="errmsg" />
         </div>
         </form:form>
         </div>
               <div class="row" id="BtnDiv">
                   <div class="col"><button type="button" class="btn btn-primary btn-block z-depth-2" id="joinBtn">REGISTER</button></div>
                  <div class="col"><input type="button" value="Reset" id="joinClearBtn" class="btn btn-primary btn-block z-depth-2"/></div>
               <div class="col"><input type="button" value="Back" id="joinCancelBtn" class="btn btn-primary btn-block z-depth-2"/></div>
               </div>
           </div>
       </div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>  

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
    
<jsp:include page="/WEB-INF/views/footer.jsp" flush="true"/>  --%>