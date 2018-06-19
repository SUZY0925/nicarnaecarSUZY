<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <tr>
            <th scope="row">
				<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio1"></label>
				</div>
            </th>
            <td>차종</td>
            <td>차이름</td>
            <td>몇인승</td>
            <td>기름종류</td>
            <td>색상</td>
            <td>요금</td>
        </tr>
        <tr>
            <th scope="row">
            	<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio2"></label>
				</div>
            </th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@TwBootstrap</td>
            <td>@TwBootstrap</td>
            <td>@TwBootstrap</td>
            <td>@TwBootstrap</td>
        </tr>
        <tr>
            <th scope="row">
            	<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio3"></label>
				</div>
            </th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>@fat</td>
            <td>@fat</td>
            <td>@fat</td>
        </tr>
        <tr>
            <th scope="row">
            	<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio4" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio4"></label>
				</div>
            </th>
            <td>@twitter</td>
            <td>@twitter</td>
            <td>@twitter</td>
            <td>@twitter</td>
            <td>@twitter</td>
            <td>@twitter</td>
        </tr>
    </tbody>
    <!--Table body-->

</table>
<!--Table-->
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>