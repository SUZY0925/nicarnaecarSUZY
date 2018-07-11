<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>

** 파일 업로드/다운로드 ** <br>

<form:form modelAttribute="uploadFile" action="upload" method="post" enctype="multipart/form-data">
<%-- <form:form enctype="multipart/form-data" modelAttribute="uploadFile"> --%>
	업로드할 파일 선택 : <br>
	<input type="file" name="file">
	<input type="hidden" name="_csrf" value="{{#_csrf}}token{{/_csrf}}" />
	<form:errors path="file" cssStyle="color:red" />
	<br><Br>
	<input type="submit" value="전송">
</form:form>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>