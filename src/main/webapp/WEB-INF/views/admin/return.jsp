<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp"></jsp:include>

<script>
function addComma(num) {
	var regexp = /\B(?=(\d{3})+(?!\d))/g;
    return num.toString().replace(regexp, ',');
}
</script>
<style>
	td{
		padding: 10px 10px 10px 10px;
	}
</style>

<div class="col-md-10" style="height:45%">
	<table class="table table-hover table-responsive-md table-fixed" style="width:100%;">
	    	<h2>반납할 차량</h2>
	    	<thead>
                <tr>
                    <th><h4>예약번호</h4></th>
                    <th><h4>차량번호</h4></th>
                    <th><h4>인도날짜</h4></th>
                    <th><h4>반납날짜</h4></th>
                    <th><h4>인도후 기름양</h4></th>
                    <th><h4>가격</h4></th>
                    <th><h4>반납</h4></th>
                </tr>
            </thead>
	    <tbody id="returnTable">
	    <form:form action="/admin/returnOK" method="post">
			<script>
		    var str = "";
			    <c:forEach items="${list2 }" var="list2">
			        str += "<tr>";
			        str += "<td>${list2.bnumber}</td>"
			        str += "<td>${list2.vnumber}</td>"
			        str += "<td>${list2.bin}</td>"
			        str += "<td>${list2.bout}</td>"
			        str += "<td>${list2.vgage}</td>"
			        str += "<td>"+addComma(${list2.bprice})+"원</td>"
			        str += "<td><button type='submit'>반납</button></td>"
			        str += "</tr>";
			     </c:forEach>
			     $("#returnTable").html(str);
			</script>
			</form:form>
	    </tbody>
	</table>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>