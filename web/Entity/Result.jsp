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
        <div class="container" style="width:100%">
            <table class="table table-bordered table-striped table-hover">
                <tr>
                    <th class="col-md-1">Id</th>
                    <th class="col-md-4">Party</th>
                    <th>Candidate Name</th>
                    <th class="col-md-3">Total No. Of votes</th>
                </tr>
                <% ResultDao resultDao=new ResultDaoImpl(); 
                for (Result r : resultDao.getAll()) {%>
                
                
                <tr>
                    <td><%=r.getResultId() %></td>
                    
                    <td><%=r.getParty() %></td>
                    
                    <td><%=r.getCandidate() %></td>
                    
                    <td><%=r.getNumberOfVotes() %></td>
                    
                </tr>
                <%}
                %>

        </div>
    </div>
</div>
