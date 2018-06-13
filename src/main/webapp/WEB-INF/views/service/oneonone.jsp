<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/service/sidebar.jsp"></jsp:include>

<div class="col-md-9">

<!-- Material form contact -->
<form>
    <p class="h4 text-center mb-4">Wite to us</p>

    <!-- Material input text -->
    <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <input type="text" id="materialFormContactNameEx" class="form-control">
        <label for="materialFormContactNameEx">Your name</label>
    </div>

    <!-- Material input email -->
    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input type="email" id="materialFormContactEmailEx" class="form-control">
        <label for="materialFormContactEmailEx">Your email</label>
    </div>

    <!-- Material input subject -->
    <div class="md-form">
        <i class="fa fa-tag prefix grey-text"></i>
        <input type="text" id="materialFormContactSubjectEx" class="form-control">
        <label for="materialFormContactSubjectEx">Subject</label>
    </div>

    <!-- Material textarea message -->
    <div class="md-form">
        <i class="fa fa-pencil prefix grey-text"></i>
        <textarea type="text" id="materialFormContactMessageEx" class="form-control md-textarea" rows="3"></textarea>
        <label for="materialFormContactMessageEx">Your message</label>
    </div>

    <div class="text-center mt-4">
        <button class="btn btn-outline-secondary" type="submit">Send<i class="fa fa-paper-plane-o ml-2"></i></button>
    </div>
</form>
<!-- Material form contact -->

</div>
</div>
</div>



<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
