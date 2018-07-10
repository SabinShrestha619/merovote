<%@page import="com.sem.project.entity.Result"%>
<%@page import="com.sem.project.daoImpl.ResultDaoImpl"%>
<%@page import="com.sem.project.dao.ResultDao"%>
<%@include file="../Shared/Header.jsp" %>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row" id="main" >
            <div class="col-sm-12 col-md-12 well" id="content" align="center" >
                <h1>Voting Result</h1>

            </div>
        </div>
        <link href="../Resources/css/default.css" rel="stylesheet" type="text/css"/>
        <div class="container" style="width:100%">
            <div class="chart-container">
                <canvas id="bar-chartcanvas"></canvas>
            </div>
            <% int i=0;
                ResultDao resultDao=new ResultDaoImpl(); 
            int[] data=new int[5];
            
                for (Result r : resultDao.getAll()) {
                   data[i]=r.getNumberOfVotes();
                   i++;
                }
                %>


            <!-- javascript -->
            <script src="../Resources/js/jquery.min.js" type="text/javascript"></script>
            <script src="../Resources/js/Chart.min.js" type="text/javascript"></script>
            <div class="val">
                <input type="number" value="<%=data[0]%>" id="data1" visible="hidden">

                <input type="number" value="<%=data[1]%>" id="data2" visible="hidden">

                <input type="number" value="<%=data[2]%>" id="data3" visible="hidden">

                <input type="number" value="<%=data[3]%>" id="data4" visible="hidden">

                <input type="number" value="<%=data[4]%>" id="data5" visible="hidden">
            </div>
            
            <script src="../Resources/js/bar-multicolor.js" type="text/javascript"></script>
        </div>
    </div>
</div>