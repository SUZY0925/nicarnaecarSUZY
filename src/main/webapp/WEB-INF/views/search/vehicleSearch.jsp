<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Vehicle Search</title>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>

<script>
$(document).ready(function() {
    $("ul.dropdown-menu input[type=checkbox]").each(function() {
        $(this).change(function() {
            var line = "";
            $("ul.dropdown-menu input[type=checkbox]").each(function() {
                if($(this).is(":checked")) {
                    line += $("+ span", this).text() + ", ";
                }
            });
            $("input.form-control").val(line);
        });
    });
});
</script>

<div class="container">
	<div class="input-group">
		<div class="input-group-btn">
			<button tabindex="-1" data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button"> btn </button>
			<ul role="menu" class="dropdown-menu">
				<li><a href="#"><input type="checkbox"><span class="lbl">Every day</span></a></li>
				<li class="divider"></li>
				<li><a href="#">
				<input type="checkbox"><span class="lbl">Monday</span>
				</a></li>
				<li><a href="#">
				<input type="checkbox"><span class="lbl">Tuesday</span>
				</a></li>
				<li><a href="#">
				<input type="checkbox"><span class="lbl">Wednesday</span>
				</a></li>
				<li><a href="#">
				<input type="checkbox"><span class="lbl">Thursday</span>
				</a></li>
				<li><a href="#">
				<input type="checkbox"><span class="lbl">Friday</span>
				</a></li>
				<li><a href="#">
				<input type="checkbox"><span class="lbl">Saturday</span>
				</a></li>
				<li><a href="#">
				<input type="checkbox"><span class="lbl">Sunday</span>
				</a></li>
			</ul>
		</div>
		<input type="text" class="form-control">
	</div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>