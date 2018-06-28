<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<style>
   .table-fixed {
    table-layout: fixed;
    overflow: hidden;
}
</style>
<jsp:include page="/WEB-INF/views/service/sidebar.jsp"></jsp:include>

<div class="col-md-9">
<h2>Notice</h2>
   <div class="card">
    <div class="card-body">

        <!--Table-->
        <table class="table table-hover table-responsive-md table-fixed">

            <!--Table head-->
            <thead>
                <tr>
                    <th>#</th>
                    <th colspan="4">제목</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
            <c:forEach items="${notice }" var="notice">
                <tr>
                    <th scope="row">${notice.nnumber }</th>
                    <td colspan="4"><a class="text-dark" href="/service/noticeView?nnumber=${notice.nnumber }">${notice.ntitle }</a></td>
                    <td>${notice.ncdate }</td>
                </tr>
                </c:forEach>
            </tbody>
            <!--Table body-->

        </table>
        <!--Table-->

    </div>
</div>

</div>
</div>
</div>



<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>