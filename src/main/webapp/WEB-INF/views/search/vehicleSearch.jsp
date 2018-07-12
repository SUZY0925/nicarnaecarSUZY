<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Vehicle Search</title>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<script>
function addComma(num) {
	var regexp = /\B(?=(\d{3})+(?!\d))/g;
    return num.toString().replace(regexp, ',');
}
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
	    <script>
	    var str = "";
		    <c:forEach items="${list }" var="list">
		        str += "<tr>";
		        str += "<td style='width:5%;'><img class='zoom' src='/resources/IMG/car/${list.vmodel}.png' alt='' style='height:50px;'/></td>";
		        str += "<td>${list.vtype} </td>";
		        str += "<td>${list.vmodel} ${list.vyear } </td>"; 
		        str += "<td>${list.vmaker} </td>";
		        str += "<td>${list.voil} </td>"; 
		        /* str += "<td>${list.vcolor} </td>";  */
		         str += "<td style='color:${list.vcolor};'><h3>●</h3></td>";  
		        str += "<td>"+addComma("${list.vprice}")+"원</td>"; 
		        str += "</tr>";
		     </c:forEach>
		     $("#myTable").html(str);
		   </script>
	    </tbody>
	    <!--Table body-->
	</table>
	<!--Table-->
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>