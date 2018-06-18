<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Date Search</title>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
	$(function() {
	  var dates = $( "#from, #to " ).datepicker({

	  dateFormat: 'yy-mm-dd',
	  showMonthAfterYear: true,
	  minDate:-0,
	  maxDate:'+30d',
	  onSelect: function( selectedDate ) {
	    var option = this.id == "from" ? "minDate" : "maxDate",
	      instance = $( this ).data( "datepicker" ),
	      date = $.datepicker.parseDate(
	        instance.settings.dateFormat ||
	        $.datepicker._defaults.dateFormat,
	        selectedDate, instance.settings );
	    dates.not( this ).datepicker( "option", option, date );
	  }
	  });
	});
</script>

<div class="container" style="margin-top:2%;">
	<div class="row">
			<!-- <div class="col">시작일</div>
			<div class="col">종료일</div>
			
			<div class="w-100"></div> -->
			<div class="col-10">
				<div class="col" id="from"></div>
				<div class="col" id="to"></div>
			</div>
			<!-- <div class="col">
				<div class="form-group">
				    <select multiple class="form-control" id="exampleFormControlSelect2">
				      <option>1</option>
				      <option>2</option>
				      <option>3</option>
				      <option>4</option>
				      <option>5</option>
				    </select>
				</div>
			</div>
			<div class="w-100"></div>
			
			<select class="custom-select col" style="margin:2%;">
			    <option value="" disabled selected>Choose your option</option>
			    <option value="1">Option 1</option>
			    <option value="2">Option 2</option>
			    <option value="3">Option 3</option>
			</select>
			<select class="custom-select col" style="margin:2%;">
			    <option value="" disabled selected>Choose your option</option>
			    <option value="1">Option 1</option>
			    <option value="2">Option 2</option>
			    <option value="3">Option 3</option>
			</select>
			<div class="col"></div>
			<div class="w-100"></div>
			<div class="col"><button type="button" class="btn btn-primary">Primary</button></div> -->
			
			<div class="col-3">
				<div class="form-group">
				    <select multiple class="form-control" id="exampleFormControlSelect2">
				      <option>1</option>
				      <option>2</option>
				      <option>3</option>
				      <option>4</option>
				      <option>5</option>
				    </select>
				</div>
			</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>