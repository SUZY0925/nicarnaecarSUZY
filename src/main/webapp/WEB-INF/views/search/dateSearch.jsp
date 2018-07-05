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
	$(function() {
		var bin = "";
		var bout = "";
		var eoffice ="";
		$("#reservationBtn").hide();
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
	    
	    var fromDate = $("#from").datepicker('getDate');
	    $("#fromInput").val(fromDate.toLocaleDateString());
	    
	    var toDate = $("#to").datepicker('getDate');
	    $("#toInput").val(toDate.toLocaleDateString());
	  }
	  });
	  
	  $("#select1").change(function() {
		  $("#select2").val($("#select1 option:selected").val()).attr("selected","selected");
		  $("#select2").attr("disabled","true");
		  eoffice = $("#select1 option:selected").val();
		});
	  
	  $("#dateSearchBtn").on("click", function() {
		  var bin2 = $("#fromInput").val().replace(/. /g,'-');
		  bin = bin2.replace('.','');
		  var bout2 = $("#toInput").val().replace(/. /g,'-');
		  bout = bout2.replace('.','');
		  
		  var eoffice = $("#select1 option:selected").val();
		  var str = "";
		  $.ajax({
				type : "GET",
				url : "/search/dateSearchBtn/"+bin+"/"+bout+"/"+eoffice,
				dataType : "JSON",
				success : function(data) {
					var a = 1;
					$.each(data, function() {
						str += "<tr>";
						
						str += "<th scope='row'>";
						str += '<div class="custom-control custom-radio">';
						str += '<input type="radio" id="customRadio' + a + '" name="customRadio" class="custom-control-input" value="' + this.vnumber +'">';
						str +=  '<label class="custom-control-label" for="customRadio' + a + '"></label>';
						str += "</div>";
						
						str += '<td style="width:5%;"><img src="/resources/IMG/car/' + this.vmodel + '.png" alt="" style="height:30px;"/></td>';
						str += "<td>" +  this.vtype + "</td>";
						str += "<td>" + this.vmodel+ "</td>";
						str += "<td>" + this.vmaker+ "</td>";
						str += "<td>" + this.voil+ "</td>";
						str += "<td>" + this.vcolor+ "</td>";
						
						str += "<td>" + addComma(this.vprice)+ "원</td>";
						str += "</tr>";
						a = a+1;
					});
					$("#carList").html(str);
				},
				error : function(e) {
				}
			});
		  $("#reservationBtn").show();
	  });
	  
	  $("#reservationBtn").on("click",function() {
		  location.href = "/reservation/reservation/"+$("input:radio[name=customRadio]:checked").val()+"/"+bin+"/"+bout;
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

<div class="container-fulid" style="margin:auto; max-width:80%;">
<div class="row">
	<div class="col-6" style="border-right: 1px dotted gray;">
	<table class="table table-responsive-md table-fixed"style="width:100px; margin:auto;">
	  <thead>
	    <tr>
	      <th scope="col">시작일</th>
	      <th scope="col">종료일</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td><div id="from"></div><input type="text" id="fromInput" class="form-control"/></td>
		  <td><div id="to"></div><input type="text" id="toInput" class="form-control"/></td>
	    </tr>
	    <tr>
	      	<td>
	      		<select class="custom-select" id="select1">
				    <option value="" disabled selected>Choose your option</option>
				    <option value="서울">서울</option>
				    <option value="대전">대전</option>
				    <option value="대구">대구</option>
				    <option value="부산">부산</option>
				    <option value="울산">울산</option>
				</select>
	      	</td>
	      	<td >
	      		<select class="custom-select" id="select2">
				    <option value="" disabled selected>Choose your option</option>
				    <option value="서울">서울</option>
				    <option value="대전">대전</option>
				    <option value="대구">대구</option>
				    <option value="부산">부산</option>
				    <option value="울산">울산</option>
				</select>
	      	</td>
	    </tr>
	    <tr>
	    	<td colspan="2">
	      		<button type="button" class="btn btn-primary" id="dateSearchBtn">조회하기</button>
	      	</td>
	      	<td>
	      	</td>
	    </tr>
	  </tbody>
	</table>
	</div>
	<div class="col-6">
	<br /><br />
	
	<table id="carList" class="table table-hover table-responsive-md table-fixed" style="width:100%;">
	</table>
		<button type="submit" class="btn btn-primary" id="reservationBtn">예약하기</button>
	</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>