<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<style>
.accordion {
    background-color: #fff;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    border: none;
    border-top: 1px solid #CFCFCF;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
}

.active, .accordion:hover {
    background: linear-gradient(to top right, #2196f3, #1565c0);
    z-depth: 1;
}

.panel {
    padding: 0 18px;
    display: none;
    background-color: white;
    overflow: hidden;
}
</style>
<jsp:include page="/WEB-INF/views/service/sidebar.jsp"></jsp:include>

<div class="col-md-9">
<h2 class="animated pulse">FAQ</h2>

<c:forEach items="${faq }" var="faq">
<button class="accordion animated rotateIn">${faq.ftitle }</button>
<div class="panel">
  <p>${faq.fcontent }</p>
  <br />
  <br />
  <sec:authorize access="isAuthenticated()">
     <c:if test="${faq.eemail eq user.username }">
  		<a href="/service/faqModify/${faq.fnumber }">수정하기</a>
 	 </c:if>
  </sec:authorize>
  <br />
</div>
</c:forEach>
<div align='right'>
	<a href="/service/faqWrite">글쓰기</a>
</div>
<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
</script>
</div>
</div>
</div>



<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>