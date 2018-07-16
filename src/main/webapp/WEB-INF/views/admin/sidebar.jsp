<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container" style="margin-top:3%;height:100%">
<div class="row">
<style>
.sideBarPointer {
    border-left: 2px solid gray;
    padding-top: 0px;
    padding-bottom: 0px;
    margin-top: 6px;
    margin-bottom: 6px;
    font-weight : 500;
}
.col ul li a:hover{
	border-left: 1px solid gray;
}
</style>
<script>
$(document).ready(function(){
    var link = document.location.href;
	var arr = link.split('/');
	link = "/"+arr[3]+"/"+arr[4];
	console.log(link);
	
		$(".col ul li a[href = '"+link+"']").addClass('sideBarPointer');
   });
</script>
<div class="col" style="display:inline; width:24%;">
    <ul class="list-group-flush list-unstyled">
      <li class="nav-item"><a class="nav-link" href="/admin/admin">ADMIN</a></li>
      <li class="nav-item"><a class="nav-link" href="/admin/delivery">DELIVERY</a></li>
      <li class="nav-item"><a class="nav-link" href="/admin/return">RETURN</a></li>
      <li class="nav-item"><a class="nav-link" href="/admin/profit">PROFIT</a></li>
      <li class="nav-item"><a class="nav-link" href="/admin/profitGraph">PROFIT GRAPH</a></li>
      <li class="nav-item"><a class="nav-link" href="/admin/carList">CAR LIST</a></li>
      <li class="nav-item"><a class="nav-link" href="/admin/employees">EMPLOYEES</a></li>
      <li class="nav-item"><a class="nav-link" href="/admin/repair">REPAIR</a></li>
    </ul>
</div>