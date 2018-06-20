<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Vehicle Search</title>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

</head>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/js/mdb.min.js"></script>
<div class="container" style="margin-top:2%;">


<p>
  <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Link with href
  </a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Button with data-target
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
		<div class="custom-control custom-checkbox d-inline">
			  <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
			  <label class="custom-control-label" for="customCheck1">All</label>
			</div>
			&nbsp;
			<div class="custom-control custom-checkbox d-inline">
			  <input type="checkbox" class="custom-control-input" id="customCheck1-1">
			  <label class="custom-control-label" for="customCheck1-1">1</label>
			</div>
			&nbsp;
			<div class="custom-control custom-checkbox d-inline">
			  <input type="checkbox" class="custom-control-input" id="customCheck1-2">
			  <label class="custom-control-label" for="customCheck1-2">2</label>
			</div>
			&nbsp;
			<div class="custom-control custom-checkbox d-inline">
			  <input type="checkbox" class="custom-control-input" id="customCheck1-3">
			  <label class="custom-control-label" for="customCheck1-3">3</label>
			</div>
  </div>
</div>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
</script>


<div class="md-form float-right">
    <input class="form-control" type="text" placeholder="Search" aria-label="Search">
</div>
	<!--Table-->
<table class="table table-bordered">

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
            
            <td><img src="/resources/IMG/car/${list.vmodel}.png" alt="" style="height:50px;"/></td>
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