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
function uncomma(num) {
    var num = String(num);
    return num.replace(/[^\d]+/g, '');
}

function getkm(i){
	$("#vkm").val(document.getElementsByName('forvkm')[i].childNodes[0].nodeValue);
	$("#bnumber").val(document.getElementsByName('forbnumber')[i].childNodes[0].nodeValue);
	$("#vnumber").val(document.getElementsByName('forbvnumber')[i].childNodes[0].nodeValue);
}
$(function() {
	$("#view").hide();
	$("#form").show();
	var str = "";
    <c:forEach items="${list }" var="list" varStatus="status">
        str += "<tr>";
        str += "<td name='forbnumber'>${list.bnumber}</td>"
        str += "<td name='forbvnumber'>${list.vnumber}</td>"
        str += "<td>${list.bin}</td>"
        str += "<td>${list.bout}</td>"
	    str += "<td name='forvkm'>"+addComma(${list.vkm})+"km</td>"
        str += "<td>"+addComma(${list.bprice})+"원</td>"
        // str += "<td><a class='btn btn-info px-3' href='/admin/returnOK/${list.bnumber}'>반납</a></td>"
        str += "<td><button data-toggle='modal' data-target='#exampleModalReturn' onclick='getkm(${status.index})' class='btn btn-info px-3'>반납</button></td>"
        str += "</tr>";
     </c:forEach>
     $("#returnTable").html(str);
     
     
     $("#returnNext").click(function() {
    	 var vkm = $("#vkm").val();
		 vkm = vkm.substr(0, vkm.indexOf(['k']));
		 vkm = uncomma(vkm);
		 var bkm = $("#bkm").val();
    	 
    	 if (bkm == "") {
    		 alert("주행거리(후)를 입력하세요!");
    		 return;
    	 } else if(bkm < vkm) {
			 alert("주행거리(후)가 주행거리(전)보다 적으면 안됩니다!");
			 return;
    	 } else {
    		 $("#view").show();
    		 $("#form").hide();
    		 
    		 $("#kmPrice").html('청구된 주행비용은 '+addComma((bkm-vkm)*200)+'원 입니다.');
    	 }
     })
     
     $("#returnOK").click(function() {
    	 var vkm = $("#vkm").val();
		 vkm = vkm.substr(0, vkm.indexOf(['k']));
		 vkm = uncomma(vkm);
		 $("#vkm").val(vkm);
    	 returnForm.submit();
     })
})
</script>
<style>
	td{
		padding: 10px 10px 10px 10px;
	}
</style>

<div class="col-md-10">
	<table class="table table-hover table-responsive-md table-fixed" style="width:100%;">
	    	<h2>반납할 차량</h2>
	    	<thead>
                <tr>
                    <th><h4>예약번호</h4></th>
                    <th><h4>차량번호</h4></th>
                    <th><h4>인도날짜</h4></th>
                    <th><h4>반납날짜</h4></th>
                    <th><h4>주행거리(전)</h4></th>
                    <th><h4>가격</h4></th>
                    <th><h4>반납</h4></th>
                </tr>
            </thead>
	    <tbody id="returnTable">
	    </tbody>
	</table>
	
	<form:form id="returnForm" action="/admin/returnOK" method="post">
	<jsp:include page="/WEB-INF/views/admin/returnModal.jsp"/>
	</form:form>
	
	<table style=" margin:auto;">
         <tr>
            <td>
               <ul id="pageing"
                  class="pagination pagination-sm justify-content-center">
                  <c:if test="${page.prev }">
                     <li class="page-item"><a class="page-link"
                        href="delivery?page.finalEndPage">◀</a></li>
                     <li class="page-item"><a class="page-link"
                        href="return?${page.getmakeURL(page.startPage-1) }" aria-label="Previous">
                           <span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
                     </a></li>
                  </c:if>
                  <c:forEach begin="${page.startPage }" end="${page.endPage }" var="PAGE">
                     <c:if test="${page.recordCriteria.reqPage == PAGE }">
                        <li class="page-item active"><a class="page-link" href="javascript:void(0)">${PAGE }</a></li>
                     </c:if>
                     <c:if test="${page.recordCriteria.reqPage != PAGE }">
                        <li class="page-item"><a class="page-link"
                           href="return?${page.getmakeURL(PAGE) }">${PAGE }</a></li>
                     </c:if>
                  </c:forEach>
                  <c:if test="${page.next }">
                     <li class="page-item"><a class="page-link"
                        href="return?${page.getmakeURL(page.endPage+1) }" aria-label="Next">
                           <span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
                     </a></li>
                     <li class="page-item"><a class="page-link"
                        href="return?${page.getmakeURL(page.finalEndPage) }">▶</a></li>
                  </c:if>
               </ul>
            </td>
          </tr>
      </table>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>