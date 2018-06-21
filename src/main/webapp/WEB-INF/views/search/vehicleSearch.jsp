<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Vehicle Search</title>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<script>
$(document).ready(function() {
	$('#myInput').on('keyup focus', function() {
			  var input, filter, table, tr, td, i;
			  input = document.getElementById("myInput");
			  filter = input.value.toUpperCase();
			  table = document.getElementById("myTable");
			  tr = table.getElementsByTagName("tr");
			  for (i = 0; i < tr.length; i++) {
			    td = tr[i].getElementsByTagName("td")[2];
			    if (td) {
			      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
			        tr[i].style.display = "";
			      } else {
			        tr[i].style.display = "none";
			      }
			    }       
			  }
	})
})
</script>
<style>
	.zoom:hover {
    -ms-transform: scale(3); /* IE 9 */
    -webkit-transform: scale(3); /* Safari 3-8 */
    transform: scale(3); 
}
</style>

</head>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<div class="container" style="margin-top:2%;">
	<div class="md-form float-right">
	    <input id="myInput" class="form-control" type="text" placeholder="Search" aria-label="Search">
	</div>
		<!--Table-->
	<table id="myTable" class="table table-bordered" style="width:100%;">
	    <!--Table body-->
	    <tbody>
		    <c:forEach items="${list }" var="list" varStatus="index">
		        <tr>
		            <th scope="row">
						<div class="custom-control custom-radio">
						  <input type="radio" id="customRadio${index.count }" name="customRadio" class="custom-control-input">
						  <label class="custom-control-label" for="customRadio${index.count }"></label>
						</div>
		            </th>
		            
		            <td style="width:5%;"><img class="zoom" src="/resources/IMG/car/${list.vmodel}.png" alt="" style="height:50px;"/></td>
		            <td>${list.vtype} </td> <!-- 차종  -->
		            <td>${list.vmodel} ${list.vyear } </td> <!-- 차이름 -->
		            <td>${list.vmaker} </td> <!-- 메이커 -->
		            <td>${list.voil} </td> <!-- 기름종류 -->
		            <td>${list.vcolor} </td> <!-- 색상 -->
		            <td>${list.vprice}원</td> <!-- 요금 -->
		        </tr>
	        </c:forEach>
	    </tbody>
	    <!--Table body-->
	</table>
	<!--Table-->
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>