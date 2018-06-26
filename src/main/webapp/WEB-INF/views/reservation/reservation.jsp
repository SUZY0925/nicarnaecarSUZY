<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<style>
   .md-form{
      max-width:90%;
   }
   .card{
      margin:auto;
      margin-top:10%;
      max-width:90%;
   }
</style>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<title>Reservation Check</title>

<div class="card">
<div class="card-body">
<div class="row">
   <div class="col-6" style="border-right: 1px dotted gray;">
         <div class="md-form">
             <input type="text" id="form1" readOnly class="form-control">
             <label for="form1" >예약자 명</label>
         </div>
         <div class="md-form">
             <input type="text" id="form2" readOnly class="form-control">
             <label for="form2" >연락처</label>
         </div>
         <div class="md-form">
             <input type="text" id="form3" class="form-control" readOnly value="${bookingVO.bin }">
             <label for="form3" >대여 일시</label>
         </div>
         <div class="md-form">
             <input type="text" id="form4" class="form-control" readOnly value="${bookingVO.bout }">
             <label for="form4" >반납 일시</label>
         </div>
         <div class="md-form">
             <input type="text" id="form5" class="form-control" readOnly value="${vehicleVO.eoffice }">
             <label for="form5" >배차/반납지</label>
         </div>
   </div>
   <div class="col-6">
         <div class="row-6">
         <div class="md-form">
             <input type="text" id="form7" class="form-control" readOnly value="${vehicleVO.vmodel }">
             <label for="form7" >차종</label>
         </div>
         <div class="md-form">
             <input type="text" id="form8" class="form-control" readOnly>
             <label for="form8" >옵션</label>
         </div>
         <div class="md-form">
             <input type="text" id="form9" class="form-control" readOnly>
             <label for="form9" >기타 추가 비용</label>
         </div>
         </div>
         <div class="row-6" style="position:relative; float:right; top:140px;">
            <button type="button" class="btn btn-pink"><i class="fa fa-plane pr-2" aria-hidden="true"></i>예약하기</button>
              <button type="button" class="btn btn-purple"><i class="fa fa-times pr-2" aria-hidden="true"></i>예약취소</button>
         </div>
   </div>
   </div>
</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>