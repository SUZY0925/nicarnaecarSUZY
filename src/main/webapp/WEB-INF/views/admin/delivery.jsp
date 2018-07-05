<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp"></jsp:include>

<script>
function addComma(num) {
   var regexp = /\B(?=(\d{3})+(?!\d))/g;
    return num.toString().replace(regexp, ',');
}
</script>
<style>
   td{
      padding: 10px 10px 10px 10px;
   }
</style>

<div class="col-md-10" style="height:45%">
   <table  class="table table-hover table-responsive-md table-fixed" style="width:100%;">
      <h2>인도할 차량</h2>
         <thead>
                <tr>
                    <th><h4>예약번호</h4></th>
                    <th><h4>차량번호</h4></th>
                    <th><h4>인도날짜</h4></th>
                    <th><h4>반납날짜</h4></th>
                    <th><h4>인도전 기름양</h4></th>
                    <th><h4>가격</h4></th>
                    <th><h4>인도</h4></th>
                </tr>
            </thead>
       <tbody id="deliveryTable">
          <script>
          var str = "";
             <c:forEach items="${list1 }" var="list1">
                 str += "<tr>";
                 str += "<td>${list1.bnumber}</td>"
                 str += "<td>${list1.vnumber}</td>"
                 str += "<td>${list1.bin}</td>"
                 str += "<td>${list1.bout}</td>"
                 str += "<td>${list1.vgage}</td>"
                 str += "<td>"+addComma(${list1.bprice})+"원</td>"
                 str += "<td><a class='btn btn-info px-3' href='/admin/deliveryOK/${list1.bnumber}'>인도</a></td>"
                 str += "</tr>";
              </c:forEach>
              $("#deliveryTable").html(str);
         </script>
       </tbody>
   </table>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>