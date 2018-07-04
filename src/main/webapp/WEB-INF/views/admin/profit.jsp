<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp"></jsp:include>
<style>
	.table-fixed {
    table-layout: fixed;
    overflow: hidden;
	}
	label{
	margin-left:20px;
	}
	label.container{
	margin-left:35px;
	padding-left:4px;
	}
	span.checkmark{
	margin-left:-20px;
	}
	select {
	margin:32px 0 0 15px;
    width: 200px;
    height: 30px;
    padding-left: 10px;
    font-size: 18px;
    color: #006fff;
    border: 1px solid #006fff;
    border-radius: 3px;
	}
	/* Hide the browser's default radio button */
	.container input[type=radio] {
	    position: absolute;
	    opacity: 0;
	    cursor: pointer;
	}
	
	/* Create a custom radio button */
	.checkmark {
	    position: absolute;
	    top: 0;
	    left: 0;
	    height: 20px;
	    width: 20px;
	    background-color: #eee;
	    border-radius: 50%;
	}
	/* When the radio button is checked, add a blue background */
	.container input:checked ~ .checkmark {
	    background-color: #2196F3;
	}
	
	/* Create the indicator (the dot/circle - hidden when not checked) */
	.checkmark:after {
	    content: "";
	    position: absolute;
	    display: none;
	}
	
	/* Show the indicator (dot/circle) when checked */
	.container input:checked ~ .checkmark:after {
	    display: block;
	}
	input[type=submit]{
		margin-top:-10px;
	}
	input[type=checkbox]{
		margin:5px;
		margin-top:10px;
	}
</style>
<script>
	$(function(){
		$("#deleteBtn").on("click",function(){
			alert("삭제되었습니다.");
		});
	})
	function addComma(num) {
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
	    return num.toString().replace(regexp, ',');
	}
</script>

<div class="col-md-10">
<form:form action="/admin/profitInsertOK" method="post">
	<div class="card">
		<div class="card-body row">
		
			<div class="md-form col-2" style="display:inline;">
				<input type="text" id="form1" class="form-control" name="ptarget">
				<label for="form1">수입/지출처</label>
			</div>
			<div class="md-form col-1" style="display:inline;">
			<label class="container">수입<input type="radio" checked="checked" name="pinout" value="수입">
			<span class="checkmark"></span></label>
			</div>
			<div class="md-form col-1" style="display:inline;">
			<label class="container">지출<input type="radio" name="pinout" value="지출">
			<span class="checkmark"></span></label>
			</div>
			<div class="md-form col-1" style="display:inline;">
				<input type="text" id="form3" class="form-control" name="pamount">
				<label for="form3">금액</label>
			</div>
			<div class="md-form col-2" style="display:inline;">
				<input type="text" id="form4" class="form-control" name="bnumber">
				<label for="form4">예약번호</label>
			</div>
			<div class="md-form col-2" style="display:inline;">
				<input type="text" id="form5" class="form-control" name="pmemo">
				<label for="form5">거래내역</label>
			</div>
			<div class="col-1"></div>
			<div class="md-form col-2" style="display:inline;">
				<input type="submit" class="btn btn-primary" value="입력" />
			</div>
			
		</div>
	</div>
</form:form>
	<br />
	<div class="card">
    <div class="card-body">
        <!--Table-->
        <table class="table table-hover table-responsive-md table-fixed" id="profitTable">
			<h2 style="display:inline;">거래 목록</h2>
            <!--Table head-->
            <thead>
                <tr>
                    <th><h4>Number</h4></th>
                    <th><h4>대상</h4></th>
                    <th><h5>수입/지출</h5></th>
                    <th><h4>금액</h4></th>
                    <th><h4>예약번호</h4></th>
                    <th><h4>거래내역</h4></th>
                    <th><h4>삭제</h4></th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody id="profitTableIn">
                <script>
				var str = "";
			    <c:forEach items="${profitList }" var="profit">
			        str += "<tr>";
			        str += "<td>${profit.pnumber}</td>";
			        str += "<td>${profit.ptarget}</td>"; 
			        str += "<td>${profit.pinout}</td>";
			        str += "<td>"+addComma("${profit.pamount}")+"원</td>"; 
			        str += "<td>${profit.bnumber}</td>"; 
			        str += "<td>${profit.pmemo}</td>"; 
			        str += "<td><a class='btn btn-info px-3' href='/admin/profitDeleteOK/${profit.pnumber}'>삭제</a></td>"; 
			        str += "</tr>";
			     </c:forEach>
			     $("#profitTableIn").html(str);
			</script>
            </tbody>
            <!--Table body-->

        </table>
        <!--Table-->

    </div>
</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>