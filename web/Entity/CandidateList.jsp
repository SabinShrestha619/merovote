<%@page import="com.sem.project.entity.Candidate"%>
<%@page import="com.sem.project.daoImpl.CandidateDaoImpl"%>
<%@page import="com.sem.project.dao.CandidateDAO"%>
<%@include file="../Shared/Header.jsp" %>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row" id="main" >
            <div class="col-sm-12 col-md-12 well" id="content" align="center" >
                <h1>Candidate List</h1>

            </div>

        </div>
        <div class="container" style="width:100%">
            <table class="table table-bordered table-striped table-hover">
                <tr>
                    <th class="col-md-1">Id</th>
                    <th class="col-md-4">Party</th>
                    <th>Candidate Name</th>


                    <th class="col-md-3">Email</th>
                    <th>Gender</th>

                </tr>
                <% CandidateDAO candidateDao = new CandidateDaoImpl();
                    for (Candidate r : candidateDao.getALL()) {%>


                <tr>
                    <td><%=r.getCandidateId()%></td>

                    <td><%=r.getParty()%></td>

                    <td><%=r.getFirstName() + " " + r.getLastName()%></td>

                    <td><%=r.getEmail()%></td>

                    <td><%=r.getGender()%></td>
                </tr>
                <%}
                %>

        </div>
    </div>
</div>
