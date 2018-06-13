<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
     <button class="accordion animated rotateIn">Section 1</button>
<div class="panel">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
</div>

<button class="accordion animated rollIn">Section 2</button>
<div class="panel">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
</div>

<button class="accordion animated rotateIn">Section 3</button>
<div class="panel">
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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