<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Date Search</title>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>


<script src="//code.jquery.com/jquery.min.js"></script> 
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<style>
	#contain * {
		font-style:"궁서";
	}
	
	.ui-datepicker-div {
		font-style:"궁서";
	}
</style>
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

<div class="container" id="contain">
<p>조회기간: <input type="text" id="from"> ~ <input type="text" id="to"></p>
</div>  

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>