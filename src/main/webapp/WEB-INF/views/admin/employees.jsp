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
<style type="text/css">  
    .hide {display:none;}  
    .show {display:table-row; height:80px; font-size:12px;} 
</style>

 

<script type="text/javascript">  
        $(function(){
            var article = (".recruit .show");  
            $(".recruit .title .btn").click(function() {  
                var myArticle =$(this).parents().next("tr");  
                console.log($(this).parents().next());
                console.log(this);
                if($(myArticle).hasClass('hide')) {  
                    $(article).removeClass('show').addClass('hide');  
                    $(myArticle).removeClass('hide').addClass('show');  
                }  
                else {  
                    $(myArticle).addClass('hide').removeClass('show');  
                }  
            }); 
        });
        $(function(){
            $(".checkBtn").click(function(){ 
               
               var str = ""
               var tdArr = new Array();    // 배열 선언
               var checkBtn = $(this);
               
               var tr = checkBtn.parent().parent();
               var td = tr.children();
               var ac = document.getElementsByName('eoffice');
               console.log(ac);
               console.log(td.getElementsByName('eoffice').value);
            })
        })
</script>

</head>
<body>
      <div>
      <table class="table table-hover table-responsive-md table-fixed recruit" style="text-align:center;">
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
      <tbody>
         <c:forEach items="${employees }" var="emp">
         <tr class="title">
            <td>${emp.eoffice }</td>
            <td>${emp.ename }</td>
            <td>${emp.eposition }</td>
            <td>${emp.estate }</td>
            <td>${emp.eemail }</td>
            <td>${emp.ephone }</td>
            <td>${emp.ebirth }</td>
            <td>${emp.edate }</td>
               
            <td><button type="button" class='btn btn-primary btn-sm' value="수정">수정</button></td>
         </tr>
         
         <tr class="hide">
            <td><input type="text" name="eoffice" value="${emp.eoffice }"/></td>
            <td><input type="text" name="ename" value="${emp.ename }" /></td>
            <td><select name="eposition" id="sbox">
               <option value="소장">소장</option>
               <option value="대리">대리</option>
               <option value="사원">사원</option>
            </select></td>
            <td><input type="text" name="estate" value="${emp.estate }" /></td>
            <td><input type="text" name="eemail" value="${emp.eemail }" /></td>
            <td><input type="text" name="ephone" value="${emp.ephone }"/></td>
            <td><input type="text" name="ebirth" value="${emp.ebirth }" /></td>
            <td><input type="text" name="edate" value="${emp.edate }" readonly /></td>
            <td><button type="button" class='btn btn-primary btn-sm checkBtn' >저장</button></td>
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
               </c:forEach>
            </tbody> 
         </table>
   </div>
</body>
</html>