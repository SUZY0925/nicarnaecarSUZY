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
	<style>
		#from div, #to div{
			background-color: white;
		}
		#from .ui-state-default, #to .ui-state-default{
			border: none;
		}
		#from .ui-state-highlight, #to .ui-state-highlight {
			background-color: #33b5e5;
			border: none;
		}
		
		#from span , #from a, #to span, #to a{
			font-family: 고딕;
		}
	</style>

<div class="container" style="margin-top:2%;">
<div class="row">
	<div class="col-6" style="border-right: 1px dotted gray;">
	<table class="table text-center">
	  <thead>
	    <tr>
	      <th scope="col">시작일</th>
	      <th scope="col">종료일</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td><div id="from"></div></td>
		  <td><div id="to"></div></td>
	    </tr>
	    <tr>
	      	<td>
	      		<select class="custom-select">
				    <option value="" disabled selected>Choose your option</option>
				    <option value="1">Option 1</option>
				    <option value="2">Option 2</option>
				    <option value="3">Option 3</option>
				</select>
	      	</td>
	      	<td >
	      		<select class="custom-select">
				    <option value="" disabled selected>Choose your option</option>
				    <option value="1">Option 1</option>
				    <option value="2">Option 2</option>
				    <option value="3">Option 3</option>
				</select>
	      	</td>
	    </tr>
	    <tr>
	    	<td colspan="2">
	      		<button type="button" class="btn btn-primary">Primary</button>
	      	</td>
	      	<td></td>
	    </tr>
	  </tbody>
	</table>
	</div>
	<div class="col-6">
	<br /><br />
		<select class="custom-select" size="20">
		  <option value="0">차종 및 가격...</option>
		  <option value="1">One</option>
		  <option value="2">Two</option>
		  <option value="3">Three</option>
		</select>
	</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>