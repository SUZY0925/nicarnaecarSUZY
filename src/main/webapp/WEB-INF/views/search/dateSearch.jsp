<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Date Search</title>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>


<script src="//code.jquery.com/jquery.min.js"></script> 
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

 <script>
	$(function() {
	  var dates = $( "#from, #to " ).datepicker({

	  dateFormat: 'yy-mm-dd',
	  showMonthAfterYear: true,

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

<div class="container">
<p>조회기간: <input type="text" id="from"> ~ <input type="text" id="to"></p>
</div>  

<!-- 겁나 못생기고 잘됨 
<link rel="stylesheet" href="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.css">
<script src="//mugifly.github.io/jquery-simple-datetimepicker/jquery.simple-dtpicker.js"></script>
<script>
$(function(){
  $('.datetimepicker').appendDtpicker({'locale':'ko'});
});
</script>
<input type="text" class='datetimepicker' value="">
 -->
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>