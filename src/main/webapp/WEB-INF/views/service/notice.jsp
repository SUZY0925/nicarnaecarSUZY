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
<div class="card">
    <div class="card-body">

        <!--Table-->
        <table class="table table-hover table-responsive-md table-fixed">

            <!--Table head-->
            <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Country</th>
                    <th>City</th>
                    <th>Position</th>
                    <th>Age</th>
                </tr>
            </thead>
            <!--Table head-->

            <!--Table body-->
            <tbody>
                <tr>
                    <th scope="row">4</th>
                    <td>Jerry</td>
                    <td>Horwitz</td>
                    <td>Italy</td>
                    <td>Bari</td>
                    <td>Editor-in-chief</td>
                    <td>41</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>Janis</td>
                    <td>Joplin</td>
                    <td>Poland</td>
                    <td>Warsaw</td>
                    <td>Video Maker</td>
                    <td>39</td>
                </tr>
                <tr>
                    <th scope="row">6</th>
                    <td>Gary</td>
                    <td>Winogrand</td>
                    <td>Germany</td>
                    <td>Berlin</td>
                    <td>Photographer</td>
                    <td>37</td>
                </tr>
                <tr>
                    <th scope="row">7</th>
                    <td>Angie</td>
                    <td>Smith</td>
                    <td>USA</td>
                    <td>San Francisco</td>
                    <td>Teacher</td>
                    <td>52</td>
                </tr>
                <tr>
                    <th scope="row">8</th>
                    <td>John</td>
                    <td>Mattis</td>
                    <td>France</td>
                    <td>Paris</td>
                    <td>Actor</td>
                    <td>28</td>
                </tr>
                <tr>
                    <th scope="row">9</th>
                    <td>Otto</td>
                    <td>Morris</td>
                    <td>Germany</td>
                    <td>Munich</td>
                    <td>Singer</td>
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
