<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyyMMdd" var="nowDate" />   --%>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<script>
	$(function () {
		$("#cancelBtn").on("click",function() {
			alert("예약이 취소되었습니다.");
		});
	})
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
                    <th colspan="3">예약내역</th>
                    <th>대여시작일</th>
                    <th>대여종료일</th>
                    <th>상태</th>
                    <th>button</th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            
            <c:forEach items="${booking }" var="book" >
                <tr>
                    <th scope="row">${book.bnumber }</th>
                    <td colspan="3">${book.vnumber }</td>
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
                    	<c:choose>
                    		<c:when test='${book.bstatus eq "취소"}'>
			                </c:when>
	                    	<c:when test="${nowDate <= outDate && nowDate < inDate }">
			                 	<a id="cancelBtn" href="/reservation/cancel/${book.bnumber }" class="btn btn-mdb-color btn-sm">취소</a>
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
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>