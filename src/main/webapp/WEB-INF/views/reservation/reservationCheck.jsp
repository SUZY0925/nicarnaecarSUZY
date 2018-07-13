<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="nowDate" />   --%>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<script>
$(function() {
	$("#cancelBtn").click(function() {
		alert("예약이 취소되었습니다.");
	});
});
</script>
</head>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<title>Reservation Check</title>

<div class="container" style="margin-top:2%;">
<h2>Reservation Check</h2>
   <div class="card">
    <div class="card-body">

        <!--Table-->
        <table class="table table-hover table-responsive-md table-fixed">
            <!--Table head-->
            <thead>
                <tr>
                    <th>예약번호</th>
                    <th>예약내역</th>
                    <th>대여시작일</th>
                    <th>대여종료일</th>
                    <th>상태</th>
                    <th>비고</th>
                    <th>연장/취소</th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            
            <c:forEach items="${list }" var="book" >
                <tr>
                    <th scope="row">${book.bnumber }</th>
                    <td>${book.vnumber }</td>
                    <td>${book.bin }</td>
                    <td>${book.bout }</td>
                    	<%-- <fmt:formatDate value="${book.bin}" pattern="yyyyMMdd" var="inDate" />  
                    	<fmt:formatDate value="${book.bout}" pattern="yyyyMMdd" var="outDate" />  
		                   	<c:choose>
			                   	<c:when test='${book.bstatus eq "취소"}'>
			                   		취소
			                   	</c:when>
			                   	<c:when test="${nowDate > outDate}">
			                   		사용완료
			                    </c:when>
			                    <c:when test="${nowDate <= outDate && nowDate >= inDate}">
			                   		사용중
			                    </c:when>
			                    <c:when test="${nowDate <= outDate && nowDate < inDate}">
			                   		예약완료
			                    </c:when>
		                    </c:choose> --%>
		                    <td>${book.bstatus }</td>
		                    <td>
		                    	<%-- <c:if test='${book.bstatus eq "완료"}'>
		                    		<script>
		                    		function addComma(num) {
		                    			var regexp = /\B(?=(\d{3})+(?!\d))/g;
		                    		    return num.toString().replace(regexp, ',');
		                    		};
		                    		$(function() {
		                    			var plusPrice = ${book.bkm - book.vkm} * 200;
			                    		 $("#plusPrice").html('주행거리:'+addComma(${book.bkm - book.vkm})+'km'+' 주행비:'+addComma(plusPrice)+'원');
		                    		});
		                    		</script>
		                    		<span id="plusPrice"></span>
		                    	</c:if> --%>
		                    </td>
                    <td>
                    	<c:choose>
	                    	<c:when test='${book.bstatus eq "예약"}'>
			                 	<a id="cancelBtn" href="/reservation/cancel/${book.bnumber }" class="btn btn-mdb-color btn-sm">취소</a>
			            	</c:when>
			            	<c:when test='${book.bstatus eq "사용중"}'>
			                 	<a id="extendBtn" href="/reservation/extend/${book.bnumber }" class="btn btn-mdb-color btn-sm">연장</a>
			            	</c:when>
		            	</c:choose>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
            <!--Table body-->

        </table>
        <!--Table-->

    </div>
</div>

 <table style=" margin:auto;">
         <tr>
            <td>
               <ul id="pageing"
                  class="pagination pagination-sm justify-content-center">
                  <c:if test="${page.prev }">
                     <li class="page-item"><a class="page-link"
                        href="reservationCheck?page.finalEndPage">◀</a></li>
                     <li class="page-item"><a class="page-link"
                        href="notice?${page.getmakeURL(page.startPage-1) }" aria-label="Previous">
                           <span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
                     </a></li>
                  </c:if>

                  <c:forEach begin="${page.startPage }" end="${page.endPage }"
                     var="PAGE">
                     <c:if test="${page.recordCriteria.reqPage == PAGE }">
                        <li class="page-item active"><a class="page-link" href="javascript:void(0)">${PAGE }</a></li>
                     </c:if>
                     <c:if test="${page.recordCriteria.reqPage != PAGE }">
                        <li class="page-item"><a class="page-link"
                           href="reservationCheck?${page.getmakeURL(PAGE) }">${PAGE }</a></li>
                     </c:if>
                  </c:forEach>

                  <c:if test="${page.next }">
                     <li class="page-item"><a class="page-link"
                        href="reservationCheck?${page.getmakeURL(page.endPage+1) }" aria-label="Next">
                           <span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
                     </a></li>
                     <li class="page-item"><a class="page-link"
                        href="reservationCheck?${page.getmakeURL(page.finalEndPage) }">▶</a></li>
                  </c:if>
               </ul>
            </td>
          </tr>
      </table> 

</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>