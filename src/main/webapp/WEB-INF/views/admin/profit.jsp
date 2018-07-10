<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp"></jsp:include>
<style>
   .table-fixed {
    table-layout: fixed;
    overflow: hidden;
   }
   label{
      width:100px;
      text-align:center;
   }
   /* Hide the browser's default radio button */
   .container input[type=radio] {
       position: absolute;
       opacity: 0;
       cursor: pointer;
   }
   .form-check-label{
      height:50px;
   }
</style>
<script>
   $(function(){
      $("#deleteBtn").on("click",function(){
         alert("삭제되었습니다.");
      });
   })
   function addComma(num) {
      var regexp = /\B(?=(\d{3})+(?!\d))/g;
       return num.toString().replace(regexp, ',');
   }
</script>

<div class="col-md-10">
<form:form action="/admin/profitInsertOK" method="post">
   <div class="card">
      <div class="card-body row">
      <h2 class="container-fluid">매출/지출 입력</h2>
         <div class="container-fluid row">
            <div class="md-form col">
               <input type="text" id="form1" class="form-control" name="ptarget">
               <label for="form1">대상</label>
            </div>
               <div class="btn-group col" data-toggle="buttons"
                  style="margin-top: 10px; margin-left: 20px;">
                  <label class="btn btn-primary active form-check-label"> <input
                     class="form-check-input" type="radio" checked autocomplete="off"
                     value="수입" name="pinout">매출
                  </label> <label class="btn btn-primary form-check-label"> <input
                     class="form-check-input" type="radio" autocomplete="off"
                     value="지출" name="pinout">지출
                  </label>
               </div>
               <div class="md-form col">
               <input type="text" id="form3" class="form-control" name="pamount">
               <label for="form3">금액</label>
            </div>
            <div class="md-form col">
               <input type="text" id="form4" class="form-control" name="bnumber">
               <label for="form4">예약번호</label>
            </div>
            <div class="md-form col">
               <input type="text" id="form5" class="form-control" name="pmemo">
               <label for="form5">거래내역</label>
            </div>
         </div>
            <input type="submit" class="btn btn-primary" style="margin-left:80%; margin-top:10px;" value="입력" />
      </div>
   </div>
</form:form>
   <br />
   <div class="card">
    <div class="card-body">
        <!--Table-->
        <table class="table table-hover table-fixed" id="profitTable">
         <h2 style="display:block;">거래 목록</h2>
            <!--Table head-->
            <thead>
                <tr>
                    <th><h5>Number</h5></th>
                    <th><h5>대상</h5></th>
                    <th><h5>매출/지출</h5></th>
                    <th><h5>금액</h5></th>
                    <th><h5>예약번호</h5></th>
                    <th><h5>거래내역</h5></th>
                    <th><h5>삭제</h5></th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody id="profitTableIn">
                <script>
            var str = "";
             <c:forEach items="${list }" var="profit">
                 str += "<tr>";
                 str += "<td>${profit.pnumber}</td>";
                 str += "<td>${profit.ptarget}</td>"; 
                 str += "<td>${profit.pinout}</td>";
                 str += "<td>"+addComma("${profit.pamount}")+"원</td>"; 
                 str += "<td>${profit.bnumber}</td>"; 
                 str += "<td>${profit.pmemo}</td>"; 
                 str += "<td><a class='btn btn-info px-3' href='/admin/profitDeleteOK/${profit.pnumber}'>삭제</a></td>"; 
                 str += "</tr>";
              </c:forEach>
              $("#profitTableIn").html(str);
         </script>
            </tbody>
            <!--Table body-->

        </table>
        <!--Table-->

    </div>
</div>
<table style=" margin:auto;">
         <tr>
            <td>
               <ul id="pageing"
                  class="pagination pagination-sm justify-content-center">
                  <c:if test="${page.prev }">
                     <li class="page-item"><a class="page-link"
                        href="profit?page.finalEndPage">◀</a></li>
                     <li class="page-item"><a class="page-link"
                        href="profit?${page.getmakeURL(page.startPage-1) }" aria-label="Previous">
                           <span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
                     </a></li>
                  </c:if>

                  <c:forEach begin="${page.startPage }" end="${page.endPage }"
                     var="PAGE">
                     <c:if test="${page.recordCriteria.reqPage == PAGE }">
                        <li class="page-item active"><a class="page-link" href="javascript:void(0)">${PAGE }</a></li>
                     </c:if>
                     <c:if test="${page.recordCriteria.reqPage != PAGE }">
                        <li class="page-item"><a class="page-link"
                           href="profit?${page.getmakeURL(PAGE) }">${PAGE }</a></li>
                     </c:if>
                  </c:forEach>

                  <c:if test="${page.next }">
                     <li class="page-item"><a class="page-link"
                        href="profit?${page.getmakeURL(page.endPage+1) }" aria-label="Next">
                           <span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
                     </a></li>
                     <li class="page-item"><a class="page-link"
                        href="profit?${page.getmakeURL(page.finalEndPage) }">▶</a></li>
                  </c:if>
               </ul>
            </td>
          </tr>
      </table> 
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>