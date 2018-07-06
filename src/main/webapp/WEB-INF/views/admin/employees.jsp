<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp" />
<jsp:include page="/WEB-INF/views/nav.jsp" />
<jsp:include page="/WEB-INF/views/admin/sidebar.jsp" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원관리</title>
<script>
function supdate(p){
   alert(p+"쨔쟌");
}


</script>
</head>
<body>
   <div>
      <table class="table table-hover table-responsive-md table-fixed" style="text-align:center;">
      <thead>
         <tr>
            <td>영업소</td>
            <td>이름</td>
            <td>직급</td>
            <td>재직상태</td>
            <td>EMAIL</td>
            <td>전화번호</td>
            <td>생년월일</td>
            <td>입사일</td>
            <td></td>
         </tr>
      </thead>
      
         <c:forEach items="${employees }" var="emp">
         <tbody>
         <tr>
            <td>${emp.eoffice }</td>
            <td>${emp.ename }</td>
            <td>${emp.eposition }</td>
            <td>${emp.estate }</td>
            <td>${emp.eemail }</td>
            <td>${emp.ephone }</td>
            <td>${emp.ebirth }</td>
            <td>${emp.edate }</td>
            <td><button type="button" class='btn btn-primary btn-sm accordian'  onclick="supdate('${emp.eemail}')" value="수정">수정</button></td>
         </tr>
         <tr class="panel">
            <td>${emp.eoffice }</td>
            <td>${emp.ename }</td>
            <td>${emp.eposition }</td>
            <td>${emp.estate }</td>
            <td>${emp.eemail }</td>
            <td>${emp.ephone }</td>
            <td>${emp.ebirth }</td>
            <td>${emp.edate }</td>
            <td></td>
         </tr>
            <%-- <tr>
               <td>
               <input type="text" name="eoffice" value="${emp.eoffice }"/>
               </td>
               <td>
               <input type="text" name="ename" value="${emp.ename }" />
               </td>
               <td>
               <select name="eposition" id="sbox"></select>
               </td>
               <td>4</td>
               <td>5</td>
               <td>6</td>
               <td>7</td>
               <td>8</td>
               <td>9</td>
            </tr> --%>
            </tbody> 
         </c:forEach>
      
      </table>
   </div>
</body>
</html>