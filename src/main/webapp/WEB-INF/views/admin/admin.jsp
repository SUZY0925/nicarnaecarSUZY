<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp"></jsp:include>
<div class="col-md-10">
	<blockquote class="blockquote text-left">
		<p class="mb-0">ADMIN 페이지에서는 ADMIN 권한에 관한 설명을 볼 수 있습니다.</p>
		<p class="mb-0">CAR 페이지에서는 차량 인도, 반납 관리를 할 수 있습니다.</p>
		<p class="mb-0">PROFIT 페이지에서는 수익 관리를 할 수 있습니다.</p>
	</blockquote>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>