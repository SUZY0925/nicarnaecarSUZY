<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<title>Reservation Check</title>

<div class="container" style="margin-top:2%;">
<h2>Reservation Check</h2>
   <div class="card">
    <div class="card-body">

        <!--Table-->
        <table class="table table-hover table-responsive-md table-fixed">

            <!--Table head-->
            <thead>
                <tr>
                    <th>예약번호</th>
                    <th colspan="5">예약내역</th>
                    <th>상태</th>
                    <th></th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
                <tr>
                    <th scope="row">4</th>
                    <td colspan="5">Jerry</td>
                    <td>대기</td>
                    <td>
                    	<button type="button" class="btn btn-blue-grey btn-sm">수정</button>
                    	<button type="button" class="btn btn-mdb-color btn-sm">취소</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td colspan="5">Jerry</td>
                    <td>취소완료</td>
                    <td>
                    	<button type="button" class="btn btn-blue-grey btn-sm">수정</button>
                    	<button type="button" class="btn btn-mdb-color btn-sm">취소</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td colspan="5">Jerry</td>
                    <td>사용중</td>
                    <td>
                    	<button type="button" class="btn btn-blue-grey btn-sm">수정</button>
                    	<button type="button" class="btn btn-mdb-color btn-sm">취소</button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td colspan="5">Jerry</td>
                    <td>사용완료</td>
                    <td>
                    	<button type="button" class="btn btn-blue-grey btn-sm">수정</button>
                    	<button type="button" class="btn btn-mdb-color btn-sm">취소</button>
                    </td>
                </tr>
            </tbody>
            <!--Table body-->

        </table>
        <!--Table-->

    </div>
</div>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>