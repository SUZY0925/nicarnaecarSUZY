<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
                    <th colspan="5">Title</th>
                    <th>Date</th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
                <tr>
                    <th scope="row">4</th>
                    <td colspan="5">Jerry</td>
                    <td>41</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td colspan="5">Janis</td>
                    <td>39</td>
                </tr>
                <tr>
                    <th scope="row">6</th>
                    <td colspan="5">Gary</td>
                    <td>37</td>
                </tr>
                <tr>
                    <th scope="row">7</th>
                    <td colspan="5">Angie</td>
                    <td>52</td>
                </tr>
                <tr>
                    <th scope="row">8</th>
                    <td colspan="5">John</td>
                    <td>28</td>
                </tr>
                <tr>
                    <th scope="row">9</th>
                    <td colspan="5">Otto</td>
                    <td>35</td>
                </tr>
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