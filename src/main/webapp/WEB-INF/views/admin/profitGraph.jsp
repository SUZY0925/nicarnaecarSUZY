<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp"></jsp:include>

<script src="https://d3js.org/d3.v4.min.js"></script>
<link rel="stylesheet" href="/resources/css/billboard.css">
<script src = "/resources/js/billboard.js"></script>

<div class="col-md-10">
<h2>거래량 Chart</h2>
<div id="TimeseriesChart" style="height:700px;"></div>
</div>


<script>
var chart = bb.generate({
     data: {
       x: "x",
       columns: [
      ["x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06"],
      ["data1", 30, 200, 100, 400, 150, 250],
      ["data2", 130, 340, 200, 500, 250, 350]
       ]
     },
     axis: {
       x: {
         type: "timeseries",
         tick: {
           format: "%Y-%m-%d"
         }
       }
     },
     bindto: "#TimeseriesChart"
   });
</script>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>