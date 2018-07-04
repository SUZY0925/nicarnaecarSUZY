<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Date Search</title>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
 function addComma(num) {
		var regexp = /\B(?=(\d{3})+(?!\d))/g;
	    return num.toString().replace(regexp, ',');
	}
 $( function() {
	var mDate = '';
	if(${date == null}) {
		mDate = '+30d';
	} else {
		mDate = '${date }-1';
	}
	 $( "#datepicker" ).datepicker({
    	dateFormat: 'yy-mm-dd',
	   	  minDate:'${bookingVO.bout }',
	   	  maxDate: mDate
    })
	
 
 
 });
</script>
	<style>
		#datepicker div{
			background-color: white;
		}
		#datepicker .ui-state-default{
			border: none;
		}
		#datepicker .ui-state-highlight{
			background-color: #33b5e5;
			border: none;
		}
		
		#datepicker span , #datepicker a{
			font-family: 고딕;
		}
	</style>

<div class="container">
	Date: <div id="datepicker"></div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>